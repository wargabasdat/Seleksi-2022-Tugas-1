from lib.scrape_card import scrape_card
from lib.scrape_skills import scrape_skills
from lib.store_data import store_data
import json

print("[1] Scrape cards")
print("[2] Scrape skills")
print("[3] Store JSON cards data to database")
print("[4] Store JSON skills data to database")
choice = input("Enter your choice: ")

if choice == "1":
	scrape_card()
elif choice == "2":
	scrape_skills()
elif choice == "3":
	# from json to database
	data = json.load(open('../data/cards.json'))
	store_data(data, True)
elif choice == "4":
	# from json to database
	data = json.load(open('../data/skills.json'))
	store_data(data, False)
else:
	print("Bye!")
