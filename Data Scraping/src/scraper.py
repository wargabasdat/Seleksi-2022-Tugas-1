from bs4 import BeautifulSoup
import urllib.request
import re

def scrape(card):
	# scrape card entry to dict
	print('Scraping card:', card.get('data-name'))
	dict = {}
	# extract card name from quotation marks using re 
	s = re.search('\"(.*?)\"', card.get('data-name')).group(1)
	dict['name'] = s
	dict['rarity'] = card.get('data-rarity')
	dict['character'] = card.get('data-character')
	dict['attribute'] = card.get('data-attribute')

	# make request to card page
	req = urllib.request.Request("https://tot.wiki" + card.find('a').get('href'))
	req.add_header('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64); alifiarahmah/alifiarahmah03@gmail.com')
	site = urllib.request.urlopen(req).read()
	page = BeautifulSoup(site, "html.parser")

	# scrape card stats to dict
	stats = page.find("table", class_="wikitable")
	dict['max_power'] = stats.findAll("tr")[5].find("td").text.strip()
	dict['max_influence'] = stats.findAll("tr")[6].find("td").text.strip()
	dict['max_defense'] = stats.findAll("tr")[7].find("td").text.strip()
	# change to integer
	try:
		dict['max_power'] = int(dict['max_power'])
	except:
		dict['max_power'] = 0
	try:
		dict['max_influence'] = int(dict['max_influence'])
	except:
		dict['max_influence'] = 0
	try:
		dict['max_defense'] = int(dict['max_defense'])
	except:
		dict['max_defense'] = 0

	# scrape card skills to dict
	skillpage = page.find("div", class_="hs-block")
	skillpage = page.find("div", class_="hs-block")
	skills = {}
	for skill in skillpage.findAll("div", class_="notable"):
		key = skill.find("div", class_="notable-header").find("a").get("title").strip()
		value = skill.find("div", class_="notable-header").findAll("a")[1].get_text().strip()
		skills[key] = value
	dict['skills'] = skills

	return dict