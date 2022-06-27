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
* [Spesifikasi](#spesifikasi)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Screenshots](#screenshots)
* [Setup](#setup)
* [Usage](#usage)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
* [Contact](#contact)
<!-- * [License](#license) -->


## Deskripsi Data dan DBMS

Pada permainan Counter Strike: Global Offensive (CS:GO), terdapat tim dan pemain profesional dari berbagai negara yang bertarung pada turnamen tingkat regional maupun dunia. Setiap tim dan pemain profesional mempunyai statistik selama mereka bertanding. Salah satu situs web yang mencatat statistik para pemain dan tim CS:GO adalah [HLTV](http:/hltv.org). Pada projek ini, penulis melakukan _scraping_ situs web HLTV untuk mengambil statistik tersebut. Data statistik milik tim yang diambil, antara lain nama, negara asal, peringkat, pelatih, jumlah kemenangan, jumlah seri, jumlah kekalahan, jumlah _kill_, jumlah _death_, dan _kill-death ratio_. Sedangkan data statistik milik pemain yang diambil meliputi _nickname_, nama asli, negara asal, tim, _rating_, _deaths per round_, KAST (persentase pemain mendapatkan _kill_, _assists_, bertahan, atau _traded_), impact, _damage per round_ rata-rata, _kils per round_, jumlah _kill_, persentase _headshot_, _kill-death ratio_, jumlah _map_ yang sudah dimainkan.

Untuk menyimpan data tersebut, penulis memilih PostgreSQL sebagai DBMS. Hal ini karena PostgreSQL merupakan DBMS relasional yang memiliki reputasi yang baik dan dapat diandalkan. Selain itu, DBMS ini dapat di-_deploy_ pada _cloud platform_, yaitu Heroku. 

## Spesifikasi Program

Program _data scraping_ pada projek ini menggunakan bahasa Python dengan pustaka _HTML parser_ yang umum dipakai untuk melakukan _data scraping_, yaitu Beautiful Soup. Di sisi lain, API dibuat menggunakan bahasa Go dengan _framework_ Fiber. Selain itu, API menggunakan GORM sebagai pustaka _Object-Relational Mapping_ (ORM).

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
