from scrapy.crawler import CrawlerProcess
from Data_Cleaning.LTMPTCleaner import LTMPTCleaner
from LTMPT_Scraper.LTMPT_Scraper.spiders.LTMPTScraper import LTMPTScraper

print("Data Scraping Website LTMPT 1000 Sekolah")
print("Terbaik Berdasarkan Nilai UTBK Tahun 2021")
print("=========================================")
print("Masukkan nama file untuk menyimpan data")
print("hasil scrape dalam format JSON.")
print("Contoh: sekolah.json\n")

filename = input("Nama file: ")
path = '../data/' + filename

process = CrawlerProcess(settings={
    "FEEDS": {
        path: {"format": "json", "encoding": "utf-8", "overwrite": True}
    },
    "LOG_ENABLED": False
})

print("Mulai scraping...")
process.crawl(LTMPTScraper)
process.start()
print("Selesai scraping...")

print("Mulai membersihkan data...")
cleaner = LTMPTCleaner(path)
cleaner.clean()
print("Selesai membersihkan data...")
