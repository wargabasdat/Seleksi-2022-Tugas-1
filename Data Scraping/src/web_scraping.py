from bs4 import BeautifulSoup
import requests
import re
import json
from datetime import datetime

def html_parser(link):
    """Receives a link to a website and makes a request to the website, then returns parsed html of the website
    
    Parameters
    ----------
    link: str
        Link to a website

    Returns
    -------
    bs4.BeautifulSoup
        Parsed html
    
    """
    my_headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36", 
        "Accept":"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"}
    result = requests.get(link, headers=my_headers)
    return BeautifulSoup(result.text, "html.parser")

def mainpage_scraper(tag, data, team_urls):
    """Receives a html tag, data, and team_urls, then adds the information inside the tag to data and team_urls

    Parameters
    ----------
    tag: bs4.element.Tag
        A html element that contains club information
    data: dict
        Web scraping data dictionary
    team_urls: list
        List of clubs' url

    Returns
    -------
    (dict, list)
        data and team_urls with information inside tag added into them

    """
    data["clubs"][-1]["club_id"] = len(data["clubs"])                                               # Team ID
    data["clubs"][-1]["club_name"] = tag.find("a", href=re.compile("/team/.*")).div.string.strip()  # Team Name
    league_name = tag.find("a", href=re.compile("/teams\?lg=.*")).div.text.strip()                  # League Name
    for league in data["leagues"]:
        if league["league_name"]==league_name:
            data["clubs"][-1]["league_id"] = league["league_id"]                                    # League ID
            break                     
    data["clubs"][-1]["overall"] = tag.find("td", class_="col col-oa").span.text.strip()            # Team Overall
    data["clubs"][-1]["attack"] = tag.find("td", class_="col col-at").span.text.strip()             # Team Attack
    data["clubs"][-1]["midfield"] = tag.find("td", class_="col col-md").span.text.strip()           # Team Midfield
    data["clubs"][-1]["defense"] = tag.find("td", class_="col col-df").span.text.strip()            # Team Defense
    data["clubs"][-1]["transfer_budget"] = tag.find("td", class_="col col-tb").text.strip()         # Team Transfer Budget
    data["clubs"][-1]["number_of_players"] = tag.find("td", class_="col col-ps").text.strip()       # Number of Players
    team_urls.append(tag.find("a", href=re.compile("/team/.*"))["href"])                            # Team URL
    return (data, team_urls)

def teamtactic_scraper(tags, data, idx):
    """Receives a list of html elements, data, and idx, then adds the information inside the tags into data. 
    Value inside data with "clubs" as the key is an array. Information will be added to the array at idx position.

    Parameters
    ----------
    tags: bs4.element.ResultSet
        List of html elemets that contains club tactic informations
    data: dict
        Web scraping data dictionary
    idx: int
        Index of the array to be updated with the information

    Returns
    -------
    dict
        data with information inside tags added into it
    
    """
    # Defense
    defensive_style = tags[0].span.span.text.strip()                                                                # Defensive Style
    for defstyle in data["defensive_style"]:
        if defstyle["defensive_style_name"]==defensive_style:
            data["clubs"][idx]["defensive_style_id"] = defstyle["defensive_style_id"]                               # Defensive Style ID
            break
    data["clubs"][idx]["defense_width"] = tags[1].find("span", class_="float-right").span.text.strip()              # Team Defense Width
    data["clubs"][idx]["defense_depth"] = tags[2].find("span", class_="float-right").span.text.strip()              # Team Defense Depth
    # Offense
    build_up_play = tags[3].span.span.text.strip()                                                                  # Build Up Play
    chance_creation = tags[4].span.span.text.strip()                                                                # Chance Creation
    for buplay in data["build_up_play"]:
        if buplay["build_up_play_name"]==build_up_play:
            data["clubs"][idx]["build_up_play_id"] = buplay["build_up_play_id"]                                     # Build Up Play ID
            break
    for chance in data["chance_creation"]:
        if chance["chance_creation_name"]==chance_creation:
            data["clubs"][idx]["chance_creation_id"] = chance["chance_creation_id"]                                 # Chance Creation ID
            break
    data["clubs"][idx]["offense_width"] = tags[5].find("span", class_="float-right").span.text.strip()              # Team Offense Width
    data["clubs"][idx]["offense_player_in_box"] = tags[6].find("span", class_="float-right").span.text.strip()      # Team Offense Player In Box
    data["clubs"][idx]["corner_player_in_box"] = tags[7].find("span", class_="float-right").span.text.strip()       # Team Corner Player In Box
    data["clubs"][idx]["free_kick_player_in_box"] = tags[8].find("span", class_="float-right").span.text.strip()    # Team Free Kick Player In Box
    return data

