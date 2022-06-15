from bs4 import BeautifulSoup
import json
import urllib.request
from scraper import scrape

# get html from tot.wiki
req = urllib.request.Request("https://tot.wiki/wiki/Cards")
req.add_header('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64); alifiarahmah/alifiarahmah03@gmail.com')
sitestr = urllib.request.urlopen(req).read()

# parse html
soup = BeautifulSoup(sitestr, "html.parser")

# append all cards to list
cards = []
for card in soup.find_all("div", class_="filter-element card-preview"):
	cards.append(scrape(card))

# convert list to json
with open('Data Scraping/data/cards.json', 'w') as outfile:
	json.dump(cards, outfile, indent=4)

