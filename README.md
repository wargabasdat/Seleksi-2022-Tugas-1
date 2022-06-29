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
Dalam _project_ ini, DBMS yang akan digunakan untuk menyimpan hasil _web scraping_ adalah MongoDB. Hal tersebut karena MongoDB memiliki kinerja yang cepat dan fleksibel, serta dapat melakukan _storing_ data dalam format JSON, yaitu format yang digunakan dalam melakukan _export_ hasil _web scraping_. Selain itu, MongoDB juga memiliki MongoDB Atlas sebagai database cloud yang menyederhanakan proses pembuatan cluster di cloud dan relatif lebih aman.

## Specification
## How to Use
## JSON Structure
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
