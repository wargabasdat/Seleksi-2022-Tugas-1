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

### Deskripsi Data dan DBMS

Fandom merupakan website yang digunakan sebagai sumber informasi berbagai macam kategori, baik film, *TV Show*, maupun *Video Game*. Fandom digunakan oleh banyak orang yang ingin menggali lebih lanjut informasi terkait suatu topik. Data yang saya ambil berasal dari military-history.fandom yang merupakan fandom yang membahas terkait militer dari berbagai aspek seperti perlengkapan, jabatan, taktik dll. Dalam rangka perilisan film TOP GUN : Maverick, maka dalam kesempatan ini saya akan mengambil data pesawat yang aktif digunakan oleh Amerika Serikat. Data pesawat ini meliputi data pesawat yang digunakan oleh Angkatan Udara (*US Air Force*), Angkatan Darat (*US Army*), *Coast Guard*, Marinir (*US Marine*), Angkatan Laut (*US Navy*), dan UAV.

DBMS yang digunakan dalam penyimpanan data kali ini adalah postgreSQL. Alasan dari pemilihan PostgreSQL adalah tingginya popularitas sehingga memudahkan proses troubleshooting apabila terjadi *error* dalam penggunaan. Selain itu, familiaritas dalam penggunaan juga merupakan salah satu faktor penguat saya untuk menggunakan DBMS ini.

### Spesifikasi Program

Program data scraping ini menggunakan bahasa Python dengan beberapa library tambahan yang digunakan seperti pandas dan beautifulsoup.

### Cara Menggunakan

1. Clone repository ini pada direktori lokal
2. Pastikan python dan library yang digunakan sudah ter-*install*
3. Jalankan program yang ada pada *directory* 'src'
4. Data akan diperoleh dalam bentuk file JSON

### JSON Structure
```
{
    "id_plane":1,
    "Aircraft":"A-10 Thunderbolt II",
    "Role":"Attack Aircraft"
}
```

## Database Structure
![ERD](https://github.com/kofifanhertza/Seleksi-2022-Tugas-1/tree/main/Data%20Storing/design/ERD.png)

### Screenshot Program

### Referensi
1. Dokumentasi Python dan PostgreSQL
2. Dokumentasi library pandas : https://pandas.pydata.org/docs/reference/frame.html
3. Web Scraping : https://towardsdatascience.com/web-scraping-scraping-table-data-1665b6b2271c

### Author
Kofifan Hertza Haribowo
18220022
Sistem dan Teknologi Informasi
