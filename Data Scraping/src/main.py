# File main.py
# Store main program

from lib.scrape_players import scrape_players
from lib.scrape_games import scrape_games
from lib.store_data import store_data
import json

# Simple user interface
print("[1] Scrape players")
print("[2] Scrape games")
print("[3] Store data from players.json to database")
print("[4] Store data from games.json to database")
choice = input("Enter your choice: ")

if choice == "1":
	# Scrape players
	scrape_players()
elif choice == "2":
	# Scrape games
	minrating = input("Enter minimal rating: ")
	year = input("Enter year: ")
	scrape_games(minrating, year)
elif choice == "3":
	# From json to database
	data = json.load(open('../data/players.json'))
	store_data(data, True)
elif choice == "4":
 	# From json to database
	data = json.load(open('../data/games.json'))
	store_data(data, False)
else:
	print("Bye!")