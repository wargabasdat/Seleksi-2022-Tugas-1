<h1 align="center">
  <br>
  Scraping Top Drama Show
  <br>
  <br>
</h1>

<h2 align="center">
  <br>
  Tugas 1 Seleksi Calon Warga Basdat 2022
  <br>
  <br>
</h2>

## Deskripsi Data & DBMS
Pada Tugas 1 ini, saya memilih untuk melakukan scraping pada <em> website </em> <a href='https://mydramalist.com/search?adv=titles&ty=68,83&so=top&page=1'>            mydramalist.com </a>. Alasan saya memilih <em> website </em> tersebut adalah tingginya animo masyarakat Indonesia terhadap drama dari luar negeri seperti misalnya      drama Korea maupun drama Taiwan. Data yang saya ambil dari <em> website </em> tersebut adalah judul drama, jenis drama, tahun pembuatan, jumlah episode, serta          rating drama tersebut yang dapat mempermudah orang-orang untuk menentukan drama mana yang ingin ditonton terlebih dahulu.
 
DBMS yang saya gunakan untuk menyimpan hasil <em> scarping </em> tersebut adalah MongoDB. Alasan penggunaan MongoDB karena file hasil <em> export </em> dari <em> web scraping </em> berformat JSON sehingga cocok untuk menggunakan DBMS NoSQL khusunya MongoDB. MongoDB dapat meng-<em>import</em> file JSON dengan cepat dan fleksibel. Untuk penyimpanan cloud, MongoDB juga sudah menyediakan <em> platform </em> MongoDB Atlas sehingga mempermudah kita untuk membuat <em> cluster </em> di cloud.

## Spesifikasi
Program <em> web scraping </em> ini menggunakan bahasa pemrograman Python dengan bantuan library BeautifulSoup untuk melakukan <em>scraping</em>-nya. Terdapat beberapa library lain yang digunakan pada program ini yang akan dijelaskan kemudian serta dapat dilihat pada file `requirements.txt`.

## API
Saya membuat API untuk mengakses data Top Drama yang sudah terlebih dahhulu disimpan pada MongoAtlas dengan bantuan FastAPI dan Swagger UI. Beberapa interaksi yang dapat dilakukan melalui API ini adalah:

* Create : Membuat/memasukkan drama baru ke dalam database
* Read : Melihat seluruh drama yang ada pada database ataupun melihat drama berdasarkan idnya
* Update : Melakukan update untuk drama tertentu berdasarkan idnya
* Delete : Menghapus drama tertentu dari database

## How to Use
### Cara Menggunakan Program Scraping
1. Clone <em> repository </em> ini ke PC anda.
2. Install seluruh library yang dibutuhkan dengan <em>command</em> berikut `pip install -r requirements.txt`
3. <em> Run </em> program `drama.py`. Anda dapat mengubah nama <em> file </em> hasil <em> export </em> pada bagian bawah file `drama.py`.
4. File hasil <em> scraping </em> akan tersedia pada folder yang sama. Hasil scraping juga tersedia pada folder `DataScraping/data/dramalist.json`

### Cara Menggunakan API
1. Clone <em> repository </em> ini ke PC anda.
2. Install seluruh library yang dibutuhkan dengan <em>command</em> berikut `pip install -r requirements.txt`
3. <em> Run </em> program `main.py` yang terdapat pada folder `DataScraping/src/app/main.py`. Program ini akan otomatis menyalakan server lokal.
4. Pada <em> browser </em>, buka `127.0.0.1` atau `localhost:8000`. Bila muncul tulisan "Welcome to Top Drama Scraper", maka server sudah berhasil berjalan secara lokal.
5. Pada <em> browser </em>, buka `127.0.0.1/docs` atau `localhost:8000/docs` untuk mengakses Swagger UI. Anda bisa mengakses database Top Drama yang berada pada MongoAtlas melalui Swagger UI tersebut.

## Deployment
Saya menggunakan Heroku untuk mendeploy API yang sudah dibuat. API tersebut dapat diakses melalui <a href='https://topdramadatabase.herokuapp.com/'> link </a> ini. Untuk mengakses langsung Swagger UI, dapat melalui <a href='https://topdramadatabase.herokuapp.com/docs'> link </a> ini.

## JSON Structure
Berikut ini format JSON hasil export dari DBMS MongoDB:

```
{
  "_id":{
    $oid            : string
  },
  "judul_drama"     : string,
  "jenis_drama"     : string,
  "tahun_pembuatan" : string,
  "jumlah_episode"  : int,
  "rating_drama"    : float
}
```

## Database Structure
Berikut ini merupakan struktur database yang tercipta. Primary key dari struktur ini merupakan id dari setiap drama.
![ERD non transparan](https://user-images.githubusercontent.com/79572039/175315450-9fae865d-8a73-4ef0-a597-32b4f85ba309.png)

## Screenshots
* Preprocessing <br>
![preprocessing](https://user-images.githubusercontent.com/79572039/175234931-ac32dcd6-6e6c-491e-9434-c3f599fa695e.png)

* Saat Program Berjalan
![program_run](https://user-images.githubusercontent.com/79572039/175234482-a2b3176e-910b-4150-8230-dc86068565dc.png)

* Data Storing di Cloud
![Storing_Atlas](https://user-images.githubusercontent.com/79572039/175235927-129a184e-4ff8-45d0-bc92-4aaaab57de1a.png)

* Tampilan API menggunakan Swagger UI
![API](https://user-images.githubusercontent.com/79572039/175236147-6598c7b8-5f15-47a9-a7e8-1d7a11c3bba3.png)

## References
Libraries :
* BeautifulSoup
* Requests
* FastAPI
* Certifi
* Uvicorn
* PyMongo
* Motor
* etc (bisa dilihat di `requirements.txt`

Sumber belajar :
* Web Scraping :
<a href='https://www.youtube.com/watch?v=YIiYeyfo7MM&ab_channel=RifaiSlamet'> Belajar Web Scraping dengan Python BeautifulSoup </a>

* Setup Atlas :
<a href='https://www.youtube.com/watch?v=4-fRVd1yzr0&ab_channel=prawitohudoro'> Setup MongoDB Atlas Project </a>

* API : <br>
<a href='https://www.youtube.com/watch?v=cJWk27W9uoY&ab_channel=MoonKidz'> Python FastAPI MongoDB </a> <br>
<a href='https://www.youtube.com/watch?v=SJR_60BqU08&ab_channel=MoonKidz'> Python FastAPI </a> <br>
<a href='https://www.youtube.com/watch?v=G7hZlOLhhMY&t=1815s&ab_channel=MaheshKariya'> FastAPI MongoDB REST API in Python </a><br>
<a href='https://testdriven.io/blog/fastapi-mongo/#mongodb'> Building a CRUD App with FastAPI and MongoDB </a><br>

## Author
Vincentius Verel Siedharta <br>
18220061 <br>
Sistem dan Teknologi Informasi <br>
Institut Teknologi Bandung <br>
