package router

import (
	playerRoutes "api/internals/routes/player"
	teamRoutes "api/internals/routes/team"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/logger"
)

func SetupRoutes(app *fiber.App) {
	api := app.Group("/api", logger.New()) // create a new group for the API

	playerRoutes.SetupPlayerRoutes(api)
	teamRoutes.SetupTeamRoutes(api)
}