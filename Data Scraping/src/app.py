import requests
from bs4 import BeautifulSoup
import json, sys
from psycopg2 import connect, Error
from psycopg2.extras import Json
import config

def getCompaniesData():
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
            "company_rank": company_rank,
            "company_name": company_name,
            "company_website": company_website,
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

def storeCompaniesDataToJson():
    results = getCompaniesData()
    with open('../data/data.json', 'w', encoding='utf-8') as outfile:
        json.dump(results, outfile, indent=2, ensure_ascii=False)

# MANUALLY INSERT INTO POSTGRESQL (WITHOUT API)

# def create_company_data_tables():
#     sql_command = (
#         """
#         CREATE TABLE IF NOT EXISTS company (
#         company_rank INTEGER PRIMARY KEY,
#         company_name VARCHAR(35) NOT NULL,
#         company_website VARCHAR(50) NOT NULL,
#         company_url_logo VARCHAR(150),
#         company_overview VARCHAR(200)  NOT NULL,
#         company_status VARCHAR(6) NOT NULL,
#         company_batch VARCHAR(5) NOT NULL,
#         company_breakthrough boolean,
#         company_headquarters VARCHAR(50) NOT NULL,
#         company_job_portal   VARCHAR(150)
#         )
#         """
#     )
#     conn = None
#     try:
#         # connect to the PostgreSQL server
#         conn = connect(
#             dbname = "top_companies",
#             user = "postgres",
#             password = "addinaddin123",
#             # attempt to connect for 3 seconds then raise exception
#             connect_timeout = 3
#         )
#         cur = conn.cursor()
#         # create table one by one
#         cur.execute(sql_command)
#         # close communication with the PostgreSQL database server
#         cur.close()
#         # commit the changes
#         conn.commit()
#     except (Exception, Error) as err:
#         print ("\npsycopg2 connect error:", err)
#     finally:
#         if conn is not None:
#             conn.close()

# def storeJsonToDB():
#     # create table company
#     create_company_data_tables();

#     with open('../../data/data.json', 'r', encoding='utf-8') as json_data:
#         record_list = json.load(json_data)

#     rows = [list(x.values()) for x in record_list]
#     columns = [list(x.keys()) for x in record_list][0]

#     # declare a new PostgreSQL connection object
#     conn = None
#     try:
#         # connect to the PostgreSQL server
#         conn = connect(
#             dbname = "top_companies",
#             user = "postgres",
#             password = "addinaddin123",
#             # attempt to connect for 3 seconds then raise exception
#             connect_timeout = 3
#         )
#         cur = conn.cursor()
#         values = ""
#         for i, record in enumerate(rows):

#             # declare empty list for values
#             values_list = []
        
#             # append each value to a new list of values
#             for v, val in enumerate(record):
#                 if type(val) == str:
#                     val = str(Json(val)).replace('"', '')
#                 if (not(val)):
#                     val = "NULL"
#                 values_list += [ str(val) ]

#             # put parenthesis around each record string
#             values += "(" + ', '.join( values_list ) + "),\n"
#         # remove the last comma and end SQL with a semicolon
#         values = values[:-2] + ";"

#         # concatenate the SQL string
#         table_name = "company"
#         sql_command = "INSERT INTO %s (%s)\nVALUES %s" % (
#             table_name,
#             ', '.join(columns),
#             values
#         )

#         # insert values stored in sql_command
#         cur.execute( sql_command )
#         # commit the changes
#         conn.commit()

#     except (Exception, Error) as error:
#             print("\nexecute_sql() error:", error)
#     finally:
#         if conn is not None:
#             conn.close()

# storeJsonToDB()

storeCompaniesDataToJson()