package main

import (
	"github.com/gofiber/fiber/v2"
	"api/database"
	"api/router"
)

func main() {
	app := fiber.New() // instantiate a new fiber app
	database.ConnectDB() // connect to the database

	router.SetupRoutes(app) // setup the router
	app.Listen(":8000") // listen on port 8000
}