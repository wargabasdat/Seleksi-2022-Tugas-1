package main

import (
	"api/database"
	"fmt"
	"net/http"
	"os"

	"github.com/gorilla/mux"
	"github.com/joho/godotenv"
	"github.com/rs/cors"
)

func main() {
	initDB()

	router := mux.NewRouter().StrictSlash(true)
	router.HandleFunc("/sekolah", GetAllSekolah).Methods("GET")

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080" // Default port if not specified
	}
	c := cors.New(cors.Options{
		AllowedOrigins:   []string{"*"},
		AllowCredentials: true,
	})
	handler := c.Handler(router)
	fmt.Println("Server running on port " + port)
	http.ListenAndServe(":" + port, handler)
}

func initDB() {
	errEnv := godotenv.Load()
	if errEnv != nil {
		panic("Error loading .env file")
	}
	config :=
		database.Config{
			User:     os.Getenv("DB_USER"),
			Password: os.Getenv("DB_PASSWORD"),
			Host:     os.Getenv("DB_HOST"),
			Name:     os.Getenv("DB_NAME"),
			Port:     os.Getenv("DB_PORT"),
		}
	connectionString := database.GetConnectionString(config)
	err := database.Connect(connectionString)
	if err != nil {
		panic(err.Error())
	}
}