def detail_scraper(tags, data, idx):
    """Receives a list of html elements, data, and idx, then adds the information inside the tags into data. 
    Value inside data with "clubs" as the key is an array. Information will be added to the array at idx position.

    Parameters
    ----------
    tags: bs4.element.ResultSet
        List of html elemets that contains club detail informations
    data: dict
        Web scraping data dictionary
    idx: int
        Index of the array to be updated with the information

    Returns
    -------
    dict
        data with information inside tags added into it
    
    """
    stadium = tags[0].text[12:].strip()
    if "(" in stadium:
        stadium = stadium[:(stadium.find("(")-1)]
    data["clubs"][idx]["home_stadium"] = stadium                                # Home Stadium
    rival_team = tags[1].a.text.strip()                                         # Rival Team
    for rival in data["clubs"]:
        if rival["club_name"] == rival_team:
            data["clubs"][idx]["rival_club_id"] = rival["club_id"]              # Rival Club ID
            break
    data["clubs"][idx]["club_worth"] = tags[5].text[11:].strip()                # Club Worth
    data["clubs"][idx]["average_age"] = tags[7].text[22:].strip()               # Whole Team Average Age
    data["clubs"][idx]["captain_id"] = len(data["captains"]) + 1                # Team Captain
    data["stadiums"].add(data["clubs"][idx]["home_stadium"])
    captain = dict()
    captain["captain_id"] = len(data["captains"]) + 1
    captain["captain_name"] = tags[8].a.text.strip()  
    data["captains"].append(captain)
    return data

def coach_scraper(tags, data, idx, coach_url):
    """Receives a list of html elements, data, idx, and coach_url then adds the information inside the tags into data. 
    Value inside data with "clubs" as the key is an array. Information will be added to the array at idx position.

    Parameters
    ----------
    tags: bs4.element.ResultSet
        List of html elemets that contains coach informations
    data: dict
        Web scraping data dictionary
    idx: int
        Index of the array to be updated with the information
    coach_url: str
        Url of the coach

    Returns
    -------
    dict
        data with information inside tags added into it
    
    """
    coach_name = tags[0].find("a", href=coach_url[:-1])["title"].strip()                    # Coach Name
    if len(tags[2].text.strip())==0:
        date = None
    else:
        str_date = tags[2].text.strip()  
        date = datetime.strptime(str_date, "%b %d, %Y")
        date = date.strftime("%Y-%m-%d")                                                    # Coach Birth Date
    coach = dict()
    coach["coach_id"] = len(data["coaches"]) + 1
    coach["coach_name"] = coach_name
    coach["birth_date"] = date
    coach["club_id"] = idx + 1
    data["coaches"].append(coach)
    return data

def league_scraper(tags, data):
    """Receives a list of html elements, and data, then adds the information inside the tags into data. 
    Information will be added to the value inside data with "leagues" as the key.

    Parameters
    ----------
    tags: bs4.element.ResultSet
        List of html elemets that contains club tactic informations
    data: dict
        Web scraping data dictionary

    Returns
    -------
    dict
        data with information inside tags added into it
    
    """
    for option in tags:
        league_name = option.text.strip()
        if "\u00a0" in league_name:
            league_name = league_name.replace("\u00a0", "")
        league = dict()
        league["league_id"] = len(data["leagues"]) + 1
        league["league_name"] = league_name
        data["leagues"].append(league)
    return data

