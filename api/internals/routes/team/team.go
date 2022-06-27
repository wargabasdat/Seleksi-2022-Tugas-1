package teamRoutes

import (
	teamHandler "api/internals/handlers/team"

	"github.com/gofiber/fiber/v2"
)

func SetupTeamRoutes(router fiber.Router) {
	team := router.Group("/team")

	team.Get("/", teamHandler.GetTeams) // read all teams
	team.Get("/:teamId", teamHandler.GetTeam) // read team by id
}