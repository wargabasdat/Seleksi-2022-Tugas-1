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
Data yang dimasukkan adalah daftar kartu yang terdapat pada permainan seluler [Tears of Themis](https://play.google.com/store/apps/details?id=com.miHoYo.tot.glb). Sumber data diambil dari dari situs [Tears of Themis Wiki](https://tot.wiki). Penulis memilih untuk mengambil data dari website yang diberikan karena penulis suka dengan permainan ini dan penasaran seputar daftar keseluruhan kartu dan skill yang terdapat di masing-masing kartu.

Untuk DBMS, penulis memilih PostgresSQL, dengan alasan utama karena PostgresSQL merupakan RDBMS yang cenderung lebih disukai untuk melakukan *deployment* dengan Heroku, salah satu layanan yang familiar oleh penulis. Selain itu, Heroku juga mendukung addons Postgres dengan plan hobby-dev (free) sehingga penulis dapat memanfaatkan addons ini untuk menyimpan data hasil scraping ke dalam *cloud database*.

# Spesifikasi Program

Program dalam repository ini terbagi menjadi 2 bagian, yaitu program utama untuk scraping dan menyimpan data, serta API untuk mengakses data.

Program utama untuk melakukan Data Scraping dan Data Storing terdapat pada [main.py](/Data%20Scraping/src/main.py) dalam folder Data Scraping, yang terdiri dari beberapa fungsi dalam folder [lib](/Data%20Scraping/src/lib). Dalam program ini, pengguna dapat memilih untuk melakukan scraping cards atau skills, dan menyimpan data baik ke dalam database atau ke dalam file json sesuai pilihan. Untuk melakukan Data Scraping, penulis menggunakan library Beautiful Soup dan request dari urllib. 

Untuk melakukan Data Storing ke file, penulis menggunakan library json untuk menyimpan data hasil scraping ke dalam bentuk JSON. Untuk melakukan Data Storing ke database, penulis menggunakan library dotenv untuk mengambil konfigurasi database dari file `.env`. Karena menggunakan konfigurasi database dari file `.env`, pengguna dapat mengkonfigurasi program untuk menyimpan data ke database local maupun cloud.

API dibuat menggunakan FastAPI. Program utama API ini terdapat pada [main.py](/API/src/main.py). API ini digunakan untuk mengakses data cards dari database (remote/local) dengan konfigurasi environment yang diambil dari file `.env`. Selain itu, API ini juga dilengkapi dengan dokumentasi interaktif dari Swagger UI dan ReDoc sebagai bawaan dari library FastAPI.

API dapat digunakan untuk mengambil data kartu dan skill dari database, baik keseluruhan maupun dengan id tertentu dengan menggunakan endpoint yang sesuai. Selain itu, API juga mendukung beberapa query parameter untuk melakukan pencarian/filter data.

Daftar endpoint yang tersedia:

```
GET  /
GET  /api
GET  /api/cards?name=<str>&character=<str>&attribute=<str>
GET  /api/cards/{id}
GET	 /api/skills?name=<str>
GET	 /api/skills/{id}
```

### `GET /api/cards`

Digunakan untuk mengambil data kartu secara keseluruhan dari database. Parameter yang dapat digunakan untuk melakukan pencarian/filter data adalah 'name', 'character' dan 'attribute'. Parameter 'name' digunakan untuk mencari berdasar nama kartu, 'character' untuk mencari berdasar nama karakter dalam kartu, dan attribute untuk mencari berdasar atribut kartu.

### `GET /api/cards/{id}`

Digunakan untuk mengambil data kartu berdasarkan id dari database.

### `GET /api/skills`

Digunakan untuk mengambil data skill secara keseluruhan dari database. Parameter yang dapat digunakan untuk melakukan pencarian/filter data adalah 'name'. Parameter 'name' digunakan untuk mencari berdasar nama kartu.

### `GET /api/skills/{id}`

Digunakan untuk mengambil data skill berdasarkan id dari database.

# Cara Menggunakan

## Requirements (local)

- Python 3.7+
- BeautifulSoup4
- FastAPI
- PostgresSQL

## Scraping & Storing

Untuk menginstal keseluruhan requirements yang dibutuhkan untuk, dapat menginstal semua paket yang terdapat pada [requirements.txt](API/src/requirements.txt).

```sh
cd "Data Scraping/src"
pip install -r requirements.txt
```

Agar dapat melakukan storing, pengguna perlu mengkonfigurasi program dengan menyalin file `.env.example` ke `.env`, dan mengubah konfigurasi database yang diperlukan.

Setelah semua konfigurasi selesai, pengguna dapat langsung menjalankan [main.py](/Data%20Scraping/src/main.py).

```sh
python main.py
```

## API
API dapat dijalankan secara lokal maupun melalui remote.

## Lokal

Untuk menginstal keseluruhan requirements yang dibutuhkan untuk menjalankan API, dapat dilakukan dengan menginstal semua paket yang terdapat pada [requirements.txt](API/src/requirements.txt).

```
cd API/src
pip install -r requirements.txt
```

Agar API dapat berjalan dengan baik di lokal, pengguna perlu mengkonfigurasi program dengan menyalin file `.env.example` ke `.env`, dan mengubah konfigurasi database yang diperlukan. Setelah itu, pengguna dapat menjalankan uvicorn dalam folder [API/src](/API/src/).

```sh
uvicorn main:app --reload
```

Setelah dijalankan, API dapat diakses melalui [localhost:8000](http://localhost:8000). Selengkapnya mengenai dokumentasi API dan daftar endpoint yang tersedia dapat dilihat di [localhost:8000/docs](http://localhost:8000/docs/) dan [localhost:8000/redoc](http://localhost:8000/redoc/).

## Remote

Remote API telah tersedia dalam [tot-cards.herokuapp.com](https://tot-cards.herokuapp.com/) dan dapat langsung digunakan.

Selengkapnya mengenai dokumentasi API dan daftar endpoint yang tersedia dapat dilihat di [tot-cards.herokuapp.com/docs](https://tot-cards.herokuapp.com/docs/) dan [https://tot-cards.herokuapp.com/redoc](https://tot-cards.herokuapp.com/redoc/).

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

### Local
![](/API/screenshot/API_local_1.png)
![](/API/screenshot/API_local_2.png)
![](/API/screenshot/API_local_3.png)
![](/API/screenshot/API_local_4.png)

### Remote
![](/API/screenshot/API_remote_1.png)
![](/API/screenshot/API_remote_2.png)
![](/API/screenshot/API_remote_3.png)
![](/API/screenshot/API_remote_4.png)

# Reference
- Tears of Themis Wiki, [https://tot.wiki](https://tot.wiki)
- Beautiful Soup 4.9.0 Documentation, [https://www.crummy.com/software/BeautifulSoup/bs4/doc](https://www.crummy.com/software/BeautifulSoup/bs4/doc)
- PostgresSQL 14 Documentation, [https://www.postgresql.org/docs/14](https://www.postgresql.org/docs/14)
- pgAdmin 4 6.9 Documentation, [https://www.pgadmin.org/docs/pgadmin4/development/index.html](https://www.pgadmin.org/docs/pgadmin4/development/index.html)
- Export Postgresql table data using pgAdmin - Stack Overflow [https://stackoverflow.com/a/29246636](https://stackoverflow.com/a/29246636)
- FastAPI Tutorial - User Guide, [https://fastapi.tiangolo.com/tutorial](https://fastapi.tiangolo.com/tutorial)

# Author

Nama: Alifia Rahmah

NIM: 13520122
