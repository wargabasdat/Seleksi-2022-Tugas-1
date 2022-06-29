<h1 align="center">
  <br>
  Scraping CS:GO Teams and Players
  <br>
  <br>
</h1>

<h2 align="center">
  <br>
  Tugas 1 Seleksi Calon Warga Basdat 2022
  <br>
  <br>
</h2>

## Daftar Isi
* [Deskripsi Data dan DBMS](#deskripsi-data-dan-dbms)
* [Spesifikasi Program](#spesifikasi-program)
* [Cara Menggunakan](#cara-menggunakan)
* [Struktur JSON](#struktur-json)
* [Struktur Basis Data](#struktur-basis-data)
* [Screenshot](#screenshot)
* [Referensi](#referensi)
* [Penulis](#penulis)
* [Lain-Lain](#lain-lain)

## Deskripsi Data dan DBMS

Pada permainan Counter Strike: Global Offensive (CS:GO), terdapat statistik tim dan pemain profesional selama mereka bertanding. Salah satu situs web yang mencatat statistik para pemain dan tim CS:GO adalah [HLTV](http:/hltv.org). Pada projek ini, penulis melakukan _scraping_ situs web HLTV untuk mengambil statistik tersebut. Data statistik milik tim yang diambil, antara lain nama, negara asal, peringkat, pelatih, jumlah kemenangan, jumlah seri, jumlah kekalahan, jumlah _kill_, jumlah _death_, dan _kill-death ratio_. Sedangkan data statistik milik pemain yang diambil meliputi _nickname_, nama asli, negara asal, tim, _rating_, _deaths per round_, KAST (persentase pemain mendapatkan _kill_, _assists_, bertahan, atau _traded_), impact, _damage per round_ rata-rata, _kils per round_, jumlah _kill_, persentase _headshot_, _kill-death ratio_, jumlah _map_ yang sudah dimainkan.

Untuk menyimpan data tersebut, penulis memilih PostgreSQL sebagai DBMS. Hal ini karena PostgreSQL merupakan DBMS relasional yang memiliki reputasi yang baik dan dapat diandalkan. Selain itu, DBMS ini dapat di-_deploy_ pada _cloud platform_, yaitu Heroku. 

## Spesifikasi Program

Program _data scraping_ pada projek ini menggunakan bahasa Python dengan pustaka _HTML parser_ yang umum dipakai untuk melakukan _data scraping_, yaitu Beautiful Soup. Di sisi lain, API dibuat menggunakan bahasa Go dengan _framework_ Fiber. Selain itu, API menggunakan GORM sebagai pustaka _Object-Relational Mapping_ (ORM).

## Cara Menggunakan

### Program _Data Scraping_
1. Pastikan Python3 ter-_install_ pada PC Anda. Jika tidak, silakan unduh Python3 [di sini](https://www.python.org/downloads/)
2. Buka _command prompt_ lalu pindah ke direktori `src` di dalam folder `Data Scraping`
3. Jalankan perintah di bawah ini untuk mengunduh pustaka yang dibutuhkan
```
pip install -r requirements.txt
```
4. Jalankan perintah di bawah ini untuk menjalankan `main.py` dan memulai _scrape_
```
py main.py
```
5. Pilih indeks tim yang akan di-_scrape_ sesuai batas indeks yang tertera. Tunggu hingga program selesai melakukan _scraping_ data. File JSON akan terbuat dalam folder `data`
6. Untuk menyimpan data hasil _scraping_ ke dalam basis data, jalankan perintah di bawah ini untuk menjalankan `store.py`
```
py store.py
```
7. Pilih opsi pertama jika ingin membuat file `config.ini` untuk konfigurasi basis data, sedangkan pilih opsi kedua file `config.ini` sudah tersedia dan ingin memasukkan data JSON ke dalam basis data tersebut

### API
1. Pastikan Go ter-_install_ pada PC Anda. Jika tidak, silakan unduh Go [di sini](https://go.dev/doc/install)
2. Buatlah file .env di dalam folder `api` untuk menyimpan konfigurasi basis data yang sudah diisi data sebelumnya dengan contoh sebagai berikut:
```
DB_HOST= your_host
DB_NAME= your_name
DB_USER= your_user
DB_PASSWORD= your_password
DB_PORT= your_port
```
3. Bukalah _command prompt_ lalu pindah ke direktori `api`
4. Jalankan perintah di bawah ini untuk menjalankan server melalui file `main.go`
```
go run main.go
```
5. Bukalah _browser_ Anda dan pergi ke alamat `http://localhost:8000`. Jika halaman tersebut menampilkan teks "Selamat datang!", server berhasil berjalan
6. Untuk mengakses data tambahkan path berikut:
    - `/player` untuk mengakses semua data pemain
    - `/player/:playerId` untuk mengakses data pemain berdasarkan id-nya, contohnya `/player/1` utnuk mengakses pemain dengan id 1
    - `/team` untuk mengakses semua data tim
    - `/team/:teamId` untuk mengakses data tim berdasarkan id-nya, contohnya `/team/1` untuk mengakses tim dengan id 1

Gunakan [Postman](https://www.postman.com/API) dengan metode GET untuk mendapatkan tampilan yang lebih bagus. API dan basis data juga telah di-_deploy_ pada _platform_ Heroku dan dapat diakses [di sini](https://seleksi-basdat-13520118.herokuapp.com/)

## Struktur JSON

Data yang di-_scrape_ akan disimpan dalam format JSON. Data pemain dan tim akan disimpan dalam dua buah file JSON berbeda. Berikut ini adalah contoh struktur JSON untuk data pemain:
<pre>
{
        "nickname": "BnTeT",
        "realname": "Hansel Ferdinand",
        "country": "Indonesia",
        "age": 26,
        "team": "TYLOO",
        "rating": 1.15,
        "dpr": 0.62,
        "kast": 0.745,
        "impact": 1.15,
        "adr": 83.0,
        "kpr": 0.77,
        "kills": 20502,
        "hsPercentage": 0.398,
        "deaths": 16695,
        "kdRatio": 1.23,
        "mapsPlayed": 1027
}
</pre>
Berikut ini adalah contoh struktur JSON untuk data tim:
<pre>
{
        "name": "fnatic",
        "country": "Europe",
        "rank": 34,
        "coach": "keita",
        "wins": 1109,
        "draws": 8,
        "losses": 759,
        "kills": 171230,
        "deaths": 163460,
        "kdRatio": 1.05
}
</pre>

## Struktur Basis Data

Pada basis data, terdapat empat tabel, yaitu Team, Player, TeamStats, dan PlayerStats dengan rincian sebagai berikut:
### Team
|Kolom  |Tipe Data|
| ----- | ------- |
| team_id | INT |
| name | VARCHAR |
| country | VARCHAR |
| rank | INT |
| coach | VARCHAR |

### Player
|Kolom  |Tipe Data|
| ----- | ------- |
| player_id | INT |
| nickname | VARCHAR |
| realname | VARCHAR |
| rank | INT |
| country | VARCHAR |
| age | INT |
| team_id | INT |

### TeamStats
|Kolom  |Tipe Data|
| ----- | ------- |
| teamstats_id | INT |
| win_count | INT |
| draw_count | INT |
| lose_count | INT |
| kill_count | INT |
| death_count | NUMERIC(3,2) |
| kd_ratio | INT |
| team_id | INT |
### PlayerStats
|Kolom  |Tipe Data|
| ----- | ------- |
| playerstats_id | INT |
| rating | NUMERIC(3,2) |
| dpr | NUMERIC(3,2) |
| kast | NUMERIC(4,3) |
| impact | NUMERIC(3,2) |
| adr | NUMERIC(3,1) |
| kpr | NUMERIC(3,2) |
| kill_count | INT |
| hs_percentage | NUMERIC(4,3) |
| death_count | INT |
| kd_ratio | NUMERIC(3,2) |
| map_count | INT |
| player_id | INT |

### Foreign Key
```
TeamStats(team_id) -> Team(team_id)
PlayerStats(player_id) -> Player(player_id)
Player(team_id) -> Team(team_id)
```

## Screenshot

Berikut beberapa _screenshot_ program _data scraping_

#### Fungsi parseHTML dan getTeamsLink

![Fungsi parseHTML dan getTeamsLink](https://github.com/daffarg/Seleksi-2022-Tugas-1/blob/5963ccadc4b7ecc1225d63193f53d0c1bccf4cbb/Data%20Scraping/screenshot/parseHtml_getTeamsLink.png)

#### Fungsi getTeamStats

![Fungsi getTeamStats](https://github.com/daffarg/Seleksi-2022-Tugas-1/blob/5963ccadc4b7ecc1225d63193f53d0c1bccf4cbb/Data%20Scraping/screenshot/getTeamStats.png)

#### Fungsi getTeamProfile

![Fungsi getTeamProfile](https://github.com/daffarg/Seleksi-2022-Tugas-1/blob/5963ccadc4b7ecc1225d63193f53d0c1bccf4cbb/Data%20Scraping/screenshot/getTeamProfile.png)

#### Fungsi getPlayerData (1)

![Fungsi getPlayerData(1)](https://github.com/daffarg/Seleksi-2022-Tugas-1/blob/5963ccadc4b7ecc1225d63193f53d0c1bccf4cbb/Data%20Scraping/screenshot/getPlayerData1.png)

#### Fungsi getPlayerData (2)

![Fungsi getPlayerData(2)](https://github.com/daffarg/Seleksi-2022-Tugas-1/blob/5963ccadc4b7ecc1225d63193f53d0c1bccf4cbb/Data%20Scraping/screenshot/getPlayerData2.png)

#### Fungsi writeJson

![Fungsi writeJson](https://github.com/daffarg/Seleksi-2022-Tugas-1/blob/5963ccadc4b7ecc1225d63193f53d0c1bccf4cbb/Data%20Scraping/screenshot/writeJson.png)

#### Fungsi startScrape

![Fungsi startScrape](https://github.com/daffarg/Seleksi-2022-Tugas-1/blob/5963ccadc4b7ecc1225d63193f53d0c1bccf4cbb/Data%20Scraping/screenshot/startScrape.png)

#### Program Main

![Program Main](https://github.com/daffarg/Seleksi-2022-Tugas-1/blob/5963ccadc4b7ecc1225d63193f53d0c1bccf4cbb/Data%20Scraping/screenshot/main.png)

## Referensi
### Pustaka
- Beautiful Soup
- Psycopg2
- Fiber
- GORM
### Tautan
- https://blog.finxter.com/creating-reading-updating-a-config-file-with-python/
- https://dev.to/percoguru/getting-started-with-apis-in-golang-feat-fiber-and-gorm-2n34

## Penulis
Mohamad Daffa Argakoesoemah
<br>
13520118
<br>
Teknik Informatika, Institut Teknologi Bandung

## Lain-Lain
### Penanganan Encoding pada psql
Pada tabel Player, terdapat beberapa nickname pemain mengandung huruf selain alfabet latin. Oleh karena itu, jika Anda ingin melakukan _query_ melalui psql (PostgreSQL terminal), ubahlah _encoding_ pada psql dengan menjalankan perintah di bawah ini pada Command Prompt sebelum masuk ke dalam psql.
```
SET PGCLIENTENCODING=utf-8
chcp 65001
```
Selanjutnya, bukalah psql melalui jendela Command Prompt yang telah diubah _encoding_-nya.
