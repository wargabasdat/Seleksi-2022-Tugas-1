# File scrape_players.py
# Scraping players data

from lib.store_data import store_data
from bs4 import BeautifulSoup
import json
import urllib.request

def scrape_players():
    print("Scraping players...")

    # Top-level url
    url = "https://www.chess.com/ratings?page="

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

        # Find the table that contains ratings
        table = soup.find("tbody")
        rows = table.find_all("tr")

        # Iterate each row in the table
        for row in rows:
            data_dict = get_player(row)

            # Append to list
            data.append(data_dict)
    
    print("Done scraping players.")

    # Store data to json
    print("Do you want to save the data to a file? (y/n)")
    choice = input("Enter your choice: ")
    if(choice == "y"):
        with open('../data/players.json', 'w') as outfile:
            json.dump(data, outfile, indent=2)
        print("Players saved to json.")
	
	# Store data to database
    print("Do you want to store the players to database? (y/n)")
    choice = input("Enter your choice: ")
    if choice == "y":
        store_data(data_dict, True)
    
def get_player(row):
    rank = int(row.find("div", "master-players-rating-rank").get_text(strip=True).replace("#", ""))
    name = row.find("a", "username").get_text(strip=True)

    try:
        flag = row.find("div", "master-players-rating-user-flag")
        nationality = flag.get_attribute_list("v-tooltip")[0].replace("'", "")
    except:
        nationality = "Rusia"    

    try:
        title = row.find("span").get_text(strip=True)
    except:
        title = "-"
    
    ratings = row.find_all("div", "master-players-rating-player-rank")
    classic = int(ratings[0].get_text(strip=True))
    rapid = int(ratings[1].get_text(strip=True))
    blitz = int(ratings[2].get_text(strip=True))

    # Make a dictionary for json
    data_dict = {}
    data_dict['Rank'] = rank
    data_dict['Name'] = name
    data_dict['Title'] = title
    data_dict['Nationality'] = nationality
    data_dict['Classic'] = classic
    data_dict['Rapid'] = rapid
    data_dict['Blitz'] = blitz

    return data_dict