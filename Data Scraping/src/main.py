from scrape_card import scrape_card
from scrape_skills import scrape_skills

print("[1] Scrape cards")
print("[2] Scrape skills")
print("[3] Scrape both")
print("[4] Exit")
choice = input("Enter your choice: ")

if choice == "1":
	scrape_card()
elif choice == "2":
	scrape_skills()
elif choice == "3":
	scrape_card()
	scrape_skills()
else:
	print("Bye!")
