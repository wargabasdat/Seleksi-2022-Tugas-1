package playerHandler

import (
	"github.com/gofiber/fiber/v2"
	"github.com/google/uuid"
	"api/database"
	"api/internal/model"
)	

func GetPlayers(c *fiber.Ctx) error {
	db := database.DB
	var players[]model.Player

	// find all players in database
	db.Find(&players)

	// no player
    if len(players) == 0 {
        return c.Status(404).JSON(fiber.Map{"status": "error", "message": "No players present", "data": nil})
    }

	// else return players
	return c.JSON(fiber.Map{"status": "success", "message": "Players found", "data": players})
}

func GetPlayer(c *fiber.Ctx) error {
	db := database.DB
	var player model.Player

	id := c.Params("playerId")

	// find player by id
	db.Find(&player, "id = ?", id)

	// no player with given id
	if player.ID == uuid.Nil {
		return c.Status(404).JSON(fiber.Map{"status": "error", "message": "No player found", "data": nil})
	}

	// else return player with given id
	return c.JSON(fiber.Map{"status": "success", "message": "Note found", "data": player})
}