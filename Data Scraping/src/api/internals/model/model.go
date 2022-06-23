package model

import (
	"github.com/google/uuid"
)

type Result struct {
	PlayerID  uint `gorm:"primary_key"`
	Nickname string
	Realname string
	Country string
	Age int
	Team string `gorm:"column:name"`
	Rating float64
	DPR float64
	KAST float64
	IMPACT float64
	ADR float64
	KPR float64
	KillCount int
	HSPercentage float64
	DeathCount int
	KDRatio float64
	MapCount int
}

type Player struct {
	PlayerID  uint `gorm:"primary_key"`
	Nickname string
	Realname string
	Country string
	Age int
	TeamID uint 
	Team Team `gorm:"foreignKey: TeamID"`
}

type PlayerStats struct {
	PlayerStatsID  uint `gorm:"primary_key"`
	Rating float64
	DPR float64
	KAST float64
	IMPACT float64
	ADR float64
	KPR float64
	Kills int
	HSPercentage float64
	Deaths int
	KDRatio float64
	MapsPlayed int
	PlayerID uint 
	Player Player `gorm:"foreignKey: PlayerID"`
}

type Team struct {
	ID 	  uuid.UUID `gorm:"primary_key"`
	Name string
	Country string
	Rank int
	Coach string
	Wins int
	Draws int
	Losses int
	Kills int
	Deaths int
	KDRatio float64
}