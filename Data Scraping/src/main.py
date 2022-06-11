from bs4 import BeautifulSoup
from random import randint
import time
import requests
import json

def getTeamsLink():
    '''
        Get teams link from https://www.hltv.org/stats/teams
        Return array of urls of team
    '''
    url = "https://www.hltv.org/stats/teams" # teams url
    headers = { # headers
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'
              }
    r = requests.get(url, headers=headers) # make GET request from url
    soup = BeautifulSoup(r.content, 'html.parser') # parse HTML from url
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
    headers = { # headers
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'
              }
    r = requests.get(url, headers=headers) # make GET request from url
    soup = BeautifulSoup(r.content, 'html.parser') # parse HTML from url
    statsSection = soup.find('div', class_='stats-section stats-team stats-team-overview')
    statsCols = statsSection.find_all('div', class_='col standard-box big-padding') # find all statistic columns

    for statsIdx in range(6):
        stat = statsCols[statsIdx].find('div', class_='large-strong') # find statistic value
        stat = stat.text.strip() # get statistic value as text from div element

        if (statsIdx == 0): # maps played
            mapsPlayed = int(stat)
        elif (statsIdx == 1): # wins / draws / losses
            matchStats = stat.split('/')
            matchStats = [int(s.strip()) for s in matchStats]
            wins = matchStats[0]
            draws = matchStats[1]
            losses = matchStats[2]
        elif (statsIdx == 2): # total kills 
            totalKills = int(stat)
        elif (statsIdx == 3): # total deaths
            totalDeaths = int(stat)
        elif (statsIdx == 4): # rounds played
            roundsPlayed = int(stat)
        elif (statsIdx == 5): # K/D ratio
            kdRatio = float(stat)

    anchorTeamProfile = statsSection.findChildren('a', recursive=False, href=True)[0] # find team profile anchor tag
    teamProfileUrl = "https://www.hltv.org" + anchorTeamProfile['href'] # get team profile url

    teamStats = { # create dictionary to store team's stats
        "mapsPlayed": mapsPlayed,
        "wins": wins,
        "draws": draws,
        "losses": losses,
        "totalKills": totalKills,
        "totalDeaths": totalDeaths,
        "roundsPlayed": roundsPlayed,
        "kdRatio": kdRatio,
    }

    print(teamStats)
    print(teamProfileUrl)

    return teamStats, teamProfileUrl
    #time.sleep(randint(10,20)) # sleep for random time between 10 and 20

def getTeamProfile(url):
    '''
        Get team's profile from team's profile url
        Return python's dictionary which consists of team's profile
    '''
    headers = { # headers
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'
              }
    r = requests.get(url, headers=headers) # make GET request from url
    soup = BeautifulSoup(r.content, 'html.parser') # parse HTML from url
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

    teamProfile = {
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
        playerUrl = "https://www.hltv.org/stats" + anchor['href'] # append with player stats base url
        playerUrls.append(playerUrl) # insert into player urls list

    return teamProfile, playerUrls

# teamStats, teamProfileUrl = getTeamStats("https://www.hltv.org/stats/teams/4863/tyloo")
# https://www.hltv.org/team/4863/tyloo
# https://www.hltv.org/team/5395/penta
teamProfile, playerUrls = getTeamProfile("https://www.hltv.org/team/4863/tyloo")

print(teamProfile)
print(playerUrls)