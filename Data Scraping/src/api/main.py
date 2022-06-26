from fastapi import FastAPI
from psycopg2 import connect
from dotenv import load_dotenv, find_dotenv
from pathlib import Path
import os

def get_db():
	load_dotenv(find_dotenv())
	conn = connect(
		host=os.environ.get("DB_HOST"),
		user=os.environ.get("DB_USER"),
		password=os.environ.get("DB_PASSWORD"),
		dbname=os.environ.get("DB_NAME")
	)
	return conn

app = FastAPI()

@app.get("/")
def get_root():
	return {"message": "Hello World"}

@app.get("/api")
def read_root():
	return {"message": "Hello World"}

@app.get("/api/cards")
def read_cards():
	conn = get_db()
	cur = conn.cursor()
	cur.execute("SELECT * FROM cards")
	cards = cur.fetchall()
	cur.close()
	conn.close()
	return cards

@app.get("/api/cards/{id}")
def read_card(id: int):
	conn = get_db()
	cur = conn.cursor()
	cur.execute("SELECT * FROM cards WHERE card_id = %s", (id,))
	card = cur.fetchone()
	cur.close()
	conn.close()
	return card

@app.get("/api/skills")
def read_skills():
	conn = get_db()
	cur = conn.cursor()
	cur.execute("SELECT * FROM skills")
	skills = cur.fetchall()
	cur.close()
	conn.close()
	return skills

@app.get("/api/skills/{id}")
def read_skill(id: int):
	conn = get_db()
	cur = conn.cursor()
	cur.execute("SELECT * FROM skills WHERE skill_id = %s", (id,))
	skill = cur.fetchone()
	cur.close()
	conn.close()
	return skill