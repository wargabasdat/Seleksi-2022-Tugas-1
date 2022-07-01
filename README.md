<h1 align="center">
  <br>
  Scraping Data TWS Amazon.com
  <br>
  <br>
</h1>

<h2 align="center">
  <br>
  Tugas 1 Seleksi Calon Warga Basdat 2022
  <br>
  <br>
</h2>


## Sekilas mengenai Amazon.com

![logo](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/extras/amazon_logo.jpg)

Amazon.com, Inc. adalah multinasional teknologi Perusahaan Amerika yang berfokus pada e-niaga, komputasi awan, streaming digital dan kecerdasan buatan. Perusahaan ini adalah salah satu dari Lima Besar perusahaan di industri teknologi informasi AS, bersama dengan Google (Alphabet), Apple, Meta (Facebook) dan Microsoft. Perusahaan ini telah disebut sebagai "salah satu kekuatan ekonomi dan budaya paling berpengaruh di dunia", serta merek paling berharga di dunia. <a href='https://id.wikipedia.org/wiki/Amazon_(perusahaan)'>(sumber: id.wikipedia.org) </a>.

## Deskripsi Data dan DBMS

Pada tugas ini, saya mengambil data dari situs <a href='https://www.amazon.com/s?k=tws&i=electronics&rh=n%3A172541&qid=1656672311&ref=sr_pg_1'> amazon.com </a> mengenai _True Wireless Stereo (TWS)_. Beberapa data yang disediakan dan akan discrape mengenai produk tersebut antara lain nama, harga awal, harga setelah didiskon, persentase diskon, rating, jumlah review, dan url.

![product_example](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/extras/contoh_data.jpeg)

DBMS yang saya gunakan pada projek ini adalah PostgreSQL. Alasan pemilih penggunaan DBMS ini adalah karena PostgreSQL dapat _support_ untuk beberapa bahasa pemrograman seperti python, c, c++, atau js. DBMS ini juga support untuk menyimpan data dalam format JSON. Selain itu, integritas dan keamanan data juga terjamin.

## Spesifikasi Program
Proses _data scraping_ ini dilakukan pada `jupyter-lab` dengan menggunakan bahasa pemrograman python. Beberapa library yang diperlukan adalah pandas, selenium, dan beautifulsoup.

## Heroku API
Saya melakukan deployment data ke dalam heroku menggunakan _add-ons_ `Heroku Postgres`. Selain itu, saya juga membuat API untuk mengakses data TWS Amazon menggunakan `json-server`. API tersebut dapat diakses pada tautan
```
https://project-api-basdat.herokuapp.com/tws
```

## How To Use
1. Instal dan impor semua library (terdapat pada file requirements.txt pada folder Data Scraping/src) dengan 
```
pip install -r requirements.txt
```
2. Buka `TWS_Amazon_Scrape.ipynb` pada dengan mengetik `jupyter-lab` pada CLI
3. Kloning repositori ini ke direktori lokal Anda
4. Jalankan program
5. Program harus berjalan sesuai dengan urutan dimulai dari sel paling atas ke paling bawah
6. Program akan melakukan instalasi `WebDriver manager` yang diperlukan untuk menjalankan proses
![web_driver](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/extras/web_driver.jpeg)
7. Sebuah window `Google-Chrome` akan muncul seiring berjalannya proses _scraping_
8. Ketika proses selesai, akan terbentuk 2 buah file di directory tersebut, yaitu `TWS_amazon.csv` dan `TWS_amazon.json`

## JSON Structure

Berikut ini adalah struktur `JSON` hasil _data scraping_

```
{
  "Name": string,
  "Normal Price (USD)": float,
  "Discounted Price (USD)": float,
  "Discount percentage (%)": float,
  "Rating (out of 5 stars)": float,
  "Review Count": integer,
  "Url": string
}
```

Contoh data hasil _scraping_ adalah seperti berikut

