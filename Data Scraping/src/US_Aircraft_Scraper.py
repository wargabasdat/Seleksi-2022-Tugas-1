# Import paket yang diperlukan
from bs4 import BeautifulSoup
import requests
import pandas as pd
import numpy as np
import re
import json

# URL data yang discrape
url = "https://military-history.fandom.com/wiki/List_of_active_United_States_military_aircraft"

# Get request HTML
html_content = requests.get(url).text

# Parse HTML code for the entire site
soup = BeautifulSoup(html_content, "lxml")


# Mencari table yang ada pada website
gdp = soup.find_all("table", attrs={"class": "wikitable"})
print("Jumlah tabel yang ada : ", (len(gdp)))



i = 0
all_rows = []

# Iterasi sesuai dengan jumlah tabel yang ada 
for i in range(len(gdp)) :
    if i != 2 :

        table = gdp[i]
        body = table.find_all("tr")

        head = body[0]
        body_rows = body[2:]

        # Pencarian nama kolom tabel
        headings = []
        for item in head.find_all("th"): 
            item = (item.text).rstrip("\n")
            headings.append(item)
        



        # Pencarian data yang ada di row pada tabel
        for row_num in range(len(body_rows)): 
            row = [] 
            x = 0
            for row_item in body_rows[row_num].find_all("td"): 
                if (x < 7) :              
                    aa = re.sub("(\xa0)|(\n)|,","",row_item.text)
                    row.append(aa)
                x += 1
            all_rows.append(row)
        i += 1





df = pd.DataFrame(data=all_rows,columns=headings)
print("Jumlah data yang discrape (sebelum cleaning) :", (len(df.index)))




# Cleaning
df = df.drop_duplicates()
df = df[pd.notnull(df['Aircraft'])]
df = df.drop(columns= ['Photo','Origin', 'Quantity', 'Note', 'Version'])
print("Jumlah data yang discrape (setelah cleaning) :", (len(df.index)))

# Menambah kolom id_plane
i = 1
id = []
while i < len(df.index) + 1 :
    id.append(i)
    i += 1
df.insert(0,'id_plane', id )

# Dataframe to json
df.to_json(
    path_or_buf = "US_Aircraft.json",
    orient = 'table',
    index = False
)
print("Berhasil membuat json file")





