from msilib.schema import Directory
from msvcrt import setmode
from random import randint
from time import sleep
from bs4 import BeautifulSoup
import requests
import json
import pathlib

hasilModelMobil = [] # Untuk menampung hasil model mobil
hasilReviewModel = [] # Untuk menampung hasil model mobil
hasilMobilBekas = [] # Untuk menampung hasil mobil bekas
hasilPenjual = [] # Untuk menampung hasil penjual

idModelMobilMaju = 1 # ID model mobil
idReviewModel = 1 # ID review terhadap model mobil (bukan mobil bekas yang dijual)
idMobilBekas = 1 # ID mobil bekasnya yang dijual
idPenjualMaju = 1 # ID penjualnya hehe 

setModel = set() # Membuat set untuk ngecek apakah model udah ada apa belum, daripada traversal array
setPenjual = set() # Membuat set untuk ngecek apakah penjual udah ada apa belum, daripada traversal array

# Looping untuk majuin halaman
for pageNumber in range(1,81):
    #Dapetin dulu si file htmlnya pake requests, halamannya diincrement pake pagenumber
    pageParent = requests.get("https://www.mobil123.com/mobil-dijual/indonesia?type=used&page_number="+str(pageNumber)+"&page_size=50")
    print("\033[1;91m======== \033[1;93mMengunjungi \033[1;92mPage "+str(pageNumber)+"\033[1;91m ========\033[0m")  

    # Sleep biar selesai loadingnya, soalnya kalo gak, file html yang didapet sering gak lengkap
    sleep(randint(8,13)) 

    soupParent = BeautifulSoup(pageParent.content, 'html.parser')

    # Soalnya data mobil disimpen berupa json
    jsonListMobil = json.loads(soupParent.find('script', type='application/ld+json').string) 

    # Looping untuk item (50 soalnya 1 halaman nampilin 50 item)
    for x in range(3):

        # Mengambil url untuk tiap mobil di page parent
        urlMobil = jsonListMobil[1]['itemListElement'][x]['item']['mainEntityOfPage']

        # Mengunjungi page tiap mobil
        pageChild = requests.get(urlMobil)
        print("   \033[1;96m> \033[0mMengunjungi \033[1;92mmobil "+str(idMobilBekas)+"\033[0m...")  
        sleep(randint(8,14)) # Sleep biar selesai loadingnya, soalnya kalo gak, file html yang didapet sering gak lengkap

        soupChild = BeautifulSoup(pageChild.content, 'html.parser')
        body = soupChild.find('body', class_='use--nitro theme--id theme--listing-detail')
        head = soupChild.head
        jsonPerMobil = json.loads(soupChild.find('script', type='application/ld+json').string) 

        # Pake try karena gak semua mobil bekas datanya lengkap
        try:
            # Tiap valuenya masukkin ke variable dlu
            brand = jsonPerMobil[0]['brand']['name']
            model = jsonPerMobil[0]['model']
            judulMobilBekas = (jsonPerMobil[0]['name']).strip()
            tipeMobil = jsonPerMobil[0]['bodyType']
            bahanBakar = jsonPerMobil[0]['fuelType']
            kapasitasPenumpang = jsonPerMobil[0]['seatingCapacity']
            warna = jsonPerMobil[0]['color']
            harga = jsonPerMobil[0]['offers']['price']
            tahunProduksi = int((head.find("meta", attrs={'name': 'ga:cad:details:year'}))['content'])
            mileage = int(body.article['data-mileage'])
            transmisi = (head.find("meta", attrs={'name': 'ga:cad:details:transmission'}))['content']
            kapasitasMesin = int(float((head.find("meta", attrs={'name': 'ga:cad:details:engine_cc'}))['content']) * 1000) # Dikonversi ke cc
        except:
            continue # Skip mobil bekas yang ini karena data tidak lengkap

        # Mengambil value penjual yang ada di laman mobil
        namaPenjual = ((head.find("meta", attrs={'name': 'ga:cad:details:dealership_name'}))['content']).strip()
        tipePenjual = (head.find("meta", attrs={'name': 'ga:cad:details:profile_type'}))['content']
        kotaPenjual = jsonPerMobil[0]['offers']['seller']['homeLocation']['address']['addressLocality']
        provinsiPenjual = jsonPerMobil[0]['offers']['seller']['homeLocation']['address']['addressRegion']

        # Mengecek apakah model dari mobil bekas udah ada apa belum
        strBrandModel = str(brand)+" "+str(model)
        if strBrandModel in setModel:
            idModelDicari = 1

            # Karena ada, cari idModel nya
            for objModel in hasilModelMobil:
                if ((objModel['brand'] == brand) and (objModel['model'] == model)):
                    idModelMobil = idModelDicari
                    idModelMobilMaju -= 1 
                    break
                idModelDicari += 1

        else:

            # Karena belum ada, masukkin data dari model ini
            idModelMobil = idModelMobilMaju

            setModel.add(strBrandModel)
            dataModelMobil = {'idModel':idModelMobil,
            'brand' : brand,
            'model' : model,
            'tipeMobil' : tipeMobil}
            hasilModelMobil.append(dataModelMobil)

            # Mengambil review terhadap model tersebut
            try : # Pake try karena gak semua model mobil ada reviewnya

                for review in jsonPerMobil[0]['review']:
                    namaReviewer = review["author"]["name"]
                    waktuReview = review["datePublished"]
                    judulReview = (review["name"]).strip()
                    bodyReview = (review["reviewBody"]).replace("\r\n", " ") # Sedikit cleaning
                    rating = review["reviewRating"]["ratingValue"]

                    dataReview = {"idReview" : idReviewModel,
                    "idModelMobil" : idModelMobil,
                    "namaReviewer" : namaReviewer,
                    "waktuReview" : waktuReview,
                    "judulReview" : judulReview,
                    "bodyReview" : bodyReview,
                    "rating" : rating}

                    hasilReviewModel.append(dataReview)

                    idReviewModel += 1
            
            except :
                pass # Tidak melakukan apa-apa

        # Mengecek apakah penjual udah ada apa belum
        if namaPenjual in setPenjual:
            idPenjualDicari = 1

            # Karena ada, cari idPenjual nya
            for objPenjual in hasilPenjual:
                if (objPenjual['namaPenjual'] == namaPenjual):
                    idPenjual = idPenjualDicari
                    idPenjualMaju -= 1 
                    break
                idPenjualDicari += 1

        else:
            idPenjual = idPenjualMaju

            setPenjual.add(namaPenjual)
            dataPenjual = {'idPenjual' : idPenjual,
            'namaPenjual' : namaPenjual,
            'tipePenjual': tipePenjual,
            'kotaPenjual': kotaPenjual,
            'provinsiPenjual': provinsiPenjual}

            # Append objeknya ke array hasilPenjual
            hasilPenjual.append(dataPenjual)

        # Dijadikan 1 objek json untuk mobil bekas
        dataMobilBekas = {'idMobilBekas': idMobilBekas, 
        'judulMobilBekas' : judulMobilBekas,
        'idModel' : idModelMobil,
        'transmisi' : transmisi,
        'kapasitasMesin' : kapasitasMesin,
        'bahanBakar': bahanBakar, 
        'kapasitasPenumpang': kapasitasPenumpang, 
        'warna': warna, 
        'harga': harga, 
        'mileage':mileage, 
        'tahunProduksi' : tahunProduksi,
        'urlMobil': urlMobil, 
        'idPenjual': idPenjual}

        # Append objeknya ke hasilMobilBekas
        hasilMobilBekas.append(dataMobilBekas)

        idModelMobilMaju += 1 
        idMobilBekas += 1
        idPenjualMaju += 1

    # Melakukan dump berupa file json per page untuk jaga jaga

    parentDirectory = pathlib.Path(__file__).parent.resolve().parents[0]

    (parentDirectory/'data').mkdir(exist_ok=True)
    dataDirectory = (parentDirectory/'data')

    with open(pathlib.Path(dataDirectory/'modelMobil.json'), 'w', encoding='utf8') as f:
            json.dump(hasilModelMobil, f, indent=8, ensure_ascii=False)

    with open(pathlib.Path(dataDirectory/'reviewModel.json'), 'w', encoding='utf8') as f:
            json.dump(hasilReviewModel, f, indent=8, ensure_ascii=False)

    with open(pathlib.Path(dataDirectory/'mobilBekas.json'), 'w', encoding='utf8') as f:
            json.dump(hasilMobilBekas, f, indent=8, ensure_ascii=False)

    with open(pathlib.Path(dataDirectory/'penjual.json'), 'w', encoding='utf8') as f:
            json.dump(hasilPenjual, f, indent=8, ensure_ascii=False)
    print("\033[0;35mbackup ke json dlu yey >:D\033[0m")


    print("\033[1;91m======== \033[1;92mPage "+str(pageNumber)+"\033[1;93m selesai \033[1;91m ========\033[0m\n")

print(setModel)