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
* [Deskripsi Data dan DBMS](#deskripsi-data-dan-dbms)
* [Spesifikasi Program](#spesifikasi-program)
* [Cara Menggunakan](#cara-menggunakan)
* [Struktur JSON](#struktur-json)
* [Struktur Basis Data](#struktur-basis-data)
* [Screenshot](#screenshot-program)
* [Referensi](#referensi)
* [Author](#author)

## Deskripsi Data dan DBMS
[Femaledaily](https://femaledaily.com/) merupakan website populer yang menyediakan informasi mengenai berbagai produk kecantikan dan perawatan tubuh, serta review lengkap dari penggunanya. Informasi tersebut sangat membantu dalam pengambilan keputusan sebelum membeli sebuah produk, oleh karena itu, saya memutuskan untuk mengambil data dari website ini dengan harapan bisa mendapatkan berbagai informasi yang bermanfaat untuk menentukan pilihan sebelum membeli produk. Data yang saya ambil adalah produk skincare, yang terbagi ke dalam 4 jenis yaitu Moisturizer, Treatment, Mask, dan Cleanser. Setiap jenisnya terbagi lagi menjadi beberapa kategori, dan untuk tugas ini saya mengambil seperlunya saja. Data yang diperoleh dari produk meliputi nama produk, brand, harga, serta review dari produk tersebut.

DBMS yang saya gunakan untuk menyimpan data-data produk hasil scraping yaitu PostgreSQL. Alasan penggunaannya adalah untuk mempermudah penyimpanan record data produk skincare yang sangat banyak, PostgreSQL menyediakan berbagai fitur yang dapat menjaga keamanan dan integritas data Selain itu, akses terhadap informasi untuk mendapatkan insights juga jelas dengan memanfaatkan query SQL.

## Spesifikasi Program
Program _data scraping_ pada projek ini menggunakan bahasa Python dengan library Beautiful Soup yang umum dipakai sebagai _HTML Parser_ untuk melakukan _data scraping_.

## Cara Menggunakan
### Data Scraping
1. Pastikan Python3 dan PostgreSQL ter-_install_ pada PC Anda. Jika tidak, silakan unduh Python3 [di sini](https://www.python.org/downloads/) dan PostgreSQL [di sini](https://www.postgresql.org/download/)
2. Buka _command prompt_ lalu masuk ke dalam direktori `src` dalam folder `Data Scraping`
3. Jalankan command dibawah ini untuk menginstall library yang diperlukan
```
pip install beautifulsoup4 requests
```
4. Jalankan perintah `python scraper.py` untuk memulai proses scraping.
5. Data yang telah diperoleh akan dituliskan pada file JSON di folder `data`

### API
1. Buka _command prompt_ lalu masuk ke dalam direktori `src` dalam folder `API`
2. Jalankan command dibawah ini untuk menginstall library yang diperlukan
```
pip install psycopg2 fastapi pydantic
```
3. Karena merupakan API lokal, maka pengguna perlu menyesuaikan konfigurasi program dengan mengubah konfigurasi yang terdapat pada fungsi connectToDB sesuai konfigurasi database yang dibutuhkan. 
4. Jalankan uvicorn dengan menuliskan perintah dibawah ini
```
uvicorn api:app --reload
```
5. Setelah berhasil, API dapat diakses pada `localhost:8000`. Pengguna dapat melihat endpoint yang tesedia dengan cara mengakses `localhost:8000/docs`.

Berikut adalah daftar endpoints yang dapat digunakan :
```
GET  /
GET  /products/                             : untuk mendapatkan seluruh data produk
GET  /products?brand=<str>&category=<str>   : untuk mencari produk berdasarkan brand, kategori, atau keduanya
GET  /products/{id}                         : untuk mencari produk berdasarkan id
```

## Struktur JSON
<pre>
   {
      "name": str,
      "category": str,
      "brand": str,
      "price": integer,
      "rating": float,
      "total_reviews": integer,
      "recom_percentage": integer,
      "image_url": str,
      "brand_url": str"
   }
</pre>

## Struktur Basis Data
Tabel yang terdapat pada basis data adalah femaledailyproducts, dengan struktur sebagai berikut
![ERD](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/design/ERD.png)

## Screenshot program
### Data Scraping
#### Init
![prep](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/init.jpeg)

#### Fungsi untuk mendapatkan link halaman dari setiap produk
![links](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/fungsi%20getproductlinks.jpeg)
![links2](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/treatment%20product.jpeg)
![links3](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/mask%20product.jpeg)
![links4](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/cleanser%20product.jpeg)

#### Fungsi untuk mengambil dan menyimpan data dari produk
![data](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/fungsi%20get%20product%20data.jpeg)
![data2](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/fungsi%20get%20product%20data(2).jpeg)

#### Fungsi untuk menuliskan data yang diperoleh ke dalam file json
![write](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/fungsi%20write%20json.jpeg)

#### Run Program
![run](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/run%20program.jpeg)

### Data Storing
#### Penyimpanan data ke dalam PostgreSQL
![postgre](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/postgresql.jpeg)

#### Penyimpanan data dalam cloud database
![atlas](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/mongo%20atlas.jpeg)

### API
#### FastAPI
![api](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/API/screenshots/fastapi.jpg)

#### Retrieve all product data
![all](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/API/screenshots/allproducts.jpeg)

#### Search by product id
![id](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/API/screenshots/id.jpeg)

#### Search by category
![cat](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/API/screenshots/search%20by%20category.jpeg)

#### Search by brand
![brand](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/API/screenshots/brand.jpeg)

#### Search by brand and category
![both](https://github.com/lyorafelicya/Seleksi-2022-Tugas-1/blob/main/API/screenshots/both.jpeg)

## Referensi
1. Web Scraping with Python : https://youtu.be/nCuPv3tf2Hg
2. Python FastAPI : https://youtu.be/-ykeT6kk4bk
3. Dokumentasi PostgreSQL dan Python

## Author 
Lyora Felicya <br>
13520073 <br>
Teknik Informatika 
