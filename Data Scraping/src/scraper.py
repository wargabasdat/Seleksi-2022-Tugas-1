from bs4 import BeautifulSoup
import urllib.request
import re

def scrape(card):
	# scrape card entry to dict
	dict = {}
	# extract card name from quotation marks using re 
	s = re.search('\"(.*?)\"', card.get('data-name')).group(1)
	dict['name'] = s
	dict['rarity'] = card.get('data-rarity')
	dict['character'] = card.get('data-character')
	dict['type'] = card.get('data-attribute')
	return dict