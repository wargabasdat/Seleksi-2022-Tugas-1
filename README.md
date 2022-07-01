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
  Data Scraping & Data Storing Website <a href="https://footballdatabase.com/clubs-index">footballdatabase.com</a>
  <br>
  <br>
</h2>

## Description of the data and DBMS
Sepakbola merupakan olahraga yang banyak menarik minat masyarakat. Hal ini dapat dilihat dari banyaknya klub sepakbola di berbagai negara dan dari berbagai benua pula. Di antara klub-klub tersebut, tentunya terdapat perankingan dari berbagai aspek, baik perankingan per negara, per benua, maupun satu dunia. Hal tersebut cukup penting untuk membandingkan performa masing-masing tim. Pada project ini, akan dilakukan data scraping dan data storing terkait perankingan klub-klub sepakbola di masing-masing negara, benua, maupun satu dunia dari website [football database](http://footballdatabase.com/clubs-index). Data yang akan didapat berupa data perankingan masing-masing team sepakbola untuk tingkat negara, tingkat benua, dan tingkat dunia.

DBMS yang akan digunakan ialah MySQL. DBMS ini banyak sekali digunakan serta berbasis SQL. Alasan dipilihnya DBMS ini ialah saya telah cukup familiar dengan DBMS ini serta cukup banyak penyedia penyimpanan database yang gratis untuk DBMS ini.

## Specification of the program
Pada program ini, saya menggunakan bahasa pemrograman TypeScript dan library Puppeteer untuk data scraping dan data storing. Saya juga menggunakan bahasa pemrograman Java dan Spring Boot sebagai framework untuk membuat server API sederhana. Untuk menjalankan program ini, anda membutuhkan beberapa environment berikut:
- Node JS versi 14 ke atas, penulis sarankan versi 16 (16.11.0)
- JVM & JRE
- Intellij IDEA IDE (opsional, tetapi penulis sarankan karena petunjuk menjalankan server ini menggunakan Intellij IDEA IDE)

## How to use
1. Data Scraping
   - `cd "Data Scraping"`
   - `npm ci`
   - `npm run build / npm run build-windows`
   - `npm run scrap [-- [--print-log] [--open-browser] [--write-intermediate]]`
   - `npm run process`

   Note:
   - If error with puppeteer, please try run `npm run puppeteer-install`
   - Flag explanation for `npm run scrap`
     - If you want to add flag, you need to add ` -- ` first
     - `--print-log` is used to log current scraping process
     - `--open-browser` is used to open browser while scraping so user can see scraping progress
     - `--write-intermediate` is used to write intermediate JSON results to files
     - Example: `npm run scrap -- --open-browser --write-intermediate`

2. Data storing
   - `cd "Data Storing"`
   - `cd sql-converter`
   - `npm ci`
   - `npm run build / npm run build-windows`
   - `npm run start`
3. API
   - Import sql export to your local database
   - Rename [application.properties.example](Data%20Storing\api\basdat-api\src\main\resources\application.properties.example) to application.properties and fill required properties' value.
   - Open [pom.xml file](Data%20Storing\api\basdat-api\pom.xml) using Intellij IDEA IDE (Intellij IDEA IDE will automatically resolve dependencies)
   - Run main function of [BasdatApiApplication.java](Data%20Storing\api\basdat-api\src\main\java\com\malikrafsan\basdatapi\BasdatApiApplication.java)
   - Open (http://localhost:8080/swagger-ui.html) to see the API documentation

## JSON Structure
Berikut merupakan struktur JSON hasil scraping dan preprocessing
```ts
{
    continent: string;
    nations: {
        nation: string;
        teams: {
            team: string;
            worldRanking: number;
            continentRanking: number;
            nationRanking: number;
        }[];
    }[];
}[]
```

## Database Structure
Berikut merupakan ER Diagram dari struktur database project ini
![Database ER Diagram](Data%20Storing/diagram/diagram.png)

## Bonus

### API
- Cloud Database
  - Database project ini disimpan di clever cloud. Cloud database ini tidak bisa diakses secara langsung selain yang telah diotorisasi, tetapi bukti penyimpanan akan ditampilkan di Screenshots section

- API Server
  - API server ini di-deploy di Heroku server yang dapat dilihat [di sini](https://warm-harbor-18516.herokuapp.com/). Terkait dokumentasi dapat di-generate menggunakan library Swagger dan dapat dilihat [di sini](http://warm-harbor-18516.herokuapp.com/swagger-ui.html)

## Screenshots
- Data Scraping
  - Scraping Browser
![Scraping Browser](Data%20Scraping/screenshot/scraping-browser.png)
  - Scraping Terminal
![Scraping Terminal](Data%20Scraping/screenshot/scraping-terminal.png)

- Data Storing
  - Database Schema
![Database Schema](Data%20Storing/screenshot/database-schema.png)
  - Data Storing
![Data Storing](Data%20Storing/screenshot/data-storing.png)

- Bonus
  - Cloud Database
![Cloud Database](Data%20Storing/screenshot/cloud-database.png)
  - API Server Local
![API Server Local](Data%20Storing/screenshot/api-server-local.png)
  - API Documentation
![API Documentation](Data%20Storing/screenshot/api-documentation.png)
  - API Documentation Example
![API Documentation Example](Data%20Storing/screenshot/api-documentation-2.png)
  - Remote API Server
![Remote API Server](Data%20Storing/screenshot/api-server.png)
![Remote API Server 2](Data%20Storing/screenshot/api-server-2.png)

## References

### Reading Materials
- [Puppeteer Documentation](https://pptr.dev/)
- [UUID NPM Package](https://www.npmjs.com/package/uuid)
- [Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [Spring Boot Basic Tutorial](https://www.youtube.com/watch?v=VM3rwdMBORY)

### Libraries
- Puppeteer
- UUID
- Spring Boot
- Swagger UI

## Author
   Malik Akbar Hashemi Rafsanjani
   <br/>
   13520105 / Teknik Informatika