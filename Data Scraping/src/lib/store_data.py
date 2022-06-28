import os
import psycopg2
from dotenv import load_dotenv, find_dotenv

def store_cards(cur, data):
    print("Storing cards...")
    
    card_id = 1
    for card in data:
        # store card basic data
        sql = """
            INSERT INTO cards (
                card_id,
                card_name,
                card_rarity,
                card_character,
                card_attribute,
                max_power,
                max_influence,
                max_defense
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        cur.execute(sql, (
            card_id,
            card['name'], 
            card['rarity'], 
            card['character'], 
            card['attribute'], 
            card['max_power'], 
            card['max_influence'], 
            card['max_defense']
        ))

        # find skill id of every skills in card
        for skill in card['skills']:
            cur.execute("""
                SELECT skill_id FROM skills WHERE skill_name = %s AND skill_type = %s
            """, (skill['name'], skill['type']))
            skill_id = cur.fetchone()
            # store card_skill relation
            sql = """
                INSERT INTO card_skills (
                    card_id,
                    skill_id
                ) VALUES (%s, %s)
            """
            cur.execute(sql, (card_id, skill_id))

        # increment card_id
        card_id += 1
            

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
            CREATE TABLE IF NOT EXISTS skills (
                skill_id SERIAL PRIMARY KEY, 
                skill_type VARCHAR(50), 
                skill_name VARCHAR(50), 
                level_1_desc VARCHAR(255), 
                level_10_desc VARCHAR(255)
            )
        """)
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
                card_id INTEGER, 
                skill_id INTEGER,
                CONSTRAINT "FK_card_skills_cards" 
                    FOREIGN KEY (card_id) 
                        REFERENCES public.cards(card_id),
                CONSTRAINT "FK_card_skills_skills" 
                    FOREIGN KEY (skill_id) 
                        REFERENCES public.skills(skill_id)
            )
        """)

        # store data
        if is_card:
            store_cards(cur, data)
        else:
            store_skills(cur, data)
        conn.commit()

    except (Exception, psycopg2.DatabaseError) as error:
        print(error)

    finally:
        if conn is not None:
            conn.close()
    return True