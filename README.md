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
* [Tangkapan Layar](#tangkapan-layar)
* [Referensi](#referensi)
* [Author](#author)

## Deskripsi Data dan DBMS
LTMPT atau Lembaga Tes Masuk Perguruan Tinggi adalah lembaga penyelenggara tes masuk perguruan tinggi bagi calon mahasiswa baru yang berada di bawah naungan Kementerian Pendidikan dan Kebudayaan. Pada [website](https://top-1000-sekolah.ltmpt.ac.id/?page=1&per-page=100)-nya, LTMPT menyediakan data 1000 sekolah terbaik yang diperingkatkan berdasarkan nilai total UTBK yang diperoleh semua siswa dalam suatu sekolah. Saya memilih data ini karena dapat berguna bagi banyak pihak. Orang tua beserta anaknya yang mau melanjutkan pendidikannya ke SMA, MA, atau SMK, dapat melihat perbedaan kualitas pengajaran di tiap sekolahnya sehingga dapat membantu dalam memilih sekolah tujuan. Pihak sekolah juga dapat melihat informasi ini sebagai bahan refleksi kinerja mereka dalam mengajarkan anak didiknya. Selain itu, pihak pemerintah juga dapat menggunakan informasi ini sebagai bahan kajian untuk dapat terus meningkatkan kualitas pendidikan di suatu daerah. Data yang sudah dibersihkan memiliki delapan atribut, yaitu sebagai berikut.
- ranking peringkat sekolah berdasarkan nilai_total utbk
- progress perubahan peringkat sekolah dibandingkan tahun sebelumnya (2020)
- NPSN: nomor pokok sekolah nasional
- nama_sekolah: nama sekolah
- nilai_total: nilai total utbk
- provinsi: provinsi sekolah
- kab_kota: kabupaten/kota sekolah
- jenis: SMA/MA/SMK

DBMS yang digunakan adalah PostgreSQL karena open-source dan mudah untuk di-scaling sehingga dapat menampung lebih banyak data kedepannya tanpa mempengaruhi terlalu banyak terhadap performanya.

## Spesifikasi
- Program untuk melakukan *data scraping* pada direktori `Data Scraping` dibuat dengan bahasa pemrograman Python dan framework Scrapy. Data yang dihasilkan juga sudah langsung dibersihkan.
- API yang ada pada direktori `api` dibuat dengan bahasa pemrograman Golang.

## Cara Menggunakan
Untuk menggunakan program ini, unduh terlebih dahulu repository ini dalam bentuk zip, kemudian ekstrak.
### Data Scraping
1. Install [Python](https://www.python.org/downloads/).
2. Install framework Scrapy dengan perintah berikut.
```
pip install scrapy
```
3. Buka command prompt dan arahkan ke direktori src di dalam direktori Data Scraping.
4. Jalankan program main dengan mengeksekusi perintah berikut.
```
py main.py
```
5. Masukkan nama file keluaran dalam format json yang diinginkan.
6. Data yang diperoleh akan berada pada direktori `data`.
### API
1. API sudah ter-*deploy* pada Heroku, sehingga tinggal mengakses endpoint berikut: https://api-sekolah-top1000-utbk.herokuapp.com/sekolah.
2. API hanya memiliki endpoint tersebut dengan satu method yaitu GET. API akan mengembalikan seluruh data ranking sekolah yang sudah terurut.

## Struktur JSON
<pre>
{
  "ranking": integer,
  "progress": integer,
  "NPSN": string,
  "nama_sekolah": string,
  "nilai_total": float,
  "provinsi": string,
  "kab_kota": string,
  "jenis": string
}
</pre>

## Struktur Basis Data
Berikut ERD dari basis data.
![ERD](https://github.com/mhelmih/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/design/sekolah.png)

## Tangkapan Layar
### Data Scraping
![Data Scraping](https://github.com/mhelmih/Seleksi-2022-Tugas-1/blob/main/Data%20Scraping/screenshot/sekolah_top1000_utbk_scrape.jpg)
### Database Lokal
![Database Lokal](https://github.com/mhelmih/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/sekolah_top1000_utbk_lokal.jpg)
![Database cloud](https://github.com/mhelmih/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/sekolah_top1000_utbk_cloud.jpg)
![API](https://github.com/mhelmih/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/sekolah_top1000_utbk_api.jpg)

## Referensi
- Scrapy: https://docs.scrapy.org/en/latest/intro/tutorial.html

## Author
13520014 - Muhammad Helmi Hibatullah