from bs4 import BeautifulSoup
import requests
import re
import json

url = "https://bloodnbone.com/product-category/womens/dresses/"

def scrape(url):
  products = []
  pages = getNextPage(url)
  products = getProducts(url, products)
  for i in range(len(pages)):
    print(f"Scraping page {i+1} of {len(pages)} pages")
    products = getProducts(pages[i], products)
  product_data = getDataProducts(products)
  return product_data

def getNextPage(url):
  page = requests.get(url)
  soup = BeautifulSoup(page.text, 'html.parser')
  page_url = soup.find_all("a", {"class": "page-numbers"})
  for i in range(len(page_url)):
    page_url[i] = page_url[i].get('href')
  page_url = list(set(page_url))
  return page_url

def getProducts(url, products):
  page = requests.get(url)
  soup = BeautifulSoup(page.text, 'html.parser')

  products_script = str(soup.find("script", {"type": "text/template"}))
  products_url = re.findall(r'\"https:\\/\\/bloodnbone.com\\/product\\/[\w-]*\\/\\"', products_script)
  for product_url in products_url:
    product = re.sub(r'\"https:\\/\\/bloodnbone.com\\/product\\/', '', product_url)
    product = re.sub(r'\\/\\"', '', product)
    if product not in products:
      products.append(product)

  return products

def getDataProducts(products):
  product_data = []
  for i in range(len(products)):
    print(f"Scraping product {i+1} of {len(products)} products")
    url = "https://bloodnbone.com/product/" + products[i]
    page = requests.get(url)
    soup = BeautifulSoup(page.text, 'html.parser')

    # title
    title = soup.find("meta", {"property": "og:title"}).get('content')

    # description
    desc = soup.find("meta", {"property": "og:description"}).get('content')

    # price
    price = soup.find("span", {"class": "woocommerce-Price-amount"}).get_text()
    price = int(price.replace("IDR", "").replace(",", "").strip())

    # colour
    colour = soup.find("ul", {"name": "attribute_colour"}).findAll('a')
    for i in range(len(colour)):
      colour[i] = colour[i].get('data-value')

    # size
    size = soup.find("ul", {"name": "attribute_size"}).findAll('a')
    for i in range(len(size)):
      size[i] = size[i].get('data-value')

    # weight
    weight = soup.find("tr", {"class": "woocommerce-product-attributes-item woocommerce-product-attributes-item--weight"}).find("td").get_text()

    # dimensions
    dimensions = soup.find("tr", {"class": "woocommerce-product-attributes-item woocommerce-product-attributes-item--dimensions"}).find("td").get_text()
    dimensions = dimensions.replace('×', 'x')

    data = {
      "title": title,
      "desc": desc,
      "price": price,
      "colour": colour,
      "size": size,
      "weight": weight,
      "dimensions": dimensions
    }
    product_data.append(data)

  return product_data

def loadJSON(product_data):
  with open('../data/WomenDress.json', 'w') as file:
    json.dump(product_data, file, indent=4)
  print("JSON file created")

loadJSON(scrape(url))