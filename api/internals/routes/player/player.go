package playerRoutes

import (
	playerHandler "api/internals/handlers/player"

	"github.com/gofiber/fiber/v2"
)	

func SetupPlayerRoutes(router fiber.Router) {
	player := router.Group("/player")

	player.Get("/", playerHandler.GetPlayers) // read all players
	player.Get("/:playerId", playerHandler.GetPlayer) // read player by id
}