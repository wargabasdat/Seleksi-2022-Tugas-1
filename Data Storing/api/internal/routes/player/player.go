package playerRoutes

import "github.com/gofiber/fiber/v2"

func SetupPlayerRoutes(router fiber.Router) {
	player := router.Group("player")

	player.Get("/", func(c *fiber.Ctx) error{}) // read all players
	player.Get("/:playerId", func(c *fiber.Ctx) error{}) // read player by id
}