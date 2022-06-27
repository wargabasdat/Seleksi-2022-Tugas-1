# File scrape_games.py
# Scraping games data

from lib.store_data import store_data
from bs4 import BeautifulSoup
import json
import urllib.request

def scrape_games(minrating, year):
    print("Scraping games...")

    # Top-level url
    url = f"https://www.chess.com/games/search?opening=&openingId=&p1=&p2=&mr={minrating}&lsty=1&year={year}&lstMoves=1&moves=&fen=&sort=&page="
    
    # List to store data
    data = []

    # Iterate all pages needed
    for i in range(1, 21):
        # Get html from chess.com
        full_url = url + str(i)
        req = urllib.request.Request(full_url)
        req.add_header('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64); dikyrest/dikyrestumaulana@gmail.com')
        html = urllib.request.urlopen(req).read()
        soup = BeautifulSoup(html, "html.parser")

        try:
            # Find the table that contains games
            table = soup.find("tbody")
            rows = table.find_all("tr", "master-games-master-game v-board-popover")

            # Iterate each row in the table
            for row in rows:
                data_dict = get_games(row)

                # Append to list
                data.append(data_dict)
        except:
            print("End of pages.")
            break
    
    print("Done scraping games.")

    # Store data to json
    print("Do you want to save the data to a file? (y/n)")
    choice = input("Enter your choice: ")
    if(choice == "y"):
        with open('../data/games.json', 'w') as outfile:
            json.dump(data, outfile, indent=2)
        print("Games saved to json.")
	
	# Store data to database
    print("Do you want to store the games to database? (y/n)")
    choice = input("Enter your choice: ")
    if choice == "y":
        store_data(data_dict, False)

def get_games(row):
    players = row.find_all("span", "master-games-username")
    white = players[0].get_text(strip=True)
    black = players[1].get_text(strip=True)
    notation = row.find("a", "master-games-opening").find_all("span")[0].get_text(strip=True)
    opening = row.find("a", "master-games-opening").find_all("span")[1].get_text(strip=True)
    result = row.find("td", "master-games-text-center").find("a", "master-games-text-middle").get_text(strip=True)[0]
    if (result == '1'):
        winner = "White"
    elif (result == '0'):
        winner = "Black"
    else: # Draw
        winner = "-"
    moves = int(row.find("td", "master-games-text-right").find("a", "master-games-text-middle").get_text(strip=True))
    year = int(row.find("a", "master-games-date").get_text(strip=True))

    # Make a dictionary for json
    data_dict = {}
    data_dict['White'] = white
    data_dict['Black'] = black
    data_dict['Notation'] = notation
    data_dict['Opening'] = opening
    data_dict['Winner'] = winner
    data_dict['Moves'] = moves
    data_dict['Year'] = year

    return data_dict
