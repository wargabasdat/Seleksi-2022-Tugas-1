<h1 align="center">
  <br>
  Data Webtoon Bahasa Indonesia dari webtoons.com/id
  <br>
  <br>
</h1>

<h2 align="center">
  <br>
  Data Scraping & Data Storing
  <br>
  <br>
</h2>

## Description

WEBTOON is a South Korean webtoons publisher launched in 2004 by Naver Corporation. As one of the biggest webtoon platform in the world, the company provides webtoons in different languages, such as Indonesian. Webtoons released in Indonesian can be accessed from [webtoons.com/id](webtoons.com/id). 

The data provided in this project is scraped from [webtoons.com/id/genre](webtoons.com/id/genre), where you can see all the webtoons available on the website. I scraped data from 683 available official webtoons. I chose to scrap this platform as WEBTOON's popularity is steadily increasing because lots of webtoons from this platform are adapted to live actions and it is often talked about on social media. The data can help people interested in reading webtoons to know information on available webtoons on the most popular platform and might help them to make decisions in reading webtoons.

Data storing is done by importing the json file to MongoDB. I chose MongoDB because of a few reasons. First, it's easier to import json file to a MongoDB database because it is a document-oriented NoSQL database that uses JSON-like documents. MongoDB is also faster and more scalable than SQL server. It is also a popular and widely used NoSQL database program.

## Specification

A few libraries are needed to run the scraper.

1. **BeautifulSoup4**  
   Main library needed to do web scraping. You need to install this library before using.
2. **Requests**  
   Library used to access websites and request objects from websites. You need to install this library before using.
3. **Time**  
   Library used to access sleep() function to prevent blocking.
4. **JSON**  
   Library used to write the data to a json file.
5. **OS**  
   Library used to read or write file in operating system.
6. **TQDM**  
   Library used to see progress bar in loops to monitor the scraping progress.
7. **LXML**  
   Library used to parse HTML because it is faster than html.parser. You need to install this library before using.

## How to Use
1. Clone this repository.
2. Install all required libraries (and Python if you haven't).
3. Open `scraper.py` in your IDE.
4. Change the path or json file name to your preference on variable `path`.
5. Run the code and the data will be stored in a json file on the chosen path.

## JSON Structure

### ONGOING
<pre>
{
    _id:  {
      $oid                            : ID generated automatically by exporting database from MongoDB
    }
    title {string}                    : title of the webtoon
    author [{string}]                 : author(s) of the webtoon
    genre [{string}]                  : genre(s) of the webtoon
    likes_in_millions {float}         : total number of likes in millions
    views_in_millions {float}         : total number of views in millions
    subscribers_in_millions {float}   : total number of subscribers in millions
    rating {float}                    : rating of the webtoon
    status {string}                   : status of the webtoons ('END' or 'ONGOING')
    update_days [{string}]            : update schedule of an ongoing webtoon
    first_update {string}             : the release date of the first episode (in yyyy-mm-dd format)
    last_update {string}              : the release date of the latest episode (in yyyy-mm-dd format)
    episode_count {int}               : number of episodes released
}
</pre>

### END
<pre>
{
    _id:  {
      $oid                            : ID generated automatically by exporting database from MongoDB
    }
    title {string}                    : title of the webtoon
    author [{string}]                 : author(s) of the webtoon
    genre [{string}]                  : genre(s) of the webtoon
    likes_in_millions {float}         : total number of likes in millions
    views_in_millions {float}         : total number of views in millions
    subscribers_in_millions {float}   : total number of subscribers in millions
    rating {float}                    : rating of the webtoon
    status {string}                   : status of the webtoons ('END' or 'ONGOING')
    first_update {string}             : the release date of the first episode (in yyyy-mm-dd format)
    last_update {string}              : the release date of the latest episode (in yyyy-mm-dd format)
    episode_count {int}               : number of episodes released
}
</pre>

## Database Structure

The structure of the database is as shown as the ERD below:

![ERD](Data%20Storing/design/erd.png)

## Screenshots

woohoooo

## Reference

1. Web Scraping with Python - Beautiful Soup Crash Course: https://youtu.be/XVv6mJpFOb0
2. Python libraries documentation: https://pypi.org/
3. My problem solver besties: 
  - https://stackoverflow.com
  - https://www.geeksforgeeks.org/
  - https://www.w3schools.com/

## Author

Gratia Nindyaratri
18220017
Sistem dan Teknologi Informasi


<p align="center">
  <i>
  hehe<br><br>
  - Gratia Nindyaratri
  </i>
</p>
<br>
