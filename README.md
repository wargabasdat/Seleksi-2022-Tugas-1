<h1 align="center">
  <br>
  Top Companies Data
  <br>
  <br>
</h1>

<h2 align="center">
  <br>
  Data Scraping & Data Storing
  <br>
  <br>
</h2>


### Description of the data and DBMS
Dewasa ini, startup marak berkembang di berbagai negara dengan fokus industri yang bermacam-macam. Banyaknya startup yang berkembang tidak lepas dari peran lembaga inkubator yang mewadahi ide-ide inovator dalam membangun startup. Salah satu wadah tersebut ialah YCombinator, lembaga yang memberikan investasi dan program mentoring kepada startup-startup potensial dari seluruh dunia. Program ini menggunakan data top startup (top companies) lulusan YCombinator yang diambil dari website http://www.ycombinator.com/topcompanies. 

Untuk menyimpan data top companies, author menggunakan DBMS PostgreSQL. Author memilih PostgreSQL karena PostgreSQL merupakan open source DBMS yang terkenal memiliki sistem yang reliable dan secure. Selain itu, saat ini banyak industri yang menggunakan PostgreSQL sebagai DBMSnya.
### Specification of the program
Program web scraping dibuat menggunakan bahasa pemrograman python dengan library utama yang digunakan yaitu BeautifulSoup4. Data yang diambil kemudian diproses (preprocessing) dan disimpan dalam format JSON sebelum masuk ke database. Untuk dapat melakukan storing dan modifikasi data pada DBMS PostgreSQL, user dapat menggunakan API yang dibuat dengan framework Flask dan beberapa library utama seperti marshmallow dan SQLAlchemy. Database juga disimpan dalam firebase realtime database. Berikut merupakan API yang tersedia untuk berinteraksi dengan database:

`http://127.0.0.1:5000/api/top_companies/add_companies` : digunakan untuk menambah satu atau lebih company <br />
`http://127.0.0.1:5000/api/top_companies/delete_company/<int: company_rank>` : digunakan untuk menghapus sebuah company dengan rank tertentu <br />
`http://127.0.0.1:5000/api/top_companies/update_company/<int: company_rank>` : digunakan untuk melakukan update satu atau lebih field/column data pada sebuah company dengan rank tertentu <br />
`http://127.0.0.1:5000/api/top_companies/get_companies` : digunakan untuk mengambil data seluruh company yang tersedia dalam database
`http://127.0.0.1:5000/api/top_companies/get_company/<int: company_rank>` : digunakan untuk mengambil data company dengan rank tertentu

*note: Panduan penggunaan API dimuat dalam postman collection yang tersedia dalam repository.*


### How to Use

1. Buat database pada DBMS PostgreSQL anda
2. Clone repository ini
3. Buka terminal pada directory repository ini di local device Anda
4. Jalankan `pip install -r requirements.txt`

Sebelum menjalankan program, anda perlu mengatur system environment variables yang terdiri atas key-key sebagai berikut dan menyimpannya dalam file .env di root folder repository ini
```
FLASK_APP
FLASK_ENV
DATABASE_URL
FIREBASE_DATABASE_URL
FIREBASE_CREDENTIAL_TYPE
FIREBASE_CREDENTIAL_PROJECT_ID
FIREBASE_CREDENTIAL_PRIVATE_KEY_ID
FIREBASE_CREDENTIAL_PRIVATE_KEY
FIREBASE_CREDENTIAL_CLIENT_EMAIL
FIREBASE_CREDENTIAL_CLIENT_ID
FIREBASE_CREDENTIAL_AUTH_URI
FIREBASE_CREDENTIAL_TOKEN_URI
FIREBASE_CREDENTIAL_AUTH_PROVIDER_X509_CERT_URL
FIREBASE_CREDENTIAL_CLIENT_X509_CERT_URL
```
*Variabel DATABASE_URL memiliki struktur postgresql://{user postgres}:{password}@{host}:{port}:{database name}. Variabel yang memiliki prefix "FIREBASE_" digunakan sebagai credential untuk mengakses firebase realtime database. Anda dapat membuat project firebase dan mengenerate credential tersebut. Bila Anda ingin mengakses project yang sudah tersedia, Anda dapat mengubungi author untuk mendapatkan credential tersebut*

#### Data scraping
5. Pindah ke directory "Data Scraping/src"
6. Jalankan `py ./app.py    `
7. JSON data akan tersimpan di directory "Data Scraping/data" dengan nama file data.json
<br />

#### Data storing
8. Pindah ke directory "API/src"
9. Jalankan <br />
```
flask db init
flask db migrate
flask db upgrade
```
10. Jalankan `py ./app.py"
11. Program akan berjalan di port http://127.0.0.1:5000

#### API usage (with postman)
12. Buka postman
13. Import file postman collection yang tersedia di repository ini
14. Jalankan API

### JSON Structure
```
  {
    "company_rank": "1",
    "company_name": "Airbnb",
    "company_website": "airbnb.com",
    "company_url_logo": "https://bookface-images.s3.amazonaws.com/small_logos/3e9a0092bee2ccf926e650e59c06503ec6b9ee65.png",
    "company_overview": "Book accommodations around the world.",
    "company_status": "Public",
    "company_batch": "W09",
    "company_headquarters": "San Francisco, CA",
    "company_job_portal": "https://careers.airbnb.com/"
  }
```
### Database Structure
![ERD](https://github.com/addinnabilal/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/design/top%20companies%20ERD.png)
### Screenshots
#### Data storing in local postgre database
![Local Storage](https://github.com/addinnabilal/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/local%20postgre.jpg)
#### Data storing in Firebase realtime database
![Firebase Storage](https://github.com/addinnabilal/Seleksi-2022-Tugas-1/blob/main/Data%20Storing/screenshot/firebase.png)
### References
#### Library Used
- flask, flask_migrate
- json, requests
- BeautigulSoup4
- SQLAlchemy
- marshmallow
- os, sys, dotenv
- firebase_admin
#### Readings
- codementor.io/@olawalealadeusi896/restful-api-with-python-flask-framework-and-postgres-db-part-1-kbrwbygx5 
- https://realpython.com/flask-by-example-part-2-postgres-sqlalchemy-and-alembic/
- https://flask-migrate.readthedocs.io/en/latest/
### Author

Addin Nabilal Huda <br /> 
Computer Science, Institut Teknologi Bandung
