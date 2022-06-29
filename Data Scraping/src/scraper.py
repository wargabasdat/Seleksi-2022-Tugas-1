import requests
from bs4 import BeautifulSoup
import json

# base url of the website
baseurl = 'https://reviews.femaledaily.com'

# product category
moisturizer_type = ['face-mist','day-cream']
treatment_type = ['acne-treatment', 'serum-essence-23', 'peeling-50']
mask_type = ['mask-sheet', 'sleeping-mask','nose-pack']
cleanser_type = ['scrub-exfoliator','toner']

# function to get list of product links
def getProductLinks():
    product_links = []

    # get moisturizer product links
    print('Moisturizer Products')
    for type in moisturizer_type:
        print('> ', type)
        page = 0
        for pages in range(1,4):
            page += 1
            print('Scraping page :', page)

            url = 'https://reviews.femaledaily.com/products/moisturizer/{}?brand=&order=popular&page='.format(type)

            req = requests.get(url+str(pages))
            soup = BeautifulSoup(req.text, 'html.parser')
            products_list = soup.findAll('div','jsx-2856971448 product-item')

            for product in products_list:
                link = product.find('a', href = True)
                product_links.append(baseurl + link['href'])
    
    # get treatment product links
    print(' ')
    print('Treatment Products')
    for type in treatment_type:
        print('> ', type)
        page = 0
        for pages in range(1,4):
            page += 1
            print('Scraping page :', page)

            url = 'https://reviews.femaledaily.com/products/treatment/{}?brand=&order=popular&page='.format(type)

            req = requests.get(url+str(pages))
            soup = BeautifulSoup(req.text, 'html.parser')
            products_list = soup.findAll('div','jsx-2856971448 product-item')

            for product in products_list:
                link = product.find('a', href = True)
                product_links.append(baseurl + link['href'])

    # get mask product links
    print(' ')
    print('Mask Products')
    for type in mask_type:
        print('> ', type)
        page = 0
        for pages in range(1,4):
            page += 1
            print('Scraping page :', page)

            url = 'https://reviews.femaledaily.com/products/mask/{}?brand=&order=popular&page='.format(type)

            req = requests.get(url+str(pages))
            soup = BeautifulSoup(req.text, 'html.parser')
            products_list = soup.findAll('div','jsx-2856971448 product-item')

            for product in products_list:
                link = product.find('a', href = True)
                product_links.append(baseurl + link['href'])

    # get cleanser product links
    print(' ')
    print('Cleanser Products')
    for type in cleanser_type:
        print('> ', type)
        page = 0
        for pages in range(1,4):
            page += 1
            print('Scraping page :', page)

            url = 'https://reviews.femaledaily.com/products/cleanser/{}?brand=&order=popular&page='.format(type)

            req = requests.get(url+str(pages))
            soup = BeautifulSoup(req.text, 'html.parser')
            products_list = soup.findAll('div','jsx-2856971448 product-item')

            for product in products_list:
                link = product.find('a', href = True)
                product_links.append(baseurl + link['href'])

    return product_links

# function to get data of each product
def getProductData():
    product_data = []
    product_links = getProductLinks()
    for link in product_links:
        r = requests.get(link)
        soup = BeautifulSoup(r.text, 'html.parser')

        # product name
        try: 
            name = soup.find('h1','jsx-2311584302 jsx-212545058 product-name').text
        except:
            name = '-'

        # product category 
        category = soup.find('li','jsx-1858436673 breadcrumb-section').find('a', 'jsx-1858436673 breadcrumb-section-text').text

        # product brand
        brand = soup.find('h2', 'jsx-2311584302 jsx-212545058 product-brand').text

        # brand url
        brand_url = baseurl + (soup.find('div', 'jsx-2311584302 jsx-212545058').find('a', href = True))['href']

        # product price
        try: 
            price = int((soup.find('p', 'jsx-2311584302 jsx-212545058 product-price').text.split(' ')[1]).replace('.',''))
        except: 
            price = 0

        # product rating
        rating = float(soup.find('p', 'jsx-2311584302 jsx-212545058').text)

        # number of reviews
        reviews = soup.findAll('p', 'jsx-2311584302 jsx-212545058 black')
        total_reviews = int((reviews[0].text.split(' '))[0])

        # percentage of users that recommend this product
        recom = reviews[1].text.split(' ')
        recom_percentage = int((recom[0].split('%'))[0])

        # product image url
        image_url = 'https:'+soup.find('div', 'jsx-2311584302 jsx-212545058 image-wrapper').find('img')['src']

        # store product information
        product = {
            "name" : name,
            "category" : category,
            "brand" : brand,
            "price" : price,
            "rating" : rating,
            "total_reviews" : total_reviews,
            "recom_percentage" : recom_percentage,
            "image_url" : image_url,
            "brand_url" : brand_url
        }
        product_data.append(product)
    
    return product_data

# write product data as JSON file
def writeToJSON():
    products = getProductData()
    with open('../data/femaledailydata.json', 'w', encoding='utf-8') as write_file:
        json.dump(products, write_file, indent=3, ensure_ascii=False)

writeToJSON()
