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
	# TODO get parameters from request, make case for searching by name, etc.
	# TODO make response in JSON format
	# connect to db
	conn = get_db()
	cur = conn.cursor()
	# get all cards
	cur.execute("SELECT * FROM cards")
	cards = cur.fetchall()
	# close connection
	cur.close()
	conn.close()
	# return response
	return cards

@app.get("/api/cards/{id}")
def read_card(id: int):
	# TODO make response in JSON format
	# connect to db
	conn = get_db()
	cur = conn.cursor()
	# get card by id
	cur.execute("SELECT * FROM cards WHERE card_id = %s", (id,))
	card = cur.fetchone()
	# close db connection
	cur.close()
	conn.close()
	# return JSON response
	return card

@app.get("/api/skills")
def read_skills():
	# TODO get parameters from request, make case for searching by name, etc.
	# connect to db
	conn = get_db()
	cur = conn.cursor()
	# get all skills
	cur.execute("SELECT * FROM skills")
	skills = cur.fetchall()
	# make response in JSON format
	skillist = []
	for skill in skills:
		skillist.append({
			"id": skill[0], 
			"type": skill[1],
			"name": skill[2],
			"lvl_1_desc": skill[3],
			"lvl_10_desc": skill[4]
		})
	# close connection
	cur.close()
	conn.close()
	# return JSON response
	return skillist

@app.get("/api/skills/{id}")
def read_skill(id: int):
	# connect to db
	conn = get_db()
	cur = conn.cursor()
	# get skill from db
	cur.execute("SELECT * FROM skills WHERE skill_id = %s", (id,))
	skill = cur.fetchone()
	# make response in JSON format
	skill = {
		"id": skill[0],
		"type": skill[1],
		"name": skill[2],
		"lvl_1_desc": skill[3],
		"lvl_10_desc": skill[4]
	}
	# close connection
	cur.close()
	conn.close()
	# return JSON response
	return skill