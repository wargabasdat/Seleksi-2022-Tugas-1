# Gratia Nindyaratri
# 18220017

# import libraries
import requests
from bs4 import BeautifulSoup as soup
import time
import json
import os
from tqdm import tqdm

# dictionaries used

daydict = {
    'SEN': 'SENIN',
    'SEL': 'SELASA',
    'RAB': 'RABU',
    'KAM': 'KAMIS',
    'JUM': 'JUMAT',
    'SAB': 'SABTU',
    'MIN': 'MINGGU'
}

monthdict = {
    'Jan': '01',
    'Feb': '02',
    'Mar': '03',
    'Apr': '04',
    'Mei': '05',
    'Jun': '06',
    'Jul': '07',
    'Agu': '08',
    'Sep': '09',
    'Okt': '10',
    'Nov': '11',
    'Des': '12'
}

# functions

# path where json file will be stored
path = 'D:\seleksi basdat\Seleksi-2022-Tugas-1\Data Scraping\data\data.json'

# function to write data in json
def write_json(data_list, path):
    filepath = os.path.join(path)
    with open(filepath, "w+", encoding='utf-8') as f:
        json_dump = json.dumps(data_list, ensure_ascii = False, indent=4)
        f.write(json_dump)
        f.close()

# function to format numerical data in millions unit
def toJuta(number):
    if ('JT' in number):
        removed_JT = number.replace('JT', '')
        new_likes = removed_JT.replace(',','.')
    elif ('M' in number):
        removed_M = float(number.replace('M', '').replace(',','.'))
        new_likes = removed_M * 1000
    else:
        toNumbers = float(number.replace('.',''))
        new_likes = "{:.2f}".format(toNumbers/1000000)
    return float(new_likes)

# function to convert rating format to float
def rating_to_float(rating):
    new_rating = float(rating.replace(',', '.'))
    return new_rating

# function to format episodes_count as int
def format_epcount(epcount):
    return int(epcount.replace('#',''))

# function to format update_days as list
def format_update_days(days):
    if ('Diupdate setiap hari' in days):
        new_days = ['SENIN','SELASA','RABU','KAMIS','JUMAT','SABTU','MINGGU']
    elif ('Update' in days):
        if (',' in days):
            days = days.replace('Update ','').replace('UP', '')
            split_days = days.split(', ')
            new_days = []
            for day in split_days:
                new_day = daydict.get(day)
                new_days.append(new_day)
        else:
            days = days.replace('Update ','').replace('UP', '')
            new_days = []
            new_days.append(days)
    return new_days

# function to format the date
def date_converter(date):
    date = date.split(' ')
    date[1] = monthdict.get(date[1])
    new_date = '-'.join(date)
    return new_date

# start scraping
url = 'https://www.webtoons.com/id/genre'
headers = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'}
page_html = requests.get(url, headers = headers).text
page_soup = soup(page_html, 'lxml')

# webpage is divided by cards
# every card contains webtoons of the same genre
# a webtoon can appear in multiple cards
cards = page_soup.find_all('ul', class_='card_lst')
number_of_cards = len(cards)

# find genre_list
genre_list = page_soup.find_all('h2')

# initialization
card_count = 0
wt_count = 0
data = {}
idx_genre = 0

print(f'Start scraping {url}')
# iterate cards
for card in cards:
    webtoons = card.find_all('li')
    curr_genre = genre_list[idx_genre].text
    print(f'Finding all {curr_genre} webtoons...')
    for webtoon in tqdm(webtoons):
        # get title
        title = webtoon.find('p', class_='subj').text

        # check list of data, add another genre if already scraped and skip it
        try:
            data[title]
        except:
            pass
        else:
            if (curr_genre != data[title].get("genre")[0]):
                data[title]["genre"].append(curr_genre)
            continue

        # get data from main page
        author = webtoon.find('p', class_='author').text
        if ('\u200b' in author):
            author.replace('\u200b','')  
        authors = author.split(' / ')
        likes = toJuta(webtoon.find('p', class_='grade_area').find('em', class_='grade_num').text)
        genre = [curr_genre]

        time.sleep(2)

        # get data from each webtoon page
        each_url = webtoon.a["href"]
        each_html = requests.get(each_url, headers=headers).text
        each_soup = soup(each_html, 'lxml') 
        
        # get details from side part
        aside_detail = each_soup.find('div', class_='aside detail')
        
        # get details from grade area
        grade_area = aside_detail.find('ul', class_='grade_area')
        views = toJuta(grade_area.find_all('li')[0].find('em', class_='cnt').text)
        subscribers = toJuta(grade_area.find_all('li')[1].find('em', class_='cnt').text)
        rating = rating_to_float(grade_area.find_all('li')[2].find('em', class_='cnt').text)

        # get update details
        update_status = aside_detail.find('p', class_='day_info').text
        # check if the webtoon is ended. if yes, there will be no update_days
        try:
            update_days = format_update_days(update_status)
            status = 'ONGOING'
        except:
            status = 'END'

        # check latest episode to get episodes count and last update date
        latest_episode = each_soup.find('li', class_='_episodeItem')
        episodes_count = format_epcount(latest_episode.find('span', class_='tx').text)
        last_update = date_converter(latest_episode.find('span', class_='date').text)

        time.sleep(2)
        # look for the first episode in the last page

        # look for the last page
        get_last_pages = each_soup.find('div', class_='paginate').find_all('a')[-1]
        to_last_page = get_last_pages['href']
        while (to_last_page != '#'):    
            last_html = requests.get('https://www.webtoons.com' + to_last_page, headers=headers).text
            last_soup = soup(last_html, 'lxml')
            get_last_pages = last_soup.find('div', class_='paginate').find_all('a')[-1]
            to_last_page = get_last_pages['href']
        
        # get first release date from the first episode
        first_episode = last_soup.find_all('li', class_='_episodeItem')[-1]
        first_update = date_converter(first_episode.find('span', class_='date').text)
        
        # store data. if the status='END', don't write the update_days
        if (status == 'END'):
            data[title] = {
                "title": title,
                "author": authors,
                "genre": genre,
                "likes_in_millions": likes,
                "views_in_millions": views,
                "subscribers_in_millions": subscribers,
                "rating": rating,
                "status": status,
                "first_update": first_update,
                "last_update": last_update,
                "episode_count": episodes_count
            }
        else:
            data[title] = {
                "title": title,
                "author": authors,
                "genre": genre,
                "likes_in_millions": likes,
                "views_in_millions": views,
                "subscribers_in_millions": subscribers,
                "rating": rating,
                "status": status,
                "update_days": update_days,
                "first_update": first_update,
                "last_update": last_update,
                "episode_count": episodes_count
            }
        time.sleep(2) 
        wt_count += 1
    idx_genre += 1
    card_count += 1
    print(f'Done scraping card: {card_count}/{number_of_cards}')
    print(f'Scraped {wt_count} webtoon(s)')
    time.sleep(5)

print('Done scraping all webtoons!')
print(f'Scraped webtoons: {wt_count}')

# write data in json
write_json(data, path)
