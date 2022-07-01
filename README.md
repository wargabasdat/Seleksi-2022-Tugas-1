<h1 align="center">
  <br>
  Seleksi Warga Basdat 2022
  <br>
</h1>

<h2 align="center">
  <br>
  Tugas 1 : Data Scraping & Data Storing
  <br>
</h2>

<br>

## Deskripsi Data dan DBMS
_Web scraping_ yang dilakukan bertujuan untuk memperoleh data klub sepakbola Eropa yang terdaftar dalam permainan FIFA22. Data yang diambil bersumber dari [sofifa.com](https://sofifa.com/). Data-data yang diambil meliputi statistik, taktik bermain, liga sepakbola, stadium, kapten, dan pelatih tiap klub.

DBMS yang dipilih untuk menyimpan data hasil _scraping_ adalah PostgreSQL. Alasan pemilihan PostgreSQL adalah PostgreSQL merupakan DBMS yang _open source_ dan dapat diandalkan untuk menyimpan data-data yang ada.

## Spesifikasi Program
Program yang dibuat bertujuan untuk memperoleh data klub sepakbola Eropa yang terdaftar dalam permainan FIFA22 dan menyimpannya dalam bentuk JSON.

## Penggunaan Program
1. Pastikan Python sudah ter-_install_. Instalasi Python dapat dilakukan melalui link https://www.python.org/downloads/.
2. Buka folder Data Scraping/src pada terminal.
3. Jalankan perintah berikut untuk melakukan instalasi _package_ yang diperlukan
```
pip install -r requirements.txt
```
4. Jalankan perintah berikut untuk menjalankan program
```
python web_scraping.py
```

## Struktur JSON
```
{
  "clubs": [
    {
      "club_id": ID unik klub,
      "club_name": Nama klub,
      "league_id": ID liga yang diikuti klub,
      "overall": Rating keseluruhan pemain klub,
      "attack": Rating pemain menyerang klub,
      "midfield": Rating pemain gelandang klub,
      "defense": Rating pemain bertahan klub,
      "transfer_budget": Anggaran transfer klub,
      "number_of_players": Jumlah pemain klub,
      "defensive_style_id": ID gaya bertahan klub,
      "defense_width": Lebar bertahan klub,
      "defense_depth": Kedalaman bertahan klub,
      "build_up_play_id": ID gaya membangun serangan klub,
      "chance_creation_id": ID gaya menciptakan peluang klub,
      "offense_width": Lebar menyerang klub,
      "offense_player_in_box": Jumlah pemain dalam kotak penalti ketika menyerang,
      "corner_player_in_box": Jumlah pemain dalam kotak penalti ketika melakukan sepak pojok,
      "free_kick_player_in_box": Jumlah pemain dalam kotak penalti ketika melakukan tendangan bebas,
      "rival_club_id": ID klub rival,
      "club_worth": Nilai klub,
      "average_age": Rata-rata usia pemain klub,
      "captain_id": ID kapten klub,
      "home_stadium_id": ID stadium klub
    }, ...
  ],
  "leagues": [
    {
      "league_id": ID liga,
      "league_name": Nama liga
    }, ...
  ],
  "stadiums": [
    {
      "stadium_id": ID stadium,
      "stadium_name": Nama stadium
    }, ...
  ],
  "captains": [
    {
      "captain_id": ID kapten,
      "captain_name": Nama kapten
    }, ...
  ],
  "coaches": [
    {
      "coach_id": ID pelatih,
      "coach_name": Nama pelatih,
      "birth_date": Tanggal lahir pelatih,
      "club_id": ID klub yang dilatih
    }, ...
  ],
  "defensive_style": [
    {
      "defensive_style_id": ID gaya bertahan,
      "defensive_style_name": Nama gaya bertahan
    }, ...
  ],
  "build_up_play": [
    {
      "build_up_play_id": ID gaya membangun serangan,
      "build_up_play_name": Nama gaya membangun serangan
    }, ...
  ],
  "chance_creation": [
    {
      "chance_creation_id": ID gaya menciptakan peluang,
      "chance_creation_name": Nama gaya menciptakan peluang
    }, ...
  ]
}
```

## Struktur Database
- ER Diagram
![ER Diagram](Data%20Storing/design/ER%20Diagram.png)
- Model Relasional
```
club = (club_id, club_name, overall, attack, midfield, defense, transfer_budget, number_of_players, defense_width, defense_depth, offense_width, offense_player_in_box, corner_player_in_box, free_kick_player_in_box, club_worth, average_age, league_id, home_stadium_id, captain_id, defensive_style_id, build_up_play_id, chance_creation_id, rival_club_id)

league = (league_id, league_name)

stadium = (stadium_id, stadium_name)

captain = (captain_id, captain_name)

coach = (coach_id, coach_name, birth_date, club_id)

defensive_style = (defensive_style_id, defensive_style_name)

build_up_play = (build_up_play_id, build_up_play_name)

chance_creation = (chance_creation_id, chance_creation_name)
```
_Catatan: Atribut ID menjadi primary key tiap tabel_

## Screenshot Program
- Data Scraping

![Functionalities](Data%20Scraping/screenshot/Functionalities.png)

![Running Program](Data%20Scraping/screenshot/Running%20program.png)

- Data Storing (Local)

![Local Club Table](Data%20Storing/screenshot/local%20club%20table.png)

![Local League Table](Data%20Storing/screenshot/local%20league%20table.png)

![Local Stadium Table](Data%20Storing/screenshot/local%20stadium%20table.png)

![Local Captain Table](Data%20Storing/screenshot/local%20captain%20table.png)

![Local Coach Table](Data%20Storing/screenshot/local%20coach%20table.png)

![Local Defensive Style Table](Data%20Storing/screenshot/local%20defensive_style%20table.png)

![Local Build Up Play Table](Data%20Storing/screenshot/local%20build_up_play%20table.png)

![Local Chance Creation Table](Data%20Storing/screenshot/local%20chance_creation%20table.png)

- Data Storing (Cloud)

![Cloud Club Table](Data%20Storing/screenshot/cloud%20club%20table.png)

![Cloud League Table](Data%20Storing/screenshot/cloud%20league%20table.png)

![Cloud Stadium Table](Data%20Storing/screenshot/cloud%20stadium%20table.png)

![Cloud Captain Table](Data%20Storing/screenshot/cloud%20captain%20table.png)

![Cloud Coach Table](Data%20Storing/screenshot/cloud%20coach%20table.png)

![Cloud Defensive Style Table](Data%20Storing/screenshot/cloud%20defensive_style%20table.png)

![Cloud Build Up Play Table](Data%20Storing/screenshot/cloud%20build_up_play%20table.png)

![Cloud Chance Creation Table](Data%20Storing/screenshot/cloud%20chance_creation%20table.png)

## Referensi
- Python (https://docs.python.org/3/)
- bs4 (https://www.crummy.com/software/BeautifulSoup/bs4/doc/)
- requests (https://requests.readthedocs.io/en/latest/)
- re (https://docs.python.org/3/library/re.html)
- json (https://docs.python.org/3/library/json.html)
- datetime (https://docs.python.org/3/library/datetime.html)

## Author
Fernaldy

13520112
