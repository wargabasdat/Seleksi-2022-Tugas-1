#import necessary libraries

from bs4 import BeautifulSoup
import requests
import time
import json
import os

# procedure to scrape
def get_series(series, pagenum):
    headers = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'}

    # declaring base url and extracting the html, also turning it into a soup
    baseurl = "https://www.rottentomatoes.com" 
    url = baseurl + '/browse/tv_series_browse/sort:popular?page=' + str(pagenum)
    source = requests.get(url, headers=headers).text
    soup = BeautifulSoup(source, 'lxml')

    # finding the container of the series information
    tvshows = soup.find('div', class_ = 'discovery-grids-container').find_all('a')
    count = 1       # scraped tv shows count

    # fetching more details in new url
    for link in tvshows:
        try:
            # declaring the next url, extracting the html, and turning it into a soup
            suburl = baseurl + link["href"]
            subsource = requests.get(suburl, headers=headers).text
            subsoup = BeautifulSoup(subsource, 'lxml')

            # fetching title, airing years, and the synopsis of the tv show
            title = formattext(subsoup.find('h1', class_ = 'mop-ratings-wrap__title mop-ratings-wrap__title--top'))
            airing = removepar(formattext(subsoup.find('span', class_ = 'h3 subtle')))
            synopsis = formattext(subsoup.find('div', class_ = 'tv-series__series-info--synopsis clamp clamp-6 js-clamp clearfix'))

            # fetching the average rating of each seasons (tomatometer and audience score)
            avgtm = ratingformatter(subsoup.find('span', {'data-qa' : 'tomatometer'}))
            avgas = ratingformatter(subsoup.find('span', {'data-qa' : 'audience-score'}))

            # fetching the tv network, premiere date, and genre
            tvnetwork = formattext(subsoup.find('td', {'data-qa' : 'series-details-network'}))        
            pdate = dateformatter(formattext(subsoup.find('td', {'data-qa' : 'series-details-premiere-date'}))) 
            genre = formattext(subsoup.find('td', {'data-qa' : 'series-details-genre'}))

            # fetching main casts of each series
            maincasts = [] 
            casts = subsoup.find('span', {'data-qa' : 'series-info-cast'}).find_next_siblings("a")
            for cast in casts:
                maincasts.append(formattext(cast))

            # fetching data from every season of the series
            seasons = subsoup.find_all('a', {'data-qa' : 'season-link'})
            seasoninfo = []
            for season in seasons:
                try:
                    # fetching details provided before the shadow dom
                    sinfo = season.find('season-list-item')
                    info = sinfo['info'].split(",")         # var to keep number of episodes and airing year

                    # fetching the title, number of episodes, and airing year of each season
                    stitle = title + ': ' + sinfo['seasontitle']
                    episodes = int(info[2].strip().replace(' episodes', ''))
                    airing_year = int(info[0].strip())

                    # declaring every season's url and extracting the html, also turning it into a soup
                    surl = baseurl + season['href']
                    ssource = requests.get(surl, headers=headers).text
                    ssoup = BeautifulSoup(ssource, 'lxml')

                    # fetching rating (tomatometer and audience score) form internal link
                    tomatometer = ratingformatter(ssoup.find('span', {'data-qa' : 'tomatometer'}))
                    audiencescore = ratingformatter(ssoup.find('span', {'data-qa' : 'audience-score'}))

                    # keeping the season info
                    new_season = {
                        "season_title" : stitle,
                        "airing_year" : airing_year,
                        "episodes" : episodes,
                        "tomatometer" : tomatometer,
                        "audience_score" : audiencescore,
                    }

                    # adding the season info to an array
                    seasoninfo.append(new_season)

                    # resting time before looping (so it's not blocked)
                    rest(1)

                # passing the bad datas
                except ValueError:
                    pass

            # keeping each series info
            new_series = {
                "count" : count, # jangan lupa diapus
                "title" : title,
                "airing" : airing,
                "synopsis" : synopsis,
                "average_tomatometer" : avgtm,
                "average_audience-score" : avgas,
                "tv_network" : tvnetwork,
                "premiere_date" : pdate,
                "genre" : genre,
                "main_casts" : maincasts,
                "num_of_seasons" : len(seasoninfo),
                "seasons_info" : seasoninfo,
            }

            #adding new series info to the list
            series.append(new_series)
            #resting time before looping
            rest(count)
            count += 1      # increasing the count of series
            
        # passing the bad datas
        except AttributeError:
            pass
        except IndexError:
            pass

    print(f"Successfully scraped the contents of {count - 1} tv shows.")


# rest after scraping each page's data
def rest(count):
    if(count % 20 == 0):
        print(f"Done scraping the contents of {count} tv shows.")
        time.sleep(3)
    time.sleep(2)

# format date to ISO 8601
def dateformatter(date):
    months = {
        'Jan' : '01',
        'Feb' : '02',
        'Mar' : '03',
        'Apr' : '04',
        'May' : '05',
        'Jun' : '06',
        'Jul' : '07',
        'Aug' : '08',
        'Sep' : '09',
        'Oct' : '10',
        'Nov' : '11',
        'Dec' : '12',
    }
    date = date.replace(',', '').split(' ')
    date[0] = months.get(date[0])
    date[0], date[1], date[2] = date[2], date[0], date[1]
    date = '-'.join(date)
    return (date)

# format text
def formattext(string):
    return (string.text.strip())

# format rating to integer
def ratingformatter(rating):
    return (int(formattext(rating).replace('%', '')))

# remove parantheses
def removepar(string):
    return (string.replace('(', '').replace(')', ''))

# procedure to write the collected data to a json file
def write_json(datas):
    path = 'D:\seleksi asisten basdat\Seleksi-2022-Tugas-1\Data Scraping\data'
    file_name = 'TvShows.json'    # name of the file
    file_path = os.path.join(path, file_name)
    with open(file_path, 'w', encoding = 'utf-8') as file:
        json.dump(datas, file, ensure_ascii = False, indent = 4)
    print("Done exporting json file.")

# main program
def main():
    series = []
    lastpage = 1

    # since the website uses 'load more' pagination, the last page should be accessed first then the data can be scraped
    get_series(series, lastpage)
    write_json(series)
    print("Web scraping is finished!")

main()

