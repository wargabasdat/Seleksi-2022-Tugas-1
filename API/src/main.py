from fastapi import FastAPI
from psycopg2 import connect
from dotenv import load_dotenv, find_dotenv
import os

def get_db():
	load_dotenv(find_dotenv())
	conn = connect(os.environ.get("DATABASE_URL"))
	return conn

app = FastAPI()

@app.get("/")
def read_root():
	return "200 OK"

@app.get("/api")
def read_api():
	return "200 OK"

@app.get("/api/cards")
def read_cards(name: str | None = None, character: str | None = None, attribute: str | None = None):
	# connect to db
	conn = get_db()
	cur = conn.cursor()
	# get all cards
	sql = "SELECT * FROM cards"
	if name or character or attribute:
		# search for cards with given name, character, or attribute
		sql += " WHERE"
		if name:
			sql += " name ILIKE '%" + name + "%'"
		if name and (character or attribute):
			sql += " AND"
		if character:
			sql += " card_character ILIKE '%" + character + "%'"
		if character and attribute:
			sql += " AND"
		if attribute:
			sql += " card_attribute ILIKE '%" + attribute + "%'"
	cur.execute(sql)
	cards = cur.fetchall()
	# make JSON response
	cardlist = []
	for card in cards:
		card = {
			"id": card[0],
			"name": card[1],
			"rarity": card[2],
			"character": card[3],
			"attribute": card[4],
			"max_power": card[5],
			"max_influence": card[6],
			"max_defense": card[7],
		}
		# search skills of the card
		cur.execute("""
			SELECT skill_type, skill_name 
			FROM skills 
			WHERE skill_id IN (
				SELECT skill_id 
				FROM card_skills 
				WHERE card_id = %s
			)""", 
			(card["id"],)
		)
		skills = cur.fetchall()
		# add skills to card
		card["skills"] = []
		for skill in skills:
			card["skills"].append({
				"type": skill[0],
				"name": skill[1]
			})
		cardlist.append(card)
	# close connection
	cur.close()
	conn.close()
	# return response
	return cardlist

@app.get("/api/cards/{id}")
def read_card(id: int):
	# connect to db
	conn = get_db()
	cur = conn.cursor()
	# get card by id
	cur.execute("SELECT * FROM cards WHERE card_id = %s", (id,))
	card = cur.fetchone()
	# make response in JSON format
	card = {
		"id": card[0],
		"name": card[1],
		"rarity": card[2],
		"character": card[3],
		"attribute": card[4],
		"max_power": card[5],
		"max_influence": card[6],
		"max_defense": card[7],
	}
	cur.execute("""
		SELECT skill_type, skill_name 
		FROM skills 
		WHERE skill_id IN (
			SELECT skill_id 
			FROM card_skills 
			WHERE card_id = %s
		)""", 
		(card["id"],)
	)
	skills = cur.fetchall()
	# add skills to card
	card["skills"] = []
	for skill in skills:
		card["skills"].append({
			"type": skill[0],
			"name": skill[1]
		})
	# close db connection
	cur.close()
	conn.close()
	# return JSON response
	return card

@app.get("/api/skills")
def read_skills(name: str | None = None): # optional search query
	# connect to db
	conn = get_db()
	cur = conn.cursor()
	# get all skills
	sql = "SELECT * FROM skills"
	if name:
		sql += " WHERE skill_name ILIKE '%{}%'".format(name)
	cur.execute(sql)
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