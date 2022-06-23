import os
import psycopg2
from dotenv import load_dotenv, find_dotenv

def store_cards():
	pass

def store_skills(cur, data):
    sql = "INSERT INTO skills (skill_type, skill_name, level_1_desc, level_10_desc) VALUES (%s, %s, %s, %s)"
    for skill in data:
        cur.execute(sql, (skill['type'], skill['name'], skill['level_1_desc'], skill['level_10_desc']))

def store_data(data):
    try:
        load_dotenv(find_dotenv())
        conn = psycopg2.connect(
            host=os.environ.get("DB_HOST"),
            database=os.environ.get("DB_NAME"),
            user=os.environ.get("DB_USER"),
            password=os.environ.get("DB_PASSWORD")
        )
        cur = conn.cursor()
        store_skills(cur, data)
        conn.commit()
    except (Exception, psycopg2.DatabaseError) as e:
        print(e)
    finally:
        if conn is not None:
            conn.close()
        print('Done storing data.')
    return True