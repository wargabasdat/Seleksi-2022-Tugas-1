import os
import psycopg2
from dotenv import load_dotenv, find_dotenv

def store_cards(cur, data):
    print("Storing cards...")
    
    for card in data:
        # store card basic data
        sql = """
            INSERT INTO cards (
                card_name,
                card_rarity,
                card_character,
                card_attribute,
                max_power,
                max_influence,
                max_defense
            ) VALUES (%s, %s, %s, %s, %s, %s, %s)
        """
        cur.execute(sql, (
            card['name'], 
            card['rarity'], 
            card['character'], 
            card['attribute'], 
            card['max_power'], 
            card['max_influence'], 
            card['max_defense'])
        )
        # get that card's id
        cur.execute("SELECT card_id FROM cards WHERE card_name = %s", (card['name']))
        card_id = cur.fetchone()[0]

        # find skill id of every skills in card
        # TODO: revamp scrape_card
        # for skill in card['skills']:
        #     cur.execute("""
        #         SELECT skill_id FROM skills WHERE skill_name = %s AND skill_type = %s
        #     """, (...)) # gatau
        #     skill_id = cur.fetchone()[0]
        #     # store card_skill relation
        #     sql = """
        #         INSERT INTO card_skills (
        #             card_id,
        #             skill_id
        #         ) VALUES (%s, %s)
        #     """
        #     cur.execute(sql, (card_id, skill_id))


        # for skill in card['skills']:
            

    print("Cards stored to database.")

def store_skills(cur, data):
    print("Storing skills...")

    sql = """
        INSERT INTO skills (
            skill_type, 
            skill_name, 
            level_1_desc, 
            level_10_desc
        ) VALUES (%s, %s, %s, %s)
    """
    for skill in data:
        cur.execute(sql, (skill['type'], skill['name'], skill['level_1_desc'], skill['level_10_desc']))

    print("Skills stored to database.")

def store_data(data, is_card):
    try:
        # connect to db
        load_dotenv(find_dotenv())
        conn = psycopg2.connect(
            host=os.environ.get("DB_HOST"),
            database=os.environ.get("DB_NAME"),
            user=os.environ.get("DB_USER"),
            password=os.environ.get("DB_PASSWORD")
        )
        cur = conn.cursor()

        # create table if not exists
        cur.execute("""
            CREATE TABLE IF NOT EXISTS cards (
                card_id SERIAL PRIMARY KEY, 
                card_name VARCHAR(50), 
                card_rarity VARCHAR(3),
                card_character VARCHAR(50),
                card_attribute VARCHAR(10),
                max_power INTEGER,
                max_influence INTEGER,
                max_defense INTEGER
            )
        """)
        cur.execute("""
            CREATE TABLE IF NOT EXISTS card_skills (
                card_id INT, 
                skill_id INT
            )
        """)
        cur.execute("""
            CREATE TABLE IF NOT EXISTS skills (
                skill_id SERIAL PRIMARY KEY, 
                skill_type VARCHAR(50), 
                skill_name VARCHAR(50), 
                level_1_desc VARCHAR(255), 
                level_10_desc VARCHAR(255)
            )
        """)

        # store data
        if is_card:
            store_cards(cur, data)
        else:
            store_skills(cur, data)
        conn.commit()

    except (Exception, psycopg2.DatabaseError) as e:
        print(e)

    finally:
        if conn is not None:
            conn.close()
    return True