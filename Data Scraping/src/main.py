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
	player1 = input("Enter player1's name: ")
	player2 = input("Enter player2's name: ")
	minrating = input("Enter minimal rating: ")
	print("[1] =")
	print("[2] >=")
	print("[3] <=")
	ysign = input("Choose sign for year: ")
	year = input("Enter year: ")
	print("[1] =")
	print("[2] >=")
	print("[3] <=")
	msign = input("Choose sign for moves: ")
	moves = input("Enter moves: ")
	scrape_games(player1, player2, minrating, ysign, year, msign, moves)
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