import json
from bs4 import BeautifulSoup
import requests
import time
import os

headers = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36'}

def extract_luas_tanah(luas_tanah): #Fungsi untuk mengambil angka dari 'luas tanah' dan membentuknya dalam format data float.
    luas = luas_tanah.split(' ')
    if(luas[0].__contains__(',')):
        return luas[0].replace(',','')
    return float(luas[0])

def extract_harga_juta(harga): #Fungsi untuk mengambil angka dari 'harga' yang bertipe jutaan, sehingga sudah tidak ada satuan 'Rp' dan tidak dipisahkan oleh tanda ','.
    hargasplit = harga.split(' ')
    return float(hargasplit[1].replace(',', ''))

def extract_harga_miliar(harga): #Fungsi untuk mengambil angka dari 'harga' yang bertipe miliar, sehingga sudah tidak ada satuan 'Rp'.
    hargasplit = harga.split(' ')
    return float(hargasplit[1])

def extract_kota(lokasi): #Fungsi untuk mengambil nama kota dari 'lokasi'.
    return lokasi.split(',')[0]

def extract_provinsi(lokasi): #Fungsi untuk mengambil nama provinsi dari 'lokasi' dan menghilangkan spasi yang berada di awal.
    return (lokasi.split(',')[1])[1:]

def scraping_pages(data, object, firstPage, lastPage): #Fungsi utama untuk melakukan scraping yang menerima masukan 'data' berupa ['rent', 'sale'] sebagai parameter searching.
    count_pages = 1 #Menghitung jumlah halaman yang sudah di scrape.
    print("Memulai scraping "+data+" properties.")
    for page in range(firstPage, lastPage+1):
        n = 0 #Untuk menghitung banyak data yang di scrape dari sebuah halaman.
        template = "https://www.dotproperty.id/properties-for-{}"
        pages = requests.get(template.format(data)+"?page="+str(page), headers=headers)
        soup = BeautifulSoup(pages.text, 'html.parser')
        properti = soup.find_all(True, {'class':['search-list normal', 'search-list featured', 'search-list premium']})
        for item in properti:
            tag = item.find('div', 'right-block')
            
            #Title dari properti.
            title = item.a.get('title')
            
            #Link dari properti
            link = item.a.get('href')
            
            #Harga dan unit harga dari properti.
            harga = tag.find('div', 'price').text.strip()
            unit = ''
            try:
                if (harga.__contains__('Milyar')):
                    unit = 'Miliar'
                    hargaint = extract_harga_miliar(harga) #harga dalam bentuk float (Contoh: 2.85)
                    harga_idr = int(hargaint*10**9) #harga dalam bentuk rupiah secara utuh (Contoh: 2850000000)
                else:
                    unit = 'Juta'
                    hargaint = extract_harga_juta(harga)/10**6
                    harga_idr = int(extract_harga_juta(harga))
            except ValueError:
                unit = ''
                hargaint = ''
            
            #Badge dari properti ['Normal', 'Utama', 'Premium']
            try:
                badge = item.find('div', 'rectangle-badge').text.strip()
            except AttributeError:
                badge = 'Normal'
            
            #Nama dari properti
            nama = tag.h3.text.strip()
            
            #Lokasi dari properti yang dipecah menjadi kota dan provinsi
            lokasi = tag.find('div', 'location').text.strip()
            if (lokasi.__contains__(',')):
                kota = extract_kota(lokasi)
                provinsi = extract_provinsi(lokasi)
            else:
                kota = ''
                provinsi = extract_kota(lokasi)
                
            #Tipe properti
            tipe = tag.find('div', 'hidden-property-type hidden').text
            
            #Accomodation(Kamar mandi, Kamar tidur, Luas tanah)
            ul = tag.find('ul')
            acc = []
            for li in ul.find_all('li'):
                acc.append(li.span.text)
            if(len(acc) == 3):
                kamar_mandi = int(acc[0])
                kamar_tidur = int(acc[1])
                luas_tanah = acc[2]
                luas_int = extract_luas_tanah(luas_tanah)
            else:
                acckamar = []
                for item in acc:
                    if(item.__contains__('m2')):
                        luas_tanah = item
                        luas_int = extract_luas_tanah(luas_tanah)
                    else:
                        acckamar.append(item)
                        luas_tanah = ''
                if(len(acckamar) == 2):
                    kamar_tidur = int(acckamar[0])
                    kamar_mandi = int(acckamar[1])
                elif(len(acckamar) == 1):
                    kamar_tidur = int(acckamar[0])
                    kamar_mandi = ''
                elif(len(acckamar) == 0):
                    kamar_tidur = ''
                    kamar_mandi = ''
            
            #Status apakah disewakan atau dijual
            status = ''
            if(data == 'rent'):
                status = 'Disewakan'
            elif(data == 'sale'):
                status = 'Dijual'
            
            pembayaran = ''
            if (status == 'Disewakan'):
                pembayaran = "Per "+tag.small.text.strip()

            value = {
                "title": title, 
                "nama": nama,
                "badge": badge,
                "tipe": tipe,
                "kamar_mandi": kamar_mandi,
                "kamar_tidur": kamar_tidur, 
                "luas_tanah": luas_int,
                "harga_idr": harga_idr,
                "harga_float": hargaint,
                "unit_harga": unit,
                "status_pembayaran": pembayaran,
                "kota": kota,
                "provinsi": provinsi,
                "status": status,
                "link": link
                    }
            object.append(value)
            n += 1
        print("Berhasil melakukan scraping halaman ke-"+str(count_pages)+" sebanyak "+str(n)+" data.")
        count_pages += 1
        time.sleep(1) #Agar tidak diblock
    print("Data "+str(data)+" telah selesai di-scrape")

def main(listdata1, listdata2):
    filename = input("Nama File: ")
    listdata1 = []
    listdata2 = []
    scraping_pages('sale', listdata1, 1, 50)
    scraping_pages('rent', listdata2, 1, 50)
    combinelist = listdata1 + listdata2
    
    filepath = 'G:/My Drive/Tugas Lab Basis Data/Seleksi-2022-Tugas-1/DataScraping/data'
    dump = json.dumps(combinelist, indent=4)
    filepath = os.path.join(filepath, filename + ".json")
    with open(filepath, "w") as file:
        file.write(dump)
        file.close()

sale = []
rent = []
main(sale, rent)
