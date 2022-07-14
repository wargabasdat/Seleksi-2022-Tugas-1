
<h1 align="center">
  <br>
  Data Scrapping dan Database Mobil Bekas dari mobil123.com
  <br>
  <br>
</h1>

## Description of The Data and DBMS
Data yang ada pada project ini adalah data-data mobil bekas yang diambil dari mobil123.com. Data mencakupi data mobil bekas (seperti harga, model, mileage, tahun produksi), model mobil (seperti brand, tipe mobil), review dari model mobil, dan penjual mobil bekas.

DBMS yang dipakai adalah PostgreSQL yang merupakan sistem database relasional. Alasan pemilihan DBMS ini adalah karena saya familiar dengan DBMS ini.

## Specification
Program scrapping menggunakan bahasa python dan library beautifulsoup. Melakukan scrapping dari web mobil123.com dan mengoutput 4 file json.
API dibuat dengan node.js dengan framework express dan dihost di heroku, database PostgreSQL juga dihost di Heroku.


## How to Use
### Program Scrapping 
Program scrapping (yaitu scrapping.py yang berada di Data Scrapping/src) dapat digunakan setelah seluruh library yang dibutuhkan telah diinstal. Library bisa diinstal dengan menggunakan command
```
pip install [Nama Library]
```
Setelah semua library yang dibutuhkan telah diinstall, program dapat dijalankan dengan command berikut di directory src.
```
python scrapping.py
```

### API
Request GET dapat dikirimkan ke URL-URL berikut ini:

[mobilbekas123.herokuapp.com/mobilBekas](https://mobilbekas123.herokuapp.com/mobilBekas)

[mobilbekas123.herokuapp.com/modelMobil](https://mobilbekas123.herokuapp.com/modelMobil)

[mobilbekas123.herokuapp.com/penjual](https://mobilbekas123.herokuapp.com/penjual)

## JSON Structure
Ada 7 buah file json yang dihasilkan oleh program scrapper yang masing-masing memiliki struktur sebagai berikut:
mobilBekas =
```
        {
                "idMobilBekas": id unik ,
                "judulMobilBekas": Judul yang ditaruh oleh penjual,
                "idModel": id model (foreign key),
                "transmisi": transmisi mobil,
                "kapasitasMesin": CC mesin,
                "bahanBakar": bahan bakar yang dipakai,
                "kapasitas": kapasitas penumpang,
                "warna": warna mobil,
                "harga": harga dalam rupiah,
                "mileage": jarak yang sudah ditempuh mobil,
                "tahunProduksi": tahun mobil diluncukan,
                "urlMobil": page mobil,
                "idPenjual": id mobil (foreign key)
        }
```
modelMobil =
```
        {
                "idModel": id unik,
                "brand": merk,
                "model": model,
                "tipeMobil": tipe mobil
        }
```
reviewModel =
```
        {
                "idReview": id unik,
                "idModelMobil": id model (foreign key),
                "namaReviewer": nama reviewer,
                "tanggalReview": timestamp review disubmit,
                "judulReview": judul review,
                "bodyReview": isi review,
                "rating": rating (skala 5)
        }
```

penjual =
```
        {
                "idPenjual": id unik,
                "namaPenjual": nama penjual/dealer,
                "tipePenjual": tipe penjual (private/dealer),
                "kotaPenjual": kota,
                "provinsiPenjual": provinsi
        }
```
## Database Structure
Berikut adalah ER diagram dari database ini 
![ERD](Data%20Storing/design/ER%20Diagram.png)

Setiap mobil bekas memiliki tipe model mobil tertentu dan beberapa mobil bekas bisa memiliki model yang sama. Oleh karena itu, hubungan antara mobilBekas dan modelMobil adalah many to one.

Sebuah review pasti membahas suatu model mobil, tetapi tidak semua model mobil memiliki review. Oleh karena itu, hubungan antara reviewModel dan modelMobil adalah many to one dengan partisipasi parsial dari modelMobil.

Setiap mobil bekas pasti dijual oleh seorang penjual. Tetapi seorang penjual bisa saja menjual lebih dari satu mobil. Sehingga hubungan antara penjual dan mobilBekas adalah one to many.

## Screenshots
Program Scrapper
![Screenshot Program Scraping](Data%20Scraping/screenshot/Screenshot%20Program.png)

### List of Tables di Database Lokal
![List Tables](Data%20Storing/screenshot/List%20of%20Tables.jpg)

### Relasi mobilBekas di Database Lokal
![List Tables](Data%20Storing/screenshot/mobilBekas.png)

### Relasi modelMobil di Database Lokal
![List Tables](Data%20Storing/screenshot/modelMobil.png)

### Relasi reviewModel di Database Lokal
![List Tables](Data%20Storing/screenshot/reviewModel.png)

### Relasi penjual di Database Lokal
![List Tables](Data%20Storing/screenshot/penjual.png)

### Penyimpanan di Cloud dan API
![List Tables](Data%20Storing/screenshot/Cloud1.png)
![List Tables](Data%20Storing/screenshot/Cloud2.png)
![List Tables](Data%20Storing/screenshot/Cloud3.png)

## References
Tutorial BeautifulSoup
https://youtu.be/ng2o98k983k

Deploy Database PostgreSQL ke Heroku
https://youtu.be/80oty2v4HsE

CRUD Rest API node.js dan Express dengan PostgreSQL
https://blog.logrocket.com/crud-rest-api-node-js-express-postgresql/

Deploy Aplikasi node.js ke Heroku
https://lo-victoria.com/build-rest-api-with-nodejs-deploy-to-heroku
https://link.medium.com/EsHwIPHXirb

Saat menemukan error
https://stackoverflow.com/