```
{
  "Name": "Aurasound Wireless Earphones, Bluetooth Earbuds Noise Cancelling, TWS Earbuds with 13mm driver/30H Playtime/Music&Game Dual Mode, in-Ear Lightweight Earbuds for iOS/Android\uff08Black\uff09",
  "Normal Price (USD)": "14.99",
  "Discounted Price (USD)": "14.99",
  "Discount percentage (%)": "0",
  "Rating (out of 5 stars)": "3.7",
  "Review Count": "47",
  "Url": "https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_electronics_sr_pg1_1?ie=UTF8&adId=A08610343HW08PUIJBAU&url=%2FAurasound-FUNbuds-Headphones-Lightweight-Android%25EF%25BC%2588Black%25EF%25BC%2589%2Fdp%2FB09KGS36DT%2Fref%3Dsr_1_1_sspa%3Fkeywords%3Dtws%26qid%3D1656433430%26s%3Daht%26sr%3D1-1-spons%26psc%3D1&qualifier=1656433430&id=5886059493908647&widgetName=sp_atf"
}
```

## Database Structure
Berikut ini merupakan struktur database yang dibuat. Primary key merupakan id dari setiap produk TWS.
![erd_design](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/design/ERD_design.png)

## Screenshots
* Preprocessing
![preprocessing](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/Preprocessing.jpeg)

* Saat program berjalan <br>
Berikut ini adalah pop up aplikasi `Google Chrome` saat proses _scraping_ berjalan
![chrome_page](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/Scraping%20process.jpeg)
Berikut ini adalah keadaan setelah proses _scraping_ selesai
![main_function](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/Run%20main%20function.jpeg)

* Storing ke DBMS <br>
Saya melakukan modification terlebih dahulu dengan membuat PRIMARY_KEY id yang terurut naik mulai dari 1
![add_primary_key](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/add_primary_key.jpeg)
Berikut ini adalah data yang sudah distore ke PostgreSQL
![psql_storing](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/storing_psql.jpeg)

* Deployment ke Heroku Postgres <br>
Berikut ini adalah proses import ke database postgres heroku melalui CLI
![importing_data](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/extras/heroku_postgres.jpeg)
Berikut ini adalah database yang sudah berhasil dideploy di heroku
![heroku_database](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/extras/database_heroku.jpeg)

* API
![api](https://github.com/fikfikriii/Seleksi-2022-Tugas-1/blob/main/extras/api.jpeg)

## References

Web scraping tutorial using selenium <br>
https://towardsdatascience.com/how-to-use-selenium-to-web-scrape-with-example-80f9b23a843a

Beautifulsoup <br>
https://www.youtube.com/watch?v=RvCBzhhydNk&t=1122s&ab_channel=Pythonology
https://www.youtube.com/watch?v=Ql8Na3astdQ&t=1502s&ab_channel=Pythonology

Convert CSV to JSON with python <br>
https://medium.com/@hannah15198/convert-csv-to-json-with-python-b8899c722f6d

Adding an attribute and set it to primary key in PostgreSQL <br>
https://www.postgresql.org/docs/current/ddl-generated-columns.html

Store data in JSON format <br>
https://www.geeksforgeeks.org/reading-and-writing-json-to-a-file-in-python/ https://www.geeksforgeeks.org/json-dumps-in-python/

Deploy data to heroku <br>
https://www.youtube.com/watch?v=WY6eVl8FzTg&ab_channel=FelixLiawi
https://www.youtube.com/watch?v=80oty2v4HsE&ab_channel=CodeHive
https://www.youtube.com/watch?v=DA1Trq51JZs&t=166s&ab_channel=azamsharp

Create heroku JSON API using json-server <br>
https://www.youtube.com/watch?v=jAnJCsQDyXk&ab_channel=ninjakodtv

Debugging + special credit to <br>
https://stackoverflow.com/

<h3 align="center">
  <br>
  Author
  <br>
</h3>

<p align="center">
  
  Muhamad Fikri Nurohman<br>
  18220097
  
</p>
<br>