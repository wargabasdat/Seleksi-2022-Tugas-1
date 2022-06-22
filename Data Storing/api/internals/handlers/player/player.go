package playerHandler

import (
	"github.com/gofiber/fiber/v2"
	"api/database"
	"api/internals/model"
)	

func GetPlayers(c *fiber.Ctx) error {
	db := database.DB
	var results[]model.Result

	// find all players in database
	db.Table("player").Select(
		`player.player_id, nickname, realname, player.country, age, team.name, rating, dpr, kast, impact, adr,
		kpr, kill_count, hs_percentage, death_count, kd_ratio, map_count`).Joins(`JOIN 
		playerstats ON playerstats.player_id = player.player_id`).Joins(`JOIN 
		team ON player.team_id = team.team_id`).Scan(&results)

	// no player
    if len(results) == 0 {
        return c.Status(404).JSON(fiber.Map{"status": "error", "message": "No players present", "data": nil})
    }

	// else return players
	return c.JSON(fiber.Map{"status": "success", "message": "Players found", "data": results})
}

func GetPlayer(c *fiber.Ctx) error {
	db := database.DB
	var result model.Result

	id := c.Params("playerId") // get the player id

	// find a player in the database with corresponding id
	db.Table("player").Select(
		`player.player_id, nickname, realname, player.country, age, team.name, rating, dpr, kast, impact, adr,
		kpr, kill_count, hs_percentage, death_count, kd_ratio, map_count`).Joins(`JOIN 
		playerstats ON playerstats.player_id = player.player_id`).Joins(`JOIN 
		team ON player.team_id = team.team_id`).Where("player.player_id = ?", id).Scan(&result)

	// no player with given id
	if result.PlayerID == 0 {
		return c.Status(404).JSON(fiber.Map{"status": "error", "message": "No player found", "data": nil})
	}

	// else return player with given id
	return c.JSON(fiber.Map{"status": "success", "message": "Player found", "data": result})
}