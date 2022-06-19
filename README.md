<h1 align="center">
  <br>
  Data Penjualan Properti di Indonesia
  <br>
  <br>
</h1>

<h2 align="center">
  <br>
  Data Scraping & Data Storing Website dotproperty.id
  <br>
  <br>
</h2>

## Description
- Pada __Tugas 1 Seleksi Lab Basis Data__ ini, Saya mengambil _website_ <a href = https://www.dotproperty.id/properties-for-sale> dotproperty</a> sebagai _website_ yang akan Saya lakukan _scraping_. Alasan pengambilan _website_ ini sebagai topik Saya dikarenakan informasi penjualan properti merupakan salah satu hal yang cukup banyak dicari oleh masyarakat Indonesia saat ini. Sehingga, dengan adanya data penjualan properti di Indonesia ini diharapkan dapat membantu pihak-pihak yang sedang mencari properti. Kemudian, alasan selanjutnya adalah _website_ ini cukup menarik untuk dapat dilakukan _scraping_ karena jumlah data yang tidak terlalu sedikit dan cukup banyak informasi yang bisa didapatkan dari _website_ ini.
- DBMS yang akan Saya gunakan adalah MongoDB karena DBMS ini dapat melakukan _storing_ data yang cukup cepat, fleksibel, dan yang paling penting adalah DBMS ini mampu untuk melakukan _storing_ data menggunakan format file `.json`. Sehingga, DBMS ini adalah pilihan yang paling tepat untuk dapat bekerja menggunakan format file `.json` seperti yang diminta oleh tugas ini.
## Spesifikasi
Dalam pengerjaan tugas ini, Saya menggunakan beberapa _tools_ dan _libraries_ yang dibutuhkan agar program ini dapat berjalan..
### Libraries
Dalam tahap pengerjaan, Saya menggunakan beberapa _library_ yang disediakan oleh `Python`, diantaranya:
- JSON
<br>_Library_ bawaan dari `Python` yang akan berfungsi untuk melakukan pembacaan dan penulisan dalam format `.json`.
- Requests
<br>_Library_ yang digunakan untuk dapat mengakses suatu _website_ dan dapat meminta objek dari _website_ tersebut.
- BeautifulSoup4
<br>Merupakan _library_ utama yang kita butuhkan dalam melakukan _Web Scraping_. _Library_ ini yang akan membuat kita dapat mengakses satu per satu objek yang terdapat di dalam _Website_ yang ingin kita _scrape_. _Library_ ini bukan merupakan _library_ bawaan yang langsung terinstal ketika kita menggunakan `python`, sehingga kita perlu melakukan instalasi terhadap _library_ ini dengan cara membuat _command_ `pip install BeautifulSoup4` di terminal.
- OS
<br>_Libray_ yang akan digunakan untuk mengatur penamanaan file sesuai dengan masukan dari pengguna dan mengatur peletakan file di dalam suatu folder yang sudah didefinisikan.

## How to Run
- Clone _repository_ ke _local computer_ Anda.
- Install seluruh _library_ yang dibutuhkan untuk menjalankan program.
- Edit bagian `file_path` yang ada pada `webScraper.py` untuk mengatur dimana file hasil _scrape_ ingin Anda simpan.
- Jalankan `webScraper.py`.
- Tepat setelah menjalankan program tersebut, maka akan muncul permintaan _input_ berupa nama file yang ingin Anda simpan.
![](./Data%20Scraping/screenshot/Input%20Nama%20File.png)

## Screenshot
- Import Required Libraries
![](./Data%20Scraping/screenshot/Required%20Libraries.png)
- Fungsi Utama Program
![](./Data%20Scraping/screenshot/Fungsi%20Utama%201.png)
![](./Data%20Scraping/screenshot/Fungsi%20Utama%202.png)
![](./Data%20Scraping/screenshot/Fungsi%20Utama%203.png)
![](./Data%20Scraping/screenshot/Fungsi%20Utama%204.png)
- Fungsi Pendukung
![](./Data%20Scraping/screenshot/Fungsi%20Pendukung.png)
- Run Program
![](./Data%20Scraping/screenshot/Run%20Program.png)
## Data Storing
- Pastikan sudah melakukan instalasi MongoDB sekaligus dengan MongoDBCompass.
- Kemudian, buat database serta collection.
- Kemudian, ambil pilihan `ADD DATA` dan pilih `Import File` dan kemudian pilih file `.json` yang dihasilkan dari _web scraping_ tadi.
![](./Data%20Storing/screenshot/Data-Storing-to-MongoDB.png)

## JSON Structure
```
{
_id: {
  $oid                        : ID yang dihasilkan oleh export database dari MongoDB
}
Title {string}                : Judul dari properti yang diambil dari website
Badge {String}                : Badge dari properti yang valuenya berada di antara ["Normal", "Utama", "Premium"]
Tipe {String}                 : Tipe dari properti dan valuenya bisa berupa "House", "Land", "Condo", "Apartment", "Commercial".
Jumlah Kamar Mandi {integer}  : JUmlah kamar mandi dari properti tersebut.
Jumlah Kamar Tidur {integer}  : Jumlah kamar tidur dari properti tersebut.
Luas Tanah (m2) {float}       : Besarnya luas tanah properti tersebut.
Harga (IDR) {integer}         : Harga properti tersebut dalam satuan rupiah (Contoh: 28000000).
Harga (float) {float}         : Harga dari properti dalam satuan yang lebih kecil (Contoh: 2.8).
Unit Harga {string}           : Unit harga berupa "Miliar" atau "Juta".
Status Pembayara {string}     : Ini merupakan atribut yang dimiliki oleh properti yang disewakan.
Kota {string}                 : Kota dimana properti tersebut berada.
Provinsi {string}             : Provinsi dimana properti tersebut berada.
Status {string}               : Berupa "disewakan" atau "dijual".
Link {string}                 : Link untuk mengakses properti tersebut.
}
```
## References
- Dokumentasi dari semua _library_ yang digunakan: [PyPi](https://pypi.org/)
- Belajar Dasar Web Scraping menggunakan YouTube: [Python Tutorial: Web Scraping with BeautifulSoup and Requests](https://www.youtube.com/watch?v=ng2o98k983k)
- _Website_ untuk bertanya:
<br> - [GeeksforGeeks](https://www.geeksforgeeks.org/)
<br> - [Stack Overflow](https://stackoverflow.com/)

## Author
### Muhammad Zaky
### 18220071
### Sistem dan Teknologi Informasi
