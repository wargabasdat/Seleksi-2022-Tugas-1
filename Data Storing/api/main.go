package main

import (
	"github.com/gofiber/fiber/v2"
	"api/database"
)

func main() {
	app := fiber.New() // new fiber app

	database.ConnectDB() // connect to the database

	app.Get("/", func(c *fiber.Ctx) error {
		err := c.SendString("This is our API")
		return err
	})

	app.Listen(":8000") // listen on port 8000
}