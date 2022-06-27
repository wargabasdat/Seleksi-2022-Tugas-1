# File store_data.py
# Store data to database

import os
import psycopg2
from dotenv import load_dotenv, find_dotenv

def insert_players(cur, data):
    print("Storing players...")

    # Insert players data to database
    for row in data:
        cur.execute("""
            INSERT INTO players (
                rank,
                name,
                title,
                nationality,
                classic,
                rapid,
                blitz
            ) VALUES (%s, %s, %s, %s, %s, %s, %s)
        """, (
            row["Rank"],
            row["Name"],
            row["Title"],
            row["Nationality"],
            row["Classic"],
            row["Rapid"],
            row["Blitz"]
        ))

    print("Players stored to database.")

def insert_games(cur, data):
    print("Storing games...")

    # Insert games data to database
    id = 1
    for row in data:
        cur.execute("SELECT rank FROM players WHERE name = %s", [row["White"]])
        white_rank = cur.fetchone()

        cur.execute("SELECT rank FROM players WHERE name = %s", [row["Black"]])
        black_rank = cur.fetchone()

        # Filter out games with missing players
        if (white_rank and black_rank):
            cur.execute("""
                INSERT INTO games (
                    id,
                    white_rank,
                    black_rank,
                    notation,
                    opening,
                    winner,
                    moves,
                    year
                ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
            """, (
                id,
                white_rank[0],
                black_rank[0],
                row["Notation"],
                row["Opening"],
                row["Winner"],
                row["Moves"],
                row["Year"]
            ))
            id += 1
    
    print("Games stored to database.")

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
            CREATE TABLE IF NOT EXISTS players (
                rank INTEGER PRIMARY KEY,
                name VARCHAR(50) NOT NULL,
                title VARCHAR(3),
                nationality VARCHAR(20),
                classic INTEGER NOT NULL,
                rapid INTEGER NOT NULL,
                blitz INTEGER NOT NULL
            )
        """)

        cur.execute("""
            CREATE TABLE IF NOT EXISTS games (
                id INTEGER PRIMARY KEY,
                white_rank INTEGER NOT NULL,
                black_rank INTEGER NOT NULL,
                notation VARCHAR(100),
                opening VARCHAR(100),
                winner VARCHAR(5) NOT NULL,
                moves INTEGER,
                year INTEGER,
                FOREIGN KEY (white_rank) REFERENCES players (rank),
                FOREIGN KEY (black_rank) REFERENCES players (rank)
            )
        """)

        # Store data
        if (is_players):
            insert_players(cur, data)
        else:
            insert_games(cur, data)
        conn.commit()

    except (Exception, psycopg2.DatabaseError) as error:
        print(error)

    finally:
        if conn is not None:
            conn.close()
