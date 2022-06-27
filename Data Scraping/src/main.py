from bs4 import BeautifulSoup
import requests
import re

url = "https://bloodnbone.com/product-category/womens/dresses/"

def scrape(url):
  products = []
  pages = getNextPage(url)
  products = getProducts(url, products)
  for page in pages:
    products = getProducts(page, products)
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
  for product in products:
    url = "https://bloodnbone.com/product/" + product
    page = requests.get(url)
    soup = BeautifulSoup(page.text, 'html.parser')

    # title
    title = soup.find("meta", {"property": "og:title"}).get('content')

    # description
    desc = soup.find("meta", {"property": "og:description"}).get('content')

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

    data = {
      "title": title,
      "desc": desc,
      "colour": colour,
      "size": size,
      "weight": weight,
      "dimensions": dimensions
    }
    product_data.append(data)

  return product_data

print(scrape(url))