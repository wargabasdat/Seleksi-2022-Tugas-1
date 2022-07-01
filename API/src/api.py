from psycopg2 import connect
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class Product(BaseModel):
    name : str
    category : str
    brand : str
    price : int
    rating : float
    total_reviews : int
    recom_percentage : int
    image_url : str
    brand_url : str

# connect to the PostgreSQL server
def connectToDB():
    conn = connect (
        host = "localhost",
        port = "5432",
        dbname = "femaledaily",
        user = "postgres",
        password = "Qazplm123",
    )
    return conn

@app.get("/")
def home():
    return "200 OK"

# retrieve 
# all products
@app.get("/products/")
def get_all_products():
    conn = connectToDB()
    cur = conn.cursor()

    cur.execute("SELECT * FROM femaledailyproducts")
    product = cur.fetchall()

    cur.close()
    conn.close()
    return product

# retrieve products data based on id
@app.get("/products/{product_id}")
def get_product_id(product_id:int):
    conn = connectToDB()
    cur = conn.cursor()
    
    cur.execute("SELECT * FROM femaledailyproducts where id = %s", (product_id,))
    product = cur.fetchone()

    cur.close()
    conn.close()
    return product

# retireve products data based on brand, category, or both
@app.get("/products")
def get_product(brand: str = None, category: str = None):
    conn = connectToDB()
    cur = conn.cursor()
    
    if(brand and category):
        query = "SELECT * FROM femaledailyproducts WHERE brand ILIKE '%" + brand + "%' AND category ILIKE '%" + category + "%'"
    elif(brand):
        query = "SELECT * FROM femaledailyproducts WHERE brand ILIKE '%" + brand + "%'"
    elif(category):
        query = "SELECT * FROM femaledailyproducts WHERE category ILIKE '%" + category + "%'"

    cur.execute(query)
    product = cur.fetchall()

    cur.close()
    conn.close()
    return product