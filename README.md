<h1 align="center">
  <br>
  Zakwoow (Bag and Wallet Online Store) Web Scraping
  <br>
  <br>
</h1>

<h2 align="center">
  <br>
  Salimatussholati Az Zahra/18220054
  <br>
  <br>
</h2>


## Description of the data and DBMS 

### About Zakwoow. 
![alt text](https://github.com/salimashockbgt/Seleksi-2022-Tugas-1/blob/main/logozakwoow.png)

Zakwoow is an Indonesia's well-known bag and wallet online store based on social media. 
Their instagram account reaches 141K followers and they are able to create a customer telegram group with a thousand of subscribers.
Although they started as an online shop, they succeed to establish their offline store located in Yogyakarta.
As an online shop, they provide various payment platforms, such as Shopee, Tokopedia, WhatsApp Business, and website.
Their website's URL address is https://zakwoowstyle.com/


### About Data and DBMS

Their website consists of product catalogue and payment method. If you go to https://zakwoowstyle.com/products, you will see all the information regarding each product, such as product's name, current price, discount, rating, stock, and so on. 
In this project, I gathered Zakwoow's products data by scraping their website. The reason I chose to scrape data from Zakwoow's website is because they don't put many restrictions on their pages. I’m also inspired by how they put simplicity and completeness in their product catalogue page. From that, I'm eager to create a database out of all the data I could scrape from Zakwoow's website.
I use PostgreSQL as my DBMS because it allows me to work on both JSON and SQL data to implement my desired relational database. Moreover, Postgres allows me to store and manage large dataset safely.

## Specification of the Program

To run the program, we need several libraries, such as:

__Jupyter Notebook__

The Jupyter Notebook is the original web application that makes it easy for
us to create and maintain computational documents. In this project, I choose
to use Jupyter Notebook to write scripts. All scripts will be saved in ipynb format.

To install, type:

```pip install notebook```

on your terminal.

__BeautifulSoup__

BeautifulSoup is a Python package that is useful for web scraping. 
Since I use Python as the programming language for this project, I choose
BeautifulSoup as it is a compatible tool to work with.

To install BeautifulSoup library, type

```pip install beautifulsoup4```

in your terminal

__requests__

Requests is a HTTP library for Python. 
This module allows us to send HTTP requests using Python

To install requests modul, type

```pip install requests```

in your terminal

__Time__

In order to keep the server from crashing, we need to put our program on sleep
using the time.sleep() method. We can import time library immediately because it is 
already preinstalled with python.

__TQDM__

In order to monitor the progress of my program during the web-scraping, I use TQDM because it
can show me a progress bar on loops.

To install tqdm, type

```pip install tqdm```

in your terminal

__JSON__

In this project, I store the scraped data in JSON format. To dump the
scraped data into JSON format, we need to import a JSON library. JSON library
is already preinstalled with Python. Therefore, we can just type 'import json' on Jupyter Notebook cell.

__NumPy__

I also import NumPy library because I need to use .array_split() method to help me preprocessing the data scraped.
NumPy is a Python library used for working with arrays.

To install NumPy, type

```pip install NumPy```

in your terminal

*__OPTIONAL__*

__Anaconda Navigator__

Anaconda Navigator allows us to launch common Python programs and easily manage
conda packages without using command-line commands. Using this desktop GUI (Graphical User Interface),
we can launch and install Jupyter Notebook without command-line commands.

### HOW TO USE

1. Install and import all the libraries needed in this project. You can find the list of
the necessary libraries on Specification of The Program.
2. Make sure your internet connection is stable enough to avoid errors in running the program
3. Clone this repository to your local directory
4. Open Jupyter Notebook using Anaconda Navigator or typing 'jupyter-notebook'
on your terminal (make sure to change the directory on your terminal based on your repository).
5. Open zakwoow_webscraping.ipynb and run the scripts on Jupyter Notebook
6. Make sure you run each cell on zakwoow_webscraping.ipynb sequentially from top to bottom


### JSON Structure

The scraped data will be dumped into JSON format. Below are the examples of JSON formatted scraped-data from each json file.

produkTas.json
```
    {
        "name": "Mini Aira Bag by Zakwoowstyle",
        "price": 90000,
        "rating": 0.0,
        "isdiscountapplied": false,
        "kondisistok": "Stok habis",
        "idkategori": 199036
    },

```

produkBerdiskon.json
```
    {
        "name": "Posca Backpack by Zakwoowstyle",
        "pricebeforediscount": 150000,
        "priceafterdiscount": 50000,
        "discount": 66.66666666666666
    },

```

Kategori.json
```
    {
        "idkategori": 199036,
        "kategori": "Backpack"
    },
```

### Database Structure
Entity Relationship Diagram of Zakwoow Database
![ERD](https://github.com/salimashockbgt/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/design/ERD_of_zakwoow.png)


4. Deadline pengumpulan tugas 1 adalah <span style="color:red">__1 Juli 2022 Pukul 22.40 WIB__</span>

<h3 align="center">
  <br>
  Selamat Mengerjakan!
  <br>
</h3>

<p align="center">
  <i>
  Happiness does not come from doing easy work
  but from the afterglow of satisfaction that
  comes after the achievement of a difficult
  task that demanded our best.<br><br>
  - Theodore Isaac Rubin
  </i>
</p>
<br>
