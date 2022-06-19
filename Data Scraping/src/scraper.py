from bs4 import BeautifulSoup
from random import randint
import os
import time
import requests
import json

def parseHtml(url):
    '''
        Send GET request to url and parse the HTML with BeutifulSoup 
        Return BeautifulSoup object
    '''
    headers = { # headers
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'
              }
    r = requests.get(url, headers=headers) # make GET request from url
    soup = BeautifulSoup(r.content, 'html.parser') # parse HTML from url
    return soup

def getTeamsLink():
    '''
        Get teams link from https://www.hltv.org/stats/teams
        Return array of urls of team
    '''
    url = "https://www.hltv.org/stats/teams"
    print("Scraping teams link from", url)
    soup = parseHtml(url) # parse HTML from url
    teamsTable = soup.find('table', class_='stats-table player-ratings-table') # find table that contain all teams
    teams = teamsTable.find_all('td', class_="teamCol-teams-overview") # find each team's detail

    links = []
    for team in teams:
        link = team.find('a', href=True) # find team's url
        links.append("https://www.hltv.org" + link['href']) # add to url list
    return links

def getTeamStats(url):
    '''
        Get team's statistics from team's stats url
        Return python's dictionary which consists of team's stats and team profile's url
    '''
    print("Scraping team's stats from", url)
    soup = parseHtml(url) # parse HTML from url
    statsSection = soup.find('div', class_='stats-section stats-team stats-team-overview')
    statsCols = statsSection.find_all('div', class_='col standard-box big-padding') # find all statistic columns

    for statsIdx in range(6):
        stat = statsCols[statsIdx].find('div', class_='large-strong') # find statistic value
        stat = stat.text.strip() # get statistic value as text from div element

        if (statsIdx == 1): # wins / draws / losses
            matchStats = stat.split('/')
            matchStats = [int(s.strip()) for s in matchStats]
            wins = matchStats[0]
            draws = matchStats[1]
            losses = matchStats[2]
        elif (statsIdx == 2): # total kills 
            totalKills = int(stat)
        elif (statsIdx == 3): # total deaths
            totalDeaths = int(stat)
        elif (statsIdx == 5): # K/D ratio
            kdRatio = float(stat)

    anchorTeamProfile = statsSection.findChildren('a', recursive=False, href=True)[0] # find team profile anchor tag
    teamProfileUrl = "https://www.hltv.org" + anchorTeamProfile['href'] # get team profile url

    teamStats = { # create dictionary to store team's stats
        "wins": wins,
        "draws": draws,
        "losses": losses,
        "kills": totalKills,
        "deaths": totalDeaths,
        "kdRatio": kdRatio,
    }

    return teamStats, teamProfileUrl

def getTeamProfile(url):
    '''
        Get team's profile from team's profile url
        Return python's dictionary which consists of team's profile and array of team's player
    '''
    print("Scraping team's profile from", url)
    soup = parseHtml(url) # parse HTML from url
    country = soup.find('div', class_='team-country text-ellipsis').text.strip() # get team's country
    name = soup.find('h1', class_='profile-team-name text-ellipsis').text.strip() # get team's name
    statsContainer = soup.find('div', class_='profile-team-stats-container')
    stats = statsContainer.find_all('div', class_='profile-team-stat') # get team's profle stats

    # get world ranking and coach
    coach = ""
    for statsIdx in range(len(stats)):
        statsName = stats[statsIdx].find('b').text.strip() # get stats name
        if (statsName == "World ranking"):
            rank = stats[statsIdx].find('a')
            if (rank != None): # if the team is included in world ranking
                rank = int(rank.text.strip()[1:]) # remove '#' char and convert to int
        elif (statsName == "Coach"):
            coach = stats[statsIdx].find('span').text.strip() # get coach's nickname
            coach = coach[1 : len(coach)-1] # remove apostrophe char
    if (coach == ""): # if the team doesn't have a coach
        coach = None

    teamProfile = { # create dictionary to store team's profile
        "name": name,
        "country": country,
        "rank": rank,
        "coach": coach
    }

    # find team's players url

    playersGrid = soup.find('div', class_='bodyshot-team g-grid')
    playerAnchors = playersGrid.find_all('a', class_='col-custom', href=True) # find all players anchor tag
    playerUrls = []
    for anchor in playerAnchors:
        playerUrl = "https://www.hltv.org/stats/players" + anchor['href'][7:] # append with player stats base url
        playerUrls.append(playerUrl) # insert into player urls list

    return teamProfile, playerUrls

