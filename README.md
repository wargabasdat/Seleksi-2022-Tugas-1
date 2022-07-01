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

## Daftar Isi
- [Deskripsi Data dan DBMS](#deskripsi-data-dan-dbms)
- [Spesifikasi Program](#spesifikasi-program)
- [Cara Menggunakan](#cara-menggunakan)
- [Struktur JSON](#struktur-json)
- [Struktur Database](#struktur-database)
- [Screenshot](#screenshot)
- [Referensi](#referensi)
- [Author](#author)

## Deskripsi Data dan DBMS
Saat ini terdapat banyak pengusaha yang memanfaatkan teknologi untuk memasarkan produk yang dimilikinya. [Blood+Bone](https://bloodnbone.com/) merupakan salah satu _website_ toko _online_ yang menyediakan berbagai macam pakaian untuk pria dan wanita. Para pembeli dapat melihat foto produk dan detail dari produk yang dijual dalam _website_ ini. Data yang penulis ambil dari _website_ ini adalah data dress wanita meliputi nama, deskripsi, harga, warna, ukuran, berat, dan dimensi dari produk. Penulis mengambil data-data ini karena tertarik dengan informasi mengenai pakaian wanita dan berharap bisa memperoleh _insight_ yang menarik dari informasi ini.

DBMS yang penulis gunakan dalam menyimpan data hasil _scraping_ adalah PostgreSQL karena merupakan _database_ relasional yang stabil, aman, dan terpercaya meskipun bersifat _open source_, serta mudah untuk digunakan, khususnya dalam menyimpan data produk dress yang cukup banyak.

## Spesifikasi Program
Program untuk melakukan _data scraping_ ditulis dalam bahasa pemrograman Python dengan library BeautifulSoup. Data hasil _scraping_ kemudian disimpan dalam bentuk JSON menggunakan library json.

Data dress yang ada dapat diakses melalui API yang dibuat dalam bahasa Python dengan bantuan FastAPI. API ini akan berinteraksi dengan data yang telah disimpan dalam _cloud database_ MongoDB.

## Cara Menggunakan
### Data Scraping
1. Clone _repository_ ini ke PC Anda.
2. Pastikan Python telah ter-_install_ pada PC Anda.
3. Install seluruh library yang dibutuhkan dengan menjalankan command berikut ke terminal.
```
pip install -r requirements.txt
```
4. Buka _folder_ `Data Scraping/src` pada terminal.
5. Jalankan command `python main.py` untuk melakukan _scraping_.
6. File json hasil _scraping_ akan tersedia pada folder `Data Scraping/data`.

### API
1. Clone _repository_ ini ke PC Anda.
2. Pastikan Python telah ter-_install_ pada PC Anda.
3. Install seluruh library yang dibutuhkan dengan menjalankan command berikut ke terminal.
```
pip install -r requirements.txt
```
4. Jalankan command berikut pada terminal.
```
uvicorn main:app
```
5. API dapat diakses melalui [localhost:8000](http://localhost:8000/). Endpoint yang tersedia dapat dilihat dengan mengakses [localhost:8000/docs](http://localhost:8000/docs).

## Struktur JSON
Berikut merupakan struktur JSON hasil _scraping_.
<pre>
{
  "title": str,
  "desc": str,
  "price": int,
  "colour": list[str],
  "size": list[str],
  "weight": str,
  "dimensions": str
}
</pre>

## Struktur Database
### ER Diagram
![ERD](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/Data%20Storing/design/ERD.png)

### Model Relasional
```
dress = (id, title, description, price, weight, dimensions)
dress_colour = (id, colour)
dress_size = (id, size)
```

## Screenshot
### Data Scraping
#### Run Program
![scrape1](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/Data%20Scraping/screenshot/run1.png) <br>
![scrape2](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/Data%20Scraping/screenshot/run2.png)

### Data Storing
#### PostgreSQL
dress <br>
![postgresql1](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/Data%20Storing/screenshot/db1.png) <br>
dress_colour <br>
![postgresql2](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/Data%20Storing/screenshot/db2.png) <br>
dress_size <br>
![postgresql3](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/Data%20Storing/screenshot/db3.png)

### Cloud Database
![mongoDB](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/Data%20Storing/screenshot/mongodb.png)

### API
![API](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/API/screenshot/api.png)
#### Retrieve all data
![Retrieve all data](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/API/screenshot/api2.png)
#### Search by title
![Search by title](https://github.com/leoniantoinette/Seleksi-2022-Tugas-1/blob/007744b2dc7eddae9bb795ae5b62fff93bade543/API/screenshot/api3.png)

## Referensi
### Libraries:
- BeautifulSoup
- requests
- FastAPI
- pydantic
- pymongo
- uvicorn
- gunicorn

## Author
Flavia Beatrix Leoni A. S. <br>
13520051 <br>
Teknik Informatika <br>
Institut Teknologi Bandung