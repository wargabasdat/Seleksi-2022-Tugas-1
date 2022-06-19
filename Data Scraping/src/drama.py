from bs4 import BeautifulSoup
import requests
import json
from tqdm import tqdm

url = "https://mydramalist.com/search?adv=titles&ty=68,83&so=top&page="

# Membuat class data_drama yang fungsinya untuk membuat setiap drama menjadi suatu objek
class data_drama:
    def __init__(self, judul_drama, jenis_drama, tahun_pembuatan, jumlah_episode, rating_drama):
        self.judul_drama = judul_drama
        self.jenis_drama = jenis_drama
        self.tahun_pembuatan = tahun_pembuatan
        self.jumlah_episode = jumlah_episode
        self.rating_drama = rating_drama

    def print_objek(self):
        print(f'''
            Judul Drama: {self.judul_drama}
            Jenis Drama: {self.jenis_drama}
            Tahun Pembuatan: {self.tahun_pembuatan}
            Jumlah Episode: {self.jumlah_episode}
            Rating Drama: {self.rating_drama}
        ''')

# Membuat sebuah array untuk menampung objek drama
list_drama = []

halaman = 0

for page in range(1, 101):
    halaman += 1
    print ('Scrapping Halaman : ', halaman)
    page = requests.get(url+str(page))
    soup = BeautifulSoup(page.text, 'html.parser')
    dramas = soup.findAll('div', 'box-body')

    for drama in tqdm(dramas):

        # Kolom Judul Drama
        try :
            judul_drama = ''.join(drama.find('h6', 'text-primary title').text.split('\n'))
        except (AttributeError) :
            continue

        try : 
            info_drama = drama.find('span', 'text-muted').text.split('-')
        except (IndexError): 
            continue
        
        # Kolom Jenis Drama
        jenis_drama = info_drama[0].replace(' ', '')

        # Kolom Tahun Pembuatan Drama
        info_drama_2 = info_drama[1].split(',')
        tahun_pembuatan = info_drama_2[0].replace(' ', '')

        # Kolom Jumlah Episode
        jumlah_episode = int(info_drama_2[1].replace(' ', '').replace('episodes', ''))

        # Kolom Rating Drama
        rating_drama = float(drama.find('span', 'p-l-xs score').text)
        
        # Membuat objek drama baru
        drama_baru = data_drama(judul_drama, jenis_drama, tahun_pembuatan, jumlah_episode, rating_drama)
        # drama_baru.print_objek()

        # Menambahkan objek drama baru ke dalam array
        list_drama.append(drama_baru)

# Meng-export list_drama ke dalam file berformat json
with open("dramalist.json", "w") as write_file:
    json.dump([obj.__dict__ for obj in list_drama], write_file, indent=4)