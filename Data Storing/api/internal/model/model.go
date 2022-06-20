package model

import (
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type Player struct {
	gorm.Model
	ID        uuid.UUID `gorm:"type:uuid;primary_key"`
	Nickname string
	Realname string
	Country string
	Age int
	Team string
	Rating float64
	DPR float64
	KAST float64
	IMPACT float64
	ADR float64
	KPR float64
	Kills int
	HSPercentage float64
	Deaths float64
	KDRatio float64
	MapsPlayed float64
}