import requests
from bs4 import BeautifulSoup
import json
url = "https://www.ycombinator.com/topcompanies"
page = requests.get(url)

soup = BeautifulSoup(page.content, 'html.parser')

companies = soup.find_all("tr", {"class": "top-company-row"})
results = []
for company in companies:
    company_name = company.find("a", {"class": "company-name"}).text
    company_website = company.find("a", {"class": "company-website"}).text
    company_rank = company.find("td", {"class": "rank"}).text[1:]

    company_logo = company.find("img", {"class": "company-logo"})
    if company_logo != None:
        company_url_logo = company_logo["src"]
    else:
        company_url_logo = None

    company_status = soup.find("td",{"class": "status"}).text
    company_batch = soup.find("td", {"class": "small-batch"}).text
    company_breakthrough = soup.find("td", {"class": "breakthrough"}).text
    company_headquarters = soup.find("td", {"class": "headquarters"}).text
    company_overview = soup.find("td", {"class": "company-overview"}).text

    data = {
        "company_name": company_name,
        "company_website": company_website,
        "company_rank": company_rank,
        "company_url_logo": company_url_logo,
        "company_overview": company_overview,
        "company_status": company_status,
        "company_batch": company_batch,
        "company_breakthrough": company_breakthrough,
        "company_headquarters": company_headquarters
    }
    
    results.append(data)

with open('data.json', 'w', encoding='utf-8') as outfile:
    json.dump(results, outfile, indent=2, ensure_ascii=False)