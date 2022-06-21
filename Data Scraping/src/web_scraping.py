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
    data["clubs"][-1]["name"] = tag.find("a", href=re.compile("/team/.*")).div.string.strip()       # Team Name
    data["clubs"][-1]["league"] = tag.find("a", href=re.compile("/teams\?lg=.*")).div.text.strip()  # League Name
    data["clubs"][-1]["overall"] = tag.find("td", class_="col col-oa").span.text.strip()            # Team Overall
    data["clubs"][-1]["attack"] = tag.find("td", class_="col col-at").span.text.strip()             # Team Attack
    data["clubs"][-1]["midfield"] = tag.find("td", class_="col col-md").span.text.strip()           # Team Midfield
    data["clubs"][-1]["defense"] = tag.find("td", class_="col col-df").span.text.strip()            # Team Defense
    data["clubs"][-1]["transfer-budget"] = tag.find("td", class_="col col-tb").text.strip()         # Team Transfer Budget
    data["clubs"][-1]["number-of-players"] = tag.find("td", class_="col col-ps").text.strip()       # Number of Players
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
    data["clubs"][idx]["defensive-style"] = tags[0].span.span.text.strip()                                          # Defensive Style
    data["clubs"][idx]["defense-width"] = tags[1].find("span", class_="float-right").span.text.strip()              # Team Defense Width
    data["clubs"][idx]["defense-depth"] = tags[2].find("span", class_="float-right").span.text.strip()              # Team Defense Depth
    # Offense
    data["clubs"][idx]["build-up-play"] = tags[3].span.span.text.strip()                                            # Build Up Play
    data["clubs"][idx]["chance-creation"] = tags[4].span.span.text.strip()                                          # Chance Creation
    data["clubs"][idx]["offense-width"] = tags[5].find("span", class_="float-right").span.text.strip()              # Team Offense Width
    data["clubs"][idx]["offense-player-in-box"] = tags[6].find("span", class_="float-right").span.text.strip()      # Team Offense Player In Box
    data["clubs"][idx]["corner-player-in-box"] = tags[7].find("span", class_="float-right").span.text.strip()       # Team Corner Player In Box
    data["clubs"][idx]["free-kick-player-in-box"] = tags[8].find("span", class_="float-right").span.text.strip()    # Team Free Kick Player In Box
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
    data["clubs"][idx]["home-stadium"] = stadium                      # Home Stadium
    data["clubs"][idx]["rival-team"] = tags[1].a.text.strip()         # Rival Team
    data["clubs"][idx]["club-worth"] = tags[5].text[11:].strip()      # Club Worth
    data["clubs"][idx]["average-age"] = tags[7].text[22:].strip()     # Whole Team Average Age
    data["clubs"][idx]["captain"] = tags[8].a.text.strip()            # Team Captain
    data["stadiums"].add(data["clubs"][idx]["home-stadium"])
    data["captains"].append(data["clubs"][idx]["captain"])
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
    data["clubs"][idx]["coach"] = tags[0].find("a", href=coach_url[:-1])["title"].strip()   # Coach Name
    if len(tags[2].text.strip())==0:
        date = None
    else:
        str_date = tags[2].text.strip()  
        date = datetime.strptime(str_date, "%b %d, %Y")
        date = date.strftime("%Y-%m-%d")                                                    # Coach Birth Date
    coach = dict()
    coach["name"] = data["clubs"][idx]["coach"]
    coach["birth-date"] = date
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
        league = option.text.strip()
        if "\u00a0" in league:
            league = league.replace("\u00a0", "")
        data["leagues"].append(league)
    return data

def tactic_scraper(tags, data):
    """Receives a list of html elements, and data, then adds the information inside the tags into data. 
    Information will be added to the value inside data with "defensive-style", "build-up-play", and "chance-creation"
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
        data["defensive-style"].append(option.text.strip())
    for option in tags[5:10]:
        data["build-up-play"].append(option.text.strip())
    for option in tags[10:14]:
        data["chance-creation"].append(option.text.strip())
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
            "defensive-style":[],
            "build-up-play":[],
            "chance-creation":[]
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
        else:
            data["clubs"][i]["coach"] = None
            data["clubs"][i]["coach-birth-date"] = None

    data["stadiums"] = sorted(data["stadiums"])

    with open('Data Scraping/data/data.json', 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=2, ensure_ascii=False)

if __name__ == '__main__':
    web_scraper()
