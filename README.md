<h1 align="center">
  <br>
  Seleksi Warga Basdat 2022
  <br>
  <br>
</h1>

<h2 align="center">
  <br>
  Tugas 1 : Data Scraping & Data Storing
  <br>
  <br>
</h2>

# Deskripsi Data dan DBMS
Data yang dimasukkan adalah daftar kartu yang terdapat pada permainan seluler [Tears of Themis](https://play.google.com/store/apps/details?id=com.miHoYo.tot.glb). Sumber data diambil dari dari situs [Tears of Themis Wiki](https://tot.wiki). Penulis memilih untuk mengambil data dari website yang diberikan karena penulis suka dengan permainan ini.

Untuk DBMS, penulis memilih PostgresSQL, dengan alasan utama karena PostgresSQL merupakan RDBMS yang cenderung lebih disukai untuk melakukan *deployment* dengan Heroku, salah satu layanan hosting yang familiar oleh penulis dan mendukung addons Postgres dengan plan hobby-dev (free).

# Spesifikasi Program

Program dalam repository ini terbagi menjadi 2 bagian, yaitu program utama untuk scraping dan menyimpan data, serta API untuk mengakses data.

Program utama terdapat pada `Data Scraping/src/main.py`, yang terdiri dari beberapa fungsi dalam folder lib.

API dibuat menggunakan FastAPI.

# Cara Menggunakan

## Requirements

- Python 3.7+
- BeautifulSoup4
- FastAPI
- uvicorn (untuk menjalankan API di local)
- PostgresSQL

Spesifikasi lebih lanjut terdapat pada [`requirements.txt`](/Data%20Scraping/src/api/requirements.txt).

## Scraping & Storing
Untuk melakukan scraping, dapat dengan menjalankan program `main.py`.
```
cd "Data Scraping"/src
py main.py
```

## API
API dapat dijalankan secara lokal maupun melalui remote.

Untuk menjalankan secara lokal, dapat dilakukan dengan menjalankan uvicorn.
```
uvicorn main:app --reload
```

Remote API telah tersedia dalam [https://tot-cards.herokuapp.com/](https://tot-cards.herokuapp.com/)

Selengkapnya mengenai daftar endpoint yang tersedia dapat dilihat di [https://tot-cards.herokuapp.com/docs/](https://tot-cards.herokuapp.com/docs/).

# Struktur JSON

### Cards

```
 {
    "id": ...,
    "name": ...,
    "rarity": ...,
    "character": ...,
    "attribute": ...,
    "max_power": ...,
    "max_influence": ...,
    "max_defense": ..,
    "skills": [
      {
        "type": ...,
        "name": ...
      },
      ...
    ]
}
```

`id`: ID dari kartu

`name`: Nama kartu

`rarity`: Rarity dari kartu (SSR/SR/MR/R)

`character`: Karakter yang terdapat dalam kartu 
(Luke Pearce/Artem Wing/Marius von Hagen/Vyn 
Richter)

`attribute`: Atribut kartu (Intuition/Logic/Empathy)

`max_power`: Max power dari kartu

`max_influence`: Max influence dari kartu

`max_defense`: Max defense dari kartu

`skills`: Daftar skill yang terdapat dalam kartu. Masing-masing skill terdiri dari
- `type`: Tipe skill
- `name`: Nama skill

### Skills
```
{
  "type": ...,
  "name": ...,
  "level_1_desc": ...,
  "level_10_desc": ...
},

```

`type`: Tipe skill

`name`: Nama skill

`level_1_desc`: Deskripsi skill pada level 1

`level_10_desc`: Deskripsi skill pada level 10

# Database Structure

Berikut ERD (Entity Relation Diagram) yang dibuat untuk membuat database.

![ERD](/Data%20Storing/design/ERD.png)

# Screenshot program

## Data Scraping

![Scraping Cards](/Data%20Scraping/screenshot/Scraping_1.png)
![Scraping Skills](/Data%20Scraping/screenshot/Scraping_2.png)

## Data Storing
### Cards
![Storing Cards](/Data%20Storing/screenshot/Storing_1.png)
### Card Skills
![Storing Card Skills](/Data%20Storing/screenshot/Storing_2.png)
### Skills
![Storing Skills](/Data%20Storing/screenshot/Storing_3.png)

## API
### Remote API
![](/Data%20Storing/screenshot/API_remote_1.png)
![](/Data%20Storing/screenshot/API_remote_2.png)
![](/Data%20Storing/screenshot/API_remote_3.png)
![](/Data%20Storing/screenshot/API_remote_4.png)

# Reference
- Tears of Themis Wiki, [https://tot.wiki](https://tot.wiki)
- Beautiful Soup 4.9.0 Documentation, [https://www.crummy.com/software/BeautifulSoup/bs4/doc](https://www.crummy.com/software/BeautifulSoup/bs4/doc)
- PostgresSQL 14 Documentation, [https://www.postgresql.org/docs/14](https://www.postgresql.org/docs/14)
- FastAPI Tutorial - User Guide, [https://fastapi.tiangolo.com/tutorial](https://fastapi.tiangolo.com/tutorial)

# Author

Nama: Alifia Rahmah

NIM: 13520122
