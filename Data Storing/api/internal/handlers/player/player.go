package playerHandler

import (
	"github.com/gofiber/fiber/v2"
	"api/database"
	"api/internal/model"
)	

func GetPlayer(c *fiber.Ctx) error {
	db := database.DB
	var players[]model.Player

	// find all players in database
	db.Find(&players)

	// no player
    if len(players) == 0 {
        return c.Status(404).JSON(fiber.Map{"status": "error", "message": "No notes present", "data": nil})
    }

	// else return players
	return c.JSON(fiber.Map{"status": "success", "message": "Notes found", "data": players})
}