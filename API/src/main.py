from fastapi import FastAPI
from dotenv import load_dotenv, find_dotenv
import psycopg2
import os

def get_db():
    # Connect to db
    load_dotenv(find_dotenv())
    conn = psycopg2.connect(
        user=os.environ.get("DB_USER"),
        password=os.environ.get("DB_PASSWORD"),
        host=os.environ.get("DB_HOST"),
        port=os.environ.get("DB_PORT"),
        database=os.environ.get("DB_NAME")
    )
    return conn

app = FastAPI()

@app.get("/")
def root():
    return {"message": "200 OK"}

@app.get("/api")
def api():
    return {"message": "200 OK"}

@app.get("/api/players")
def get_players(name: str = None, nationality: str = None):
    # Connect to db
    conn = get_db()
    cur = conn.cursor()

    # Get all players data
    query = ("SELECT * FROM players")
    if (name and nationality):
        query += " WHERE name ILIKE '%" + name + "%' AND nationality ILIKE '%" + nationality + "%'"
    elif (name):
        query += " WHERE name ILIKE '%" + name + "%'"
    elif (nationality):
        query += " WHERE nationality ILIKE '%" + nationality + "%'"
    cur.execute(query)
    players = cur.fetchall()

    # Close connection
    cur.close()
    conn.close()
    return players

@app.get("/api/players/{id}")
def get_player(id: int):
    # Connect to db
    conn = get_db()
    cur = conn.cursor()

    # Get player data by id
    cur.execute("SELECT * FROM players WHERE id = %s", (id,))
    player = cur.fetchone()

    # Close connection
    cur.close()
    conn.close()
    return player

@app.get("/api/ratings")
def get_ratings():
    # Connect to db
    conn = get_db()
    cur = conn.cursor()

    # Get all ratings data
    cur.execute("SELECT * FROM ratings")
    ratings = cur.fetchall()

    # Close connection
    cur.close()
    conn.close()
    return ratings

@app.get("/api/ratings/{rank}")
def get_rating(rank: int):
    # Connect to db
    conn = get_db()
    cur = conn.cursor()

    # Get rating data by rank
    cur.execute("SELECT * FROM ratings WHERE rank = %s", (rank,))
    rating = cur.fetchone()

    # Close connection
    cur.close()
    conn.close()
    return rating

@app.get("/api/games")
def get_games(winner: str = None, moves: int = None, year: int = None):
    # Connect to db
    conn = get_db()
    cur = conn.cursor()

    # Get all games data
    query = "SELECT * FROM games"
    if (winner and moves and year):
        query += " WHERE winner = '" + winner + "' AND moves = " + str(moves) + " AND year = " + str(year)
    elif (winner and moves):
        query += " WHERE winner = '" + winner + "' AND moves = " + str(moves)
    elif (moves and year):
        query += " WHERE moves = " + str(moves) + " AND year = " + str(year)
    elif (winner):
        query += " WHERE winner = '" + winner + "'"
    elif (moves):
        query += " WHERE moves = " + str(moves)
    elif (year):
        query += " WHERE year = " + str(year)
    cur.execute(query)
    games = cur.fetchall()

    # Close connection
    cur.close()
    conn.close()
    return games
