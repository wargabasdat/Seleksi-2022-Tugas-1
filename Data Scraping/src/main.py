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

    for statIdx in range(6):
        stat = statsCols[statIdx].find('div', class_='large-strong') # find statistic value
        stat = stat.text.strip() # get statistic value as text from div element

        if (statIdx == 0): # maps played
            mapsPlayed = int(stat)
            print("MAPS PLAYED:", mapsPlayed)
        elif (statIdx == 1): # wins / draws / losses
            matchStats = stat.split('/')
            matchStats = [int(s.strip()) for s in matchStats]
            wins = matchStats[0]
            print("WINS:", wins)
            draws = matchStats[1]
            print("DRAWS:", draws)
            losses = matchStats[2]
            print("LOSSES:", losses)
        elif (statIdx == 2): # total kills 
            totalKills = int(stat)
            print("TOTAL KILLS:", totalKills)
        elif (statIdx == 3): # total deaths
            totalDeaths = int(stat)
            print("TOTAL DEATHS:", totalDeaths)
        elif (statIdx == 4): # rounds played
            roundsPlayed = int(stat)
            print("ROUNDS PLAYED:", roundsPlayed)
        elif (statIdx == 5): # K/D ratio
            kdRatio = float(stat)
            print("ROUNDS PLAYED:", kdRatio)

    anchorTeamProfile = statsSection.find('a', href=True) # find team profile anchor tag
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

    return teamStats, teamProfileUrl
    #time.sleep(randint(10,20)) # sleep for random time between 10 and 20

#teamsLink = getTeamsLink()
#getTeamData("https://www.hltv.org/stats/teams/4863/tyloo")
