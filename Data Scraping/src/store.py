import os
import json
import psycopg2
import configparser

def createDbConfig(user, password, host, port, database, sslmode):
    config = configparser.ConfigParser()
    config.add_section('postgresql')
    config.set('postgresql', 'user', user)
    config.set('postgresql', 'password', password)
    config.set('postgresql', 'host', host)
    config.set('postgresql', 'port', port)
    config.set('postgresql', 'database', database)
    config.set('postgresql', 'sslmode', sslmode)

    currentDir = os.path.dirname(os.path.realpath(__file__))
    try:
        with open(currentDir + 'config.ini', 'w') as file:
            config.write(file)
        print("Successfully created config.ini")
    except:
        print("Error while creating config.ini")
        quit()

def readDbConfig():
    config = configparser.ConfigParser()

    currentDir =  os.path.dirname(os.path.realpath(__file__))
    try:
        config.read(currentDir + "//config.ini") 
        dbConfig = config["postgresql"]
        return dbConfig
    except:
        print("Error while opening config.ini")
        quit()
    
def loadJson(filename):
    if (os.path.basename(os.path.normpath(os.getcwd())) == 'src'):
        os.chdir("..")
    currentDir = os.getcwd() 
    dir = currentDir + "//data//" 
    try:
        with open(dir + filename, 'r+', encoding='utf8') as file:
            data = json.load(file)
            return data
    except:
        print(f"Error while opening {filename}")
        quit()

print("1. Create new config.ini file\n2. Insert JSON data to the database")
while True:
    try:
        option = int(input("Choose option (1 or 2): "))
        if (option != 1 and option != 2):
            print("Please enter 1 or 2!")
        else:
            break
    except:
        print("Please enter integer only!")
        quit()

if (option == 1):
    user = input("user: ")
    password = input("password: ")
    host = input("host: ")
    port = input("port: ")
    database = input("database: ")
    sslmode = input("sslmode: ")
    createDbConfig(user, password, host, port, database, sslmode)
else:
    teamsData = loadJson('teams.json')
    playersData = loadJson('players.json')
    dbConfig = readDbConfig()

    con = None
    try:
        con = psycopg2.connect( # connect to the heroku database
            user=dbConfig["user"],
            password=dbConfig["password"],
            host=dbConfig["host"],
            port=dbConfig["port"],
            database=dbConfig["database"], 
            sslmode=dbConfig["sslmode"]
        )

        cur = con.cursor()

        # drop the tables if they exists
        cur.execute(''' 
            DROP TABLE IF EXISTS TeamStats;
            DROP TABLE IF EXISTS PlayerStats;
            DROP TABLE IF EXISTS Player;
            DROP TABLE IF EXISTS Team;
        ''')
        con.commit()

        # create the tables
        cur.execute('''
            CREATE TABLE Team(
                team_id SERIAL PRIMARY KEY,
                name VARCHAR NOT NULL,
                country VARCHAR NOT NULL,
                rank INT CHECK (rank > 0),
                coach VARCHAR);
            CREATE TABLE Player(
                player_id SERIAL PRIMARY KEY,
                nickname VARCHAR NOT NULL,
                realname VARCHAR NOT NULL,
                country VARCHAR NOT NULL,
                age INT NOT NULL CHECK (age > 0),
                team_id INT NOT NULL,
                CONSTRAINT fk_player_team 
                FOREIGN KEY (team_id) REFERENCES 
                Team(team_id)
            );
            CREATE TABLE TeamStats(
                teamstats_id SERIAL PRIMARY KEY,
                win_count INT NOT NULL CHECK (win_count >= 0),
                draw_count INT NOT NULL CHECK (draw_count >= 0),
                lose_count INT NOT NULL CHECK (lose_count >= 0),
                kill_count INT NOT NULL CHECK (kill_count >= 0),
                death_count INT NOT NULL CHECK (death_count >= 0),
                kd_ratio NUMERIC(3,2) NOT NULL CHECK (kd_ratio >= 0),
                team_id INT NOT NULL,
                CONSTRAINT fk_teamstats_team
                FOREIGN KEY (team_id) REFERENCES 
                Team(team_id)
            );
            CREATE TABLE PlayerStats(
                playerstats_id SERIAL PRIMARY KEY,
                rating NUMERIC(3,2) NOT NULL CHECK (rating >= 0),
                dpr NUMERIC(3,2) NOT NULL CHECK (dpr >= 0 AND dpr <= 1),
                kast NUMERIC(4,3) NOT NULL CHECK (kast >= 0 AND kast <= 1),
                impact NUMERIC(3,2) NOT NULL CHECK (impact >= 0),
                adr NUMERIC(3,1) NOT NULL CHECK (adr >= 0),
                kpr NUMERIC(3,2) NOT NULL CHECK (kpr >= 0),
                kill_count INT NOT NULL CHECK (kill_count >= 0),
                hs_percentage NUMERIC(4,3) NOT NULL CHECK (hs_percentage >= 0 AND hs_percentage <= 1),
                death_count INT NOT NULL CHECK (death_count >= 0),
                kd_ratio NUMERIC(3,2) NOT NULL CHECK (kd_ratio >= 0),
                map_count INT NOT NULL CHECK (map_count >= 0),
                player_id INT NOT NULL,
                CONSTRAINT fk_playerstats_player
                FOREIGN KEY (player_id) REFERENCES 
                Player(player_id)
            );
        ''')
        con.commit()

        for data in teamsData["teams"]:
            # insert team main data into the Team table
            cur.execute('''INSERT INTO Team(name, country, rank, coach) VALUES(%s, %s, %s, %s);''', 
                (data["name"], data["country"], data["rank"], data["coach"],))
            con.commit()
            
            # get team id
            cur.execute("SELECT team_id FROM Team WHERE name = %s", (data["name"],)) # get the team_id as FK
            team_id = cur.fetchone()[0]

            # insert team stats data into the TeamStats table
            cur.execute('''
                INSERT INTO TeamStats(win_count, draw_count, lose_count, 
                kill_count, death_count, kd_ratio, team_id)
                VALUES (%s, %s, %s, %s, %s, %s, %s);
            ''', (data["wins"], data["draws"], data["losses"], data["kills"], data["deaths"], data["kdRatio"], team_id,))
            con.commit()
            
        for data in playersData["players"]: 
            # get player's team id
            cur.execute("SELECT team_id FROM Team WHERE name = %s", (data["team"],))
            team_id = cur.fetchone()[0]

            # insert player main data into the Player table
            cur.execute('''INSERT INTO Player(nickname, realname, country, age, team_id) VALUES(%s, %s, %s, %s, %s);''', 
                (data["nickname"], data["realname"], data["country"], data["age"], team_id,))
            con.commit()

            # get player id
            cur.execute("SELECT player_id FROM Player WHERE nickname = %s AND realname = %s", 
                (data["nickname"], data["realname"],))
            player_id = cur.fetchone()[0]

            # insert player stats into the PlayerStats table
            cur.execute('''
                INSERT INTO PlayerStats(rating, dpr, kast, impact, adr, kpr, kill_count, 
                hs_percentage, death_count, kd_ratio, map_count, player_id) 
                VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);
                ''',  (data["rating"], data["dpr"], data["kast"], data["impact"], data["adr"], 
                data["kpr"], data["kills"], data["hsPercentage"], data["deaths"], data["kdRatio"], 
                data["mapsPlayed"], player_id,))
            con.commit()

    except Exception as error:
        print('Cause: {}'.format(error))
    finally:
        # close the communication with the database server by calling the close()
        if con is not None:
            con.close()
            print('Database connection closed.')