package main

import (
	"api/database"
	"api/router"

	"github.com/gofiber/fiber/v2"
)

// test deploy 2

func main() {
	app := fiber.New() // instantiate a new fiber app
	app.Get("/", index)

	database.ConnectDB() // connect to the database

	router.SetupRoutes(app) // setup the router
	app.Listen(":8000") // listen on port 8000
}

func index(c *fiber.Ctx) error { // handler function for "/" route
	c.Set(fiber.HeaderContentType, fiber.MIMETextHTML)
	return c.SendString(`<h1>Selamat datang!</h1>

	<p>API sederhana ini digunakan untuk mengakses data pemain dan tim CSGO yang disimpan dalam basis data.
	Silahkan akses <a href="/player">player</a> dan <a href="/team">team</a> untuk melihat data pemain dan tim CSGO.
	Tambahkan ID pemain (/player/:playerId) atau ID tim (/player/:teamId) untuk mengakses pemain dan tim berdasarkan ID-nya. Contoh: <a href="/player/1">player/1</a></p>
	
	<h4>Dibuat oleh 13520118 - Mohamad Daffa Argakoesoemah</h4>`)
}