def tactic_scraper(tags, data):
    """Receives a list of html elements, and data, then adds the information inside the tags into data. 
    Information will be added to the value inside data with "defensive_style", "build_up_play", and "chance_creation"
    as the key.

    Parameters
    ----------
    tags: bs4.element.ResultSet
        List of html elemets that contains club tactic informations
    data: dict
        Web scraping data dictionary

    Returns
    -------
    dict
        data with information inside tags added into it
    
    """
    for option in tags[0:5]:
        defensive_style = dict()
        defensive_style["defensive_style_id"] = len(data["defensive_style"]) + 1
        defensive_style["defensive_style_name"] = option.text.strip()
        data["defensive_style"].append(defensive_style)
    for option in tags[5:10]:
        build_up_play = dict()
        build_up_play["build_up_play_id"] = len(data["build_up_play"]) + 1
        build_up_play["build_up_play_name"] = option.text.strip()
        data["build_up_play"].append(build_up_play)
    for option in tags[10:14]:
        chance_creation = dict()
        chance_creation["chance_creation_id"] = len(data["chance_creation"]) + 1
        chance_creation["chance_creation_name"] = option.text.strip()
        data["chance_creation"].append(chance_creation)
    return data

def web_scraper():
    """Extracts Europe clubs information from sofifa.com
    
    """
    team_urls = []
    data = dict({
            "clubs":[], 
            "leagues":[], 
            "stadiums":set(), 
            "captains":[], 
            "coaches":[], 
            "defensive_style":[],
            "build_up_play":[],
            "chance_creation":[]
    })
    base_url = "https://sofifa.com"

    doc = html_parser(base_url+"/teams?type=club&ct%5B%5D=2")
    # Leagues
    tag_option = doc.find_all("div", class_="card")[1].find_all("div")[5].find_all("option")
    data = league_scraper(tag_option, data)
    # Tactics
    tag_option = doc.find_all("div", class_="card")[2].find_all("option")
    data = tactic_scraper(tag_option, data)

    offset = 0
    while offset<466:
        link = base_url+"/teams?type=club&ct%5B%5D=2"
        if offset>0:
            link = link+"&offset="+str(offset)
        doc = html_parser(link)
        tag_rows = doc.find_all("tr")[1:]
        for tag_row in tag_rows:
            data["clubs"].append(dict())
            data, team_urls = mainpage_scraper(tag_row, data, team_urls)
        offset += 60 

    for i in range(len(data["clubs"])):
        doc = html_parser(base_url+team_urls[i])
        
        # Tactics
        tag_dd = doc.find_all("dd")
        if len(tag_dd)==15: # Can be 9 or 15, if it's 15 then there's information about next fixture
            tag_dd = tag_dd[6:]
        data = teamtactic_scraper(tag_dd, data, i)
        
        # Detail Information
        tag_ul = doc.find("ul", class_="pl")
        tag_li = doc.find_all("li")
        data = detail_scraper(tag_li, data, i)
        
        # Coach
        coach_tab = doc.find("a", role="tab", text="Coach")
        if coach_tab is not None:
            coach_url = coach_tab["href"]
            doc = html_parser(base_url+coach_url)
            tag_ul = doc.find("ul", class_="ellipsis text-right")
            tag_lis = tag_ul.find_all("li")
            data = coach_scraper(tag_lis, data, i, coach_url)

    # Stadiums
    data["stadiums"] = sorted(data["stadiums"])
    temp_data_stadiums = []
    for i in range(len(data["stadiums"])):
        temp_data_stadium = dict()
        temp_data_stadium["stadium_id"] = i + 1
        temp_data_stadium["stadium_name"] = data["stadiums"][i]
        temp_data_stadiums.append(temp_data_stadium)
        for club in data["clubs"]:
            if club["home_stadium"]==temp_data_stadium["stadium_name"]:
                club["home_stadium_id"] = temp_data_stadium["stadium_id"]
    for club in data["clubs"]:
        del club["home_stadium"]
    data["stadiums"] = temp_data_stadiums

    with open('Data Scraping/data/data.json', 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=2, ensure_ascii=False)

if __name__ == '__main__':
    web_scraper()
