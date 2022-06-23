from bs4 import BeautifulSoup
import re
import json
import urllib.request
from .store_data import store_data

def scrape_skills():
	# get html from tot.wiki
	req = urllib.request.Request("https://tot.wiki/wiki/Skills")
	req.add_header('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64); alifiarahmah/alifiarahmah03@gmail.com')
	sitestr = urllib.request.urlopen(req).read()
	soup = BeautifulSoup(sitestr, "html.parser")

	# append all cards to list
	skill_list = []
	for skill in soup.find_all("table")[1].find("tbody").findAll("tr"):
		skill_list.append(get_skill(skill))

	# convert card list to json
	print("Do you want to save the skills to a file? (y/n)")
	choice = input("Enter your choice: ")
	if choice == "y":
		with open('../../data/skills.json', 'w') as outfile:
			json.dump(skill_list, outfile, indent=4)
	
	# store data to database
	print("Do you want to store the skills to a database? (y/n)")
	choice = input("Enter your choice: ")
	if choice == "y":
		store_data(skill_list)

	print('Done scraping skills.')
	
def get_skill(skill):
	# get skills
	entry = {}
	entry['type'] = skill.find("td", class_="field_Name").find_all("a")[1].get("title")
	entry['name'] = skill.find("td", class_="field_Name").find_all("a")[1].get_text().strip()
	entry['level_1_desc'] = skill.find("td", class_="field_Level_1").get_text().strip()
	entry['level_10_desc'] = skill.find("td", class_="field_Level_10").get_text().strip()
	return entry