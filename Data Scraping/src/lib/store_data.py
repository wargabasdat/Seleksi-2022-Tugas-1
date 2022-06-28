# File store_data.py
# Store data to database

import os
import psycopg2
from dotenv import load_dotenv, find_dotenv

# Store data to database
def store_data(data, is_players):
    try:
        # Connect to db
        load_dotenv(find_dotenv())
        conn = psycopg2.connect(
            user=os.environ.get("DB_USER"),
            password=os.environ.get("DB_PASSWORD"),
            host=os.environ.get("DB_HOST"),
            port=os.environ.get("DB_PORT"),
            database=os.environ.get("DB_NAME")
        )
        cur = conn.cursor()

        # Create table if not exists
        cur.execute("""
            CREATE TABLE IF NOT EXISTS ratings (
                rank INTEGER PRIMARY KEY,
                classic INTEGER,
                rapid INTEGER,
                blitz INTEGER
            )
        """)

        cur.execute("""
            CREATE TABLE IF NOT EXISTS players (
                id SERIAL PRIMARY KEY,
                name VARCHAR(50) NOT NULL,
                title VARCHAR(3),
                nationality VARCHAR(20),
                rank INTEGER,
                FOREIGN KEY (rank) REFERENCES ratings (rank)
            )
        """)

        cur.execute("""
            CREATE TABLE IF NOT EXISTS games (
                id SERIAL PRIMARY KEY,
                white_id INTEGER NOT NULL,
                black_id INTEGER NOT NULL,
                notation VARCHAR(100),
                opening VARCHAR(255),
                winner VARCHAR(5) NOT NULL,
                moves INTEGER,
                year INTEGER,
                FOREIGN KEY (white_id) REFERENCES players (id),
                FOREIGN KEY (black_id) REFERENCES players (id)
            )
        """)

        # Store data
        if (is_players):
            insert_ratings(cur, data)
            insert_players(cur, data)
        else:
            insert_games(cur, data)

        conn.commit()

    except (Exception, psycopg2.DatabaseError) as error:
        print(error)

    finally:
        if conn is not None:
            conn.close()

# Insert data to ratings table in database
def insert_ratings(cur, data):
    print("Storing ratings...")

    # Insert players data to database
    for row in data:
        cur.execute("""
            INSERT INTO ratings (
                rank,
                classic,
                rapid,
                blitz
            ) VALUES (%s, %s, %s, %s)
        """, (
            row["Rank"],
            row["Rating"]["Classic"],
            row["Rating"]["Rapid"],
            row["Rating"]["Blitz"]
        ))
    
    print("Ratings data stored to database.")

# Insert data to players table in database
def insert_players(cur, data):
    print("Storing players...")

    # Insert players data to database
    for row in data:
        cur.execute("""
            INSERT INTO players (
                name,
                title,
                nationality,
                rank
            ) VALUES (%s, %s, %s, %s)
        """, (
            row["Name"],
            row["Title"],
            row["Nationality"],
            row["Rank"]
        ))

    print("Players data stored to database.")

# Insert data to games table in database
def insert_games(cur, data):
    print("Storing games...")

    # Insert games data to database
    for row in data:
        cur.execute("SELECT rank FROM players WHERE name = %s", [row["White"]])
        white_id = cur.fetchone()

        cur.execute("SELECT rank FROM players WHERE name = %s", [row["Black"]])
        black_id = cur.fetchone()

        # Filter out games with missing players
        if (white_id and black_id):
            cur.execute("""
                INSERT INTO games (
                    white_id,
                    black_id,
                    notation,
                    opening,
                    winner,
                    moves,
                    year
                ) VALUES (%s, %s, %s, %s, %s, %s, %s)
            """, (
                white_id[0],
                black_id[0],
                row["Notation"],
                row["Opening"],
                row["Winner"],
                row["Moves"],
                row["Year"]
            ))
    
    print("Games data stored to database.")
