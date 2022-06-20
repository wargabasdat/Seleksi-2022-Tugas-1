package router

import (
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/logger"
	playerRoutes "api/internals/routes/player"
)

func SetupRoutes(app *fiber.App) {
	api := app.Group("/api", logger.New())

	playerRoutes.SetupPlayerRoutes(api)
}