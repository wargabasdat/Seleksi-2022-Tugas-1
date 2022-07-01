import json
import os


class LTMPTCleaner():
    """ Kelas untuk membersihkan data hasil scrape. """

    def __init__(self, json_file_path) -> None:
        self.json_file_path = json_file_path
        self.json_data = None

    def clean(self):
        """ 
        Membersihkan data dengan:
        - mengubah format data dari list of string menjadi string,
        - mengubah format beberapa data dari string menjadi integer atau float,
        - menghapus white space pada data string, dan
        - menghapus data yang tidak diperlukan.
        """
        
        self.open()
        for i in range(len(self.json_data)):
            self.json_data[i]['ranking'] = int(self.json_data[i]['ranking'][0])

            progress_indicator = self.json_data[i]['progress_indicator'].replace('color:', '')
            progress = self.json_data[i]['progress']
            if progress_indicator == 'grey':
                progress = 0
            else:
                progress = int(progress[0])
                if progress_indicator == 'red':
                    progress = 0 - progress
            _ = self.json_data[i].pop('progress_indicator')

            self.json_data[i]['progress'] = progress
            self.json_data[i]['NPSN'] = self.json_data[i]['NPSN'][0]
            self.json_data[i]['nama_sekolah'] = self.json_data[i]['nama_sekolah'][0].strip()
            self.json_data[i]['nilai_total'] = float(self.json_data[i]['nilai_total'][0].replace(',', '.'))
            self.json_data[i]['provinsi'] = self.json_data[i]['provinsi'][0]
            self.json_data[i]['kab_kota'] = self.json_data[i]['kab_kota'][0]
            self.json_data[i]['jenis'] = self.json_data[i]['jenis'][0].strip()

        self.json_data = sorted(self.json_data, key=lambda x: x['ranking'])
        self.save()

    def open(self):
        """ Membuka file JSON. """
        
        with open(self.json_file_path, 'r') as f:
            self.json_data = json.load(f)

    def save(self):
        """ Menyimpan file JSON. """
        
        file_name = os.path.basename(self.json_file_path)
        file_name = os.path.splitext(file_name)[0] + '_cleaned.json'
        with open('../data/' + file_name, 'w') as f:
            json.dump(self.json_data, f, indent=2)
