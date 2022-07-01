<h1 align="center">
  <br>
  Data Sewa Kost di Indonesia
  <br>
  <br>
</h1>

<h2 align="center">
  <br>
  Data Scraping & Data Storing : Website infokost.id
  <br>
  <br>

  ![logo web](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/logo.jpg)

  <br>

</h2>

## Table of Contents
- [Table of Contents](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1#table-of-contents)
- [Description](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1#description)
- [Specification](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1#specification)
- [How to Use](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1#how-to-use)
- [JSON Structure](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1#json-structure)
- [Database Structure](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1#database-structure)
- [Screenshots](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1#screenshots)
- [References](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1#references)
- [Author](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1#author)

## Description
Data _scraping_ dilakukan pada salah satu website pencari kost di Indonesia, yaitu Infokost. Seperti yang tertulis pada website, sejak didirikan pada tahun 2007, Infokost telah menjadi salah satu sumber utama para pencari kost di seluruh Indonesia karena Infokost merupakan salah satu website yang memiliki database terbesar dan terlengkap. Untuk itu, dilakukan _scraping_ pada website ini dengan mengambil dan mengumpulkan data kost di Indonesia yang berisi nama kost, alamat dan daerah, tipe kost, tipe kamar, luas kamar, fasilitas kamar dan gedung, serta harga sewa per bulannya. Data tersebut dipilih karena para pencari kost biasanya akan mencari informasi untuk menemukan tempat kost ideal sesuai kebutuhan mereka.
<br>
<br>
Dalam _project_ ini, DBMS yang akan digunakan untuk menyimpan hasil _web scraping_ adalah MongoDB. Hal tersebut karena MongoDB memiliki kinerja yang cepat dan fleksibel, serta dapat melakukan _storing_ data dalam format JSON, yaitu format yang digunakan dalam melakukan _export_ hasil _web scraping_. Selain itu, MongoDB juga memiliki MongoDB Atlas sebagai _database cloud_ yang menyederhanakan proses pembuatan cluster di _cloud_ dan relatif lebih aman.

## Specification
Program ini menggunakan bahasa pemrograman Python dengan _libraries_ dan _tools_ sebagai berikut.
  - Jupyter Notebook
    <br>
    Jupyter notebook digunakan untuk mempermudah penulisan dan _maintenance_ kode. File _web scraper_ akan disimpan dalam format .ipynb
  - BeautifulSoup
    <br>
    Karena menggunakan bahasa pemrograman Python, _library_ ini digunakan sebagai _library_ utama untuk melakukan data _scraping_ dari website Infokost. BeautifulSoup ini dipilih karena _library_ ini mudah dipahami dan memiliki sintaks yang cukup sederhana, sehingga mudah untuk digunakan.
  - Urllib3
    <br>
    _Project_ ini akan mengambil HTML dari website Infokost. Untuk itu, diperlukan sebuah library untuk membantu mengakses dan meminta objek dari website dengan mengambil HTML dari website tersebut. Dalam _project_ ini, digunakan urllib3 karena banyak digunakan di masyarakat dan memiliki dokumentasi yang baik.
  - Time
    <br>
    Program ini menggunakan metode time.sleep() untuk menghentikan program selama beberapa detik, dengan tujuan menghindari mekanisme _anti-scraping_ dari website dan menjaga server agar tidak _crash_.
  - JSON
    <br>
    Data yang telah di-_scrape_ akan disimpan dalam format JSON. Untuk itu, dalam melakukan _dump_ data yang telah di-_scrape_ ke dalam format JSON, diperlukan _library_ JSON.
  - Geopy
    <br>
    Terdapat info lokasi dari website Infokost. Hal tersebut memungkinkan untuk menyimpan info _latitude_ dan _longitude_ lokasi dengan bantuan _library_ geopy, sehingga dapat memvisualisasikan data dengan lebih baik menggunakan data geografis.
## How to Use
1. _Clone_ _repository_ ini ke _directory_ lokal Anda.
2. Install semua _library_ yang digunakan dalam menjalankan program ini.
3. Pastikan seluruh _library_ telah terinstall dan Anda memiliki koneksi internet yang stabil saat menjalankan kode.
4. Buka Jupyter Notebook di komputer lokal yang Anda gunakan, bisa dengan mengubah _directory_ di terminal Anda ke _repository_ dan ketik
```
jupyter-notebook
```
5. Buka folder Data Scraping, lalu buka file infokost_scraper.ipynb pada Jupyter Notebook.
6. Ganti variabel firstpage dan lastpage menjadi halaman awal dan akhir yang ingin diambil datanya dari website.
7. Jalankan _code_ dalam file infokost_scraper.ipynb pada Jupyter Notebook.

## JSON Structure
Data yang di-_scrape_ akan disimpan dalam file dengan format JSON dengan struktur seperti yang terdapat pada contoh di bawah ini.
```
{
        "nama_kost": "Kost Jalan Subang Menteng",
        "alamat": "Jalan Subang no 24 RT04/RW04 Kelurahan Menteng, Kecamatan Menteng, Jakarta Pusat",
        "daerah": "MENTENG, KOTA JAKARTA PUSAT",
        "kecamatan": "MENTENG",
        "kota": "KOTA JAKARTA PUSAT",
        "latitude": -6.20313105,
        "longitude": 106.82005333640619,
        "tipe_kost": "Kost Putri",
        "tipe_kamar": "Standard",
        "luas_kamar": 20.0,
        "fasilits_kamar": "Kursi, Lemari, Meja, TV Kabel",
        "fasilitas_kamar_mandi": "Kamar mandi dalam, Shower, Wastafel",
        "isKamarMandiDalam": true,
        "fasilitas_gedung": "Area makan, CCTV, Cleaning service, Kompor, Kulkas, Laundry, Meja kompor, Microwave",
        "harga_per_bulan": 3000000
    },
```
## Database Structure
Berikut ini adalah ER Diagram dari database hasil data _scraping_ website Infokost pada _project_ ini, dengan _id sebagai _primary key_.
<h2 align="center">

![ERD](Data%20Storing/design/ERD%20Seleksi%20Basdat%20(infokost).jpg)

</h2>

## Screenshots
- Fungsi Scraper

  ![fungsi scraper1](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/scraper%20function1.PNG)

<br>

  ![fungsi scraper2](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/scraper%20function2.PNG)

<br>

  ![fungsi scraper3](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/scraper%20function3.PNG)

<br>

  ![fungsi scraper4](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/scraper%20function4.PNG)

- Info saat program dijalankan
  
  ![program running](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/scraper%20running.PNG)

- Preprocessing Input Data
 
  ![prepro1](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/preprocessing1.PNG)

<br>

  ![prepro2](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/preprocessing2.PNG)

- Output dalam format JSON
  
  ![json](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/merge%20and%20output%20to%20json.PNG)

- Data Storing di MongoDB (lokal)
  
  ![MongoLokal](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/storing%20mongo%20(local).PNG)

- Data Storing di MongoDB Atlas

  ![MongoAtlas](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/storing%20(cloud)%20mongodb%20atlas.PNG)

## References
- Web Scraping Tutorial
  <br>
  [Web Scraping with Python - Beautiful Soup Crash Course](https://www.youtube.com/watch?v=XVv6mJpFOb0)

- Dokumentasi
  <br>
  [PyPI](https://pypi.org/)
  <br>
  [BeautifulSoup](https://www.crummy.com/software/BeautifulSoup/bs4/doc/#extract)
  <br>
  [MongoDB](https://www.mongodb.com/docs/)

- Website Bantuan
  <br>
  [Stackoverflow](https://stackoverflow.com/)

## Author
Dewa Ayu Mutiara Kirana Praba Dewi (18220084)
<br>
Sistem dan Teknologi Informasi
<br>
Institut Teknologi Bandung