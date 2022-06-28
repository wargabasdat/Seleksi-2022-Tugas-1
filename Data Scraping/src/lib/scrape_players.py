# File scrape_players.py
# Scraping players data

from lib.store_data import store_data
from bs4 import BeautifulSoup
import json
import urllib.request

# Scraping players data, save it to .json file (optional), and save it to database (optional)
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
            data_dict = get_players(row)

            # Append to list
            data.append(data_dict)
    
    print("Done scraping players.")

    # Store data to json
    print("Save players data to a .json file? (y/n)")
    choice = input("Enter your choice: ")
    if(choice == "y"):
        with open('../data/players.json', 'w') as outfile:
            json.dump(data, outfile, indent=2)
        print("Players data saved to json.")
	
	# Store data to database
    print("Store players data to database? (y/n)")
    choice = input("Enter your choice: ")
    if choice == "y":
        store_data(data, True)
    
# Get players data from soup
def get_players(row):
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
    rating_entry = {}
    classic = int(ratings[0].get_text(strip=True))
    rapid = int(ratings[1].get_text(strip=True))
    blitz = int(ratings[2].get_text(strip=True))
    rating_entry["Classic"] = classic
    rating_entry["Rapid"] = rapid
    rating_entry["Blitz"] = blitz

    # Make a dictionary for json
    data_dict = {}
    data_dict['Rank'] = rank
    data_dict['Name'] = name
    data_dict['Title'] = title
    data_dict['Nationality'] = nationality
    data_dict["Rating"] = rating_entry

    return data_dict