def getPlayerData(url):
    '''
        Get player's data from player's stats url
        Return python's dictionary which consists of player's data
    '''
    print("Scraping player's data from", url)
    soup = parseHtml(url) # parse HTML from url
    breakdownContainer = soup.find('div', class_='summaryBreakdownContainer') # get breakdown container

    nickname = breakdownContainer.find('h1', class_='summaryNickname text-ellipsis').text.strip() # get player's nickname

    realNameDiv = breakdownContainer.find('div', class_='summaryRealname text-ellipsis')
    country = realNameDiv.find('img', class_='flag').get('alt').strip() # get player's country
    realname = realNameDiv.find('div', class_='text-ellipsis').text.strip() # get player's real name

    teamNameDiv = breakdownContainer.find('div', class_='SummaryTeamname text-ellipsis') 
    team = teamNameDiv.find('a', class_='a-reset text-ellipsis').text.strip() # get player's team name

    age = breakdownContainer.find('div', class_='summaryPlayerAge').text.strip() # get player's age
    age = int(age[:len(age)-6]) # remove " years" text and convert to int

    statsBreakdown = breakdownContainer.find_all('div', class_='summaryStatBreakdown') 
    
    statsValues = [] # rating, dpr, kast, impact, adr, kpr
    for stats in statsBreakdown:
        statsValue = stats.find('div', class_='summaryStatBreakdownDataValue').text.strip() # get stats value
        statsDetail = stats.find('div', class_='summaryStatTooltip hiddenTooltip')
        statsName = statsDetail.find('b').text.strip() # get stats name
        
        if (statsName == "KAST"):
            kpr = statsValue[:len(statsValue)-1] # remove '%' char
            kpr = round(float(kpr)/100, 3) # change percent representation to decimal
            statsValues.append(kpr)
        else:
            statsValues.append(float(statsValue))

    # find stats columns and boxes
    statsColumns = soup.find('div', class_='columns')
    statsBoxes = statsColumns.find_all('div', class_='col stats-rows standard-box')

    # find stats rows
    statsRows = statsBoxes[0].find_all('div', class_='stats-row')
    for row in statsRows: # for each stats in rows
        rowSpans = row.find_all('span')
        statsName = rowSpans[0].text.strip() # get stats name
        statsValue = rowSpans[1].text.strip() # get stats value
        if (statsName == "Total kills"): # Total kills
            kills = int(statsValue)
        elif (statsName == "Headshot %"): # Headshot percentage
            hsPercentage = statsValue[:len(statsValue)-1] # remove '%' char
            hsPercentage = round(float(hsPercentage)/100, 3) # change percent representation to decimal
        elif (statsName == "Total deaths"): # Total deaths
            deaths = int(statsValue)
        elif (statsName == "K/D Ratio"): # K/D Ratio
            kdRatio = float(statsValue)
        elif (statsName == "Maps played"): # Maps played
            mapsPlayed = int(statsValue)
        
    playerData = { # create dictionary to store player's data
        "nickname": nickname,
        "realname": realname,
        "country" : country,
        "age": age,
        "team": team,
        "rating": statsValues[0],
        "dpr": statsValues[1],
        "kast": statsValues[2],
        "impact": statsValues[3],
        "adr": statsValues[4],
        "kpr": statsValues[5],
        "kills": kills,
        "hsPercentage": hsPercentage,
        "deaths": deaths,
        "kdRatio": kdRatio,
        "mapsPlayed": mapsPlayed,
    }
    
    return playerData

def writeJson(data, dataname, filename): 
    '''
        Write data to json file with filename as file's name and
        dataname as json key
    '''
    # credit: https://www.geeksforgeeks.org/append-to-json-file-using-python/ with modifications
    try: # try to open the file with r+ mode
        with open(filename, 'r+', encoding='utf8') as file: 
            try:
                file_data = json.load(file)
                # Join data with file_data inside dataname
                file_data[dataname].append(data)
            except:
                file_data = {
                    dataname: [data]
                }
            finally:
                # Sets file's current position at offset.
                file.seek(0)
                # convert back to json.
                json.dump(file_data, file, ensure_ascii=False, indent = 4)
    except: # if file not exists, then open with w+ mode
        with open(filename, 'w+', encoding='utf8') as file:
            file_data = {
                    dataname: [data]
                }
            # Sets file's current position at offset.
            file.seek(0)
            # convert back to json.
            json.dump(file_data, file, ensure_ascii=False, indent = 4)

def startScrape(start, last):
    # Scrape teams from start to last index

    # change json file directory to /data
    if (os.path.basename(os.path.normpath(os.getcwd())) == 'src'):
        os.chdir("..")
    currentDir = os.getcwd() # 
    dir = currentDir + "//data//" 
   
    teamsLink = getTeamsLink() # get all teams links

    for i in range(start, last): # scrape teams from start to last index
        teamStats, teamProfileUrl = getTeamStats(teamsLink[i]) # get current team's stats and profile's url
        teamProfile, playerUrls = getTeamProfile(teamProfileUrl) # get current team's profile and their player's url
        teamData = teamProfile

        # append team's profile and team's stats dictionary
        for key in teamStats:
            teamData[key] = teamStats[key]
        writeJson(teamData, "teams", dir + "teams.json") # write team's data into json file

        for url in playerUrls: # for each player in current team
            playerData = getPlayerData(url) # get player's data
            # sleep for random time
            sleepTime = randint(5,10)
            print(f"Sleep for {sleepTime} seconds...")
            time.sleep(sleepTime)
            print("Resuming the scraper....")

            writeJson(playerData, "players", dir + "players.json") # write player's data into json file

        # sleep for random time    
        sleepTime = randint(10,20)
        print(f"Sleep for {sleepTime} seconds...")
        time.sleep(sleepTime)
        print("Resuming the scraper....")