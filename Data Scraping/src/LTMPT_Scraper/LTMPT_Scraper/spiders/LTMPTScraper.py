import scrapy


class LTMPTScraper(scrapy.Spider):
    """ Kelas untuk scrape data 1000 sekolah terbaik berdasarkan nilai UTBK tahun 2021 """

    name = "LTMPTScraper"

    def start_requests(self):
        urls = [
            'https://top-1000-sekolah.ltmpt.ac.id/?page={}&per-page=100'.format(i) for i in range(1, 11)]

        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse)

    def parse(self, response):
        for i in range(1, 101):
            for sekolah in response.css('#w0 > table > tbody'):
                ranking = sekolah.css(
                    'tr:nth-child(' + str(i) + ') > td:nth-child(1)::text').extract()
                progress_indicator = sekolah.css(
                    'tr:nth-child(' + str(i) + ') > td:nth-child(2) > i::attr(style)').extract_first()
                progress = sekolah.css(
                    'tr:nth-child(' + str(i) + ') > td:nth-child(2)::text').extract()
                npsn = sekolah.css(
                    'tr:nth-child(' + str(i) + ') > td:nth-child(3)::text').extract()
                nama_sekolah = sekolah.css(
                    'tr:nth-child(' + str(i) + ') > td:nth-child(4)::text').extract()
                nilai_total = sekolah.css(
                    'tr:nth-child(' + str(i) + ') > td:nth-child(5)::text').extract()
                provinsi = sekolah.css(
                    'tr:nth-child(' + str(i) + ') > td:nth-child(6)::text').extract()
                kab_kota = sekolah.css(
                    'tr:nth-child(' + str(i) + ') > td:nth-child(7)::text').extract()
                jenis = sekolah.css(
                    'tr:nth-child(' + str(i) + ') > td:nth-child(8)::text').extract()

                yield {
                    'ranking': ranking,
                    'progress_indicator': progress_indicator,
                    'progress': progress,
                    'NPSN': npsn,
                    'nama_sekolah': nama_sekolah,
                    'nilai_total': nilai_total,
                    'provinsi': provinsi,
                    'kab_kota': kab_kota,
                    'jenis': jenis
                }
