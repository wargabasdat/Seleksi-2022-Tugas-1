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

  ![logo web](https://github.com/mutiarakirana21/Seleksi-2022-Tugas-1/blob/main/logo.jpg)

  <br>

</h2>

## Table of Contents

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
## Screenshots
## Reference
## Author



### Data Scraping

1. Lakukan _data scraping_ dari sebuah laman web untuk memperoleh data atau informasi tertentu __TANPA MENGGUNAKAN API__. Hasil _data scraping_ ini nantinya akan disimpan dalam DBMS dan digunakan sebagai bahan tugas analisis dan visualisasi data.

2. Daftarkan judul topik yang akan dijadikan bahan _data scraping_ dan DBMS yang akan digunakan pada spreadsheet berikut: [Topik Data Scraping](https://docs.google.com/spreadsheets/d/1VjK-ZeJlSy38yqUJvaaCqYtS7yP8Vq609ewyWTA_k2Y/edit?usp=sharing). Usahakan agar tidak ada peserta dengan topik yang sama. Akses edit ke spreadsheet akan ditutup tanggal __10 Juni 2022 pukul 21.40 WIB__

3. Pada folder `Data Scraping`, calon warga basdat harus mengumpulkan _file script_, json hasil _data scraping_. Folder `Data Scraping` terdiri dari _folder_ `src`, `data` dan `screenshots`. 
    - _Folder_ `src` berisi _file script_/kode yang __*WELL DOCUMENTED* dan *CLEAN CODE*__ 
    - _Folder_ `data` berisi _file_ json hasil _scraper_
    - _Folder_ `screenshot` berisi tangkapan layar program.

4. Sebagai referensi untuk mengenal _data scraping_, asisten menyediakan dokumen "_Short Guidance To Data Scraping_" yang dapat diakses pada link berikut: [Data Scraping Guidance](http://bit.ly/DataScrapingGuidance). Mohon memperhatikan etika dalam melakukan _scraping_.

5. Data yang diperolah harus dinormalisasi dan harus di-_preprocessing_
```
Preprocessing contohnya :
- Cleaning
- Parsing
- Transformation
- dan lainnya
```

### Data Storing

1. Buatlah sebuah ER Diagram dari basis data yang akan digunakan untuk menyimpan data hasil _scraping_
   
2. Implementasikan ERD tersebut ke DBMS sesuai pilihan kalian

3. Tools yang digunakan __dibebaskan__

4. Calon warga basdat harus mengumpulkan bukti penyimpanan data pada DBMS. _Folder_ `Data Storing` terdiri dari folder `screenshots`, `export`, dan `design`
    - _Folder_ `screenshot` berisi tangkapan layar bukti dari penyimpanan data ke DBMS
    - _Folder_ `export` berisi _file_ hasil _export_ dari DBMS (seperti `.sql`, `.json`, (1 saja yang didukung oleh DBMS))
    -  _Folder_ `design` berisi ER Diagram yang disimpan dalam format `.png`



5. Task-task berikut bersifat tidak wajib (__BONUS__), boleh dikerjakan sebagian atau seluruhnya
    - Simpan ke _cloud database_
    - Buatlah API sederhana untuk mengakses _database_ tersebut

### Pengumpulan


1. Dalam mengerjakan tugas, calon warga basdat terlebih dahulu melakukan _fork_ project github pada link berikut: [Seleksi-2022-Tugas-1](https://github.com/wargabasdat/Seleksi-2022-Tugas-1). Sebelum batas waktu pengumpulan berakhir, calon warga basdat harus sudah melakukan _pull request_ dengan nama ```TUGAS_SELEKSI_1_[NIM]```

2. Tambahkan juga `.gitignore` pada _file_ atau _folder_ yang tidak perlu di-_upload_, __NB: BINARY TIDAK DIUPLOAD__

3. Berikan satu buah file `README` yang __WELL DOCUMENTED__ dengan cara __override__ _file_ `README.md` ini. `README` harus memuat minimal konten:


```
- Description of the data and DBMS (Why you choose it)
- Specification of the program
- How to use
- JSON Structure
- Database Structure
- Screenshot program (di-upload pada folder screenshots, di-upload file image nya, dan ditampilkan di dalam README)
- Reference (Library used, etc)
- Author
```


4. Deadline pengumpulan tugas 1 adalah <span style="color:red">__1 Juli 2022 Pukul 22.40 WIB__</span>

<h3 align="center">
  <br>
  Selamat Mengerjakan!
  <br>
</h3>

<p align="center">
  <i>
  Happiness does not come from doing easy work
  but from the afterglow of satisfaction that
  comes after the achievement of a difficult
  task that demanded our best.<br><br>
  - Theodore Isaac Rubin
  </i>
</p>
<br>
