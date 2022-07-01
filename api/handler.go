package main

import (
	"api/database"
	"encoding/json"
	"net/http"
)

type Sekolah struct {
	Ranking int `json:"ranking"`
	Progress int `json:"progress"`
	NPSN string `json:"NPSN"`
	NamaSekolah string `json:"nama_sekolah"`
	NilaiTotal int `json:"nilai_total"`
	Provinsi string `json:"provinsi"`
	KabKota string `json:"kab_kota"`
	Jenis string `json:"jenis"`
}

func GetAllSekolah(w http.ResponseWriter, r *http.Request) {
	var sekolah []Sekolah
	database.Connector.Table("sekolah_top1000_utbk").Find(&sekolah)
	
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(sekolah)
}
