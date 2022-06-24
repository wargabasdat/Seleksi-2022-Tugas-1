package teamHandler

import (
	"api/database"
	"api/internals/model"

	"github.com/gofiber/fiber/v2"
)	

func GetTeams(c *fiber.Ctx) error {
	db := database.DB
	var results[]model.TeamResult

	// find all teams in database
	db.Table("team").Select(
		`team.team_id, name, country, rank, coach, win_count, lose_count,
		kill_count, death_count, kd_ratio`).Joins(`JOIN
		teamstats ON teamstats.team_id = team.team_id`).Scan(&results)

	// no teams
	if (len(results) == 0) {
		return c.Status(404).JSON(fiber.Map{"status": "error", "message": "No teams found", "data": nil})
	}

	// else return teams
	return c.JSON(fiber.Map{"status": "success", "message": "Teams found", "data": results})
}

func GetTeam(c *fiber.Ctx) error {
	db := database.DB
	var result model.TeamResult

	id := c.Params("teamId") // get the team id

	// find a team in the database with given id
	db.Table("team").Select(
		`team.team_id, name, country, rank, coach, win_count, lose_count,
		kill_count, death_count, kd_ratio`).Joins(`JOIN
		teamstats ON teamstats.team_id = team.team_id`).Where("team.team_id = ?", id).Scan(&result)
	
	
	// if there is no team with given id
	if result.TeamID == 0 {
		return c.Status(404).JSON(fiber.Map{"status": "error", "message": "No team found", "data": nil})
	}

	// else return team with given id
	return c.JSON(fiber.Map{"status": "success", "message": "Team found", "data": result})
}