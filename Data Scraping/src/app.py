import requests
from bs4 import BeautifulSoup
import json

def get_companies_data():
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

        company_status_element = company.find("td",{"class": "status"})
        # part of data preprocessing
        company_status = company_status_element.text if company_status_element.text != "—" else "Active"

        company_batch = company.find("td", {"class": "small-batch"}).text

        company_breakthrough_element = company.find("td", {"class": "breakthrough"})
        # false if company_breakthrough_element is "—" (part of data preprocessing)
        company_breakthrough =  company_breakthrough_element.text != "—"

        company_headquarters = company.find("td", {"class": "headquarters"}).text
        # if there are >1 headquarters, only take the first one
        if ";" in company_headquarters:
            company_headquarters = company_headquarters.split(";")[0]
        # to handle various text of remote e.g "Remote first"
        if "Remote" in company_headquarters:
            company_headquarters = "Remote"

        company_overview = company.find("td", {"class": "company-overview"}).text

        company_job_portal_element = company.find("td", {"class": "careers"}).find("a")
        company_job_portal = company_job_portal_element["href"] if company_job_portal_element else None

        data = {
            "company_name": company_name,
            "company_website": company_website,
            "company_rank": company_rank,
            "company_url_logo": company_url_logo,
            "company_overview": company_overview,
            "company_status": company_status,
            "company_batch": company_batch,
            "company_breakthrough": company_breakthrough,
            "company_headquarters": company_headquarters,
            "company_job_portal": company_job_portal
        }
    
        results.append(data)

    return results


results = get_companies_data()
with open('../data/data.json', 'w', encoding='utf-8') as outfile:
    json.dump(results, outfile, indent=2, ensure_ascii=False)