package model

type PlayerResult struct {
	PlayerID     uint `gorm:"primary_key"`
	Nickname     string
	Realname     string
	Country      string
	Age          int
	Team         string `gorm:"column:name"`
	Rating       float64
	DPR          float64
	KAST         float64
	Impact       float64
	ADR          float64
	KPR          float64
	KillCount    int
	HSPercentage float64
	DeathCount   int
	KDRatio      float64
	MapCount     int
}

type TeamResult struct {
	TeamID     uint `gorm:"primary_key"`
	Name       string
	Country    string
	Rank       *int    // use pointer to int because rank can be null
	Coach      *string // use pointer to string because coach can be null
	WinCount   int
	LoseCount  int
	KillCount  int
	DeathCount int
	KDRatio    float64
}

type Player struct {
	PlayerID uint `gorm:"primary_key"`
	Nickname string
	Realname string
	Country  string
	Age      int
	TeamID   uint
	Team     Team `gorm:"foreignKey: TeamID"`
}

type PlayerStats struct {
	PlayerStatsID uint `gorm:"primary_key"`
	Rating        float64
	DPR           float64
	KAST          float64
	Impact        float64
	ADR           float64
	KPR           float64
	KillCount     int
	HSPercentage  float64
	DeathCount    int
	KDRatio       float64
	MapCount      int
	PlayerID      uint
	Player        Player `gorm:"foreignKey: PlayerID"`
}

type Team struct {
	TeamID     uint `gorm:"primary_key"`
	Name       string
	Country    string
	Rank       *int    // use pointer to int because rank can be null
	Coach      *string // use pointer to string because coach can be null
	WinCount   int
	LoseCount  int
	KillCount  int
	DeathCount int
	KDRatio    float64
}

type TeamStats struct {
	TeamStatsID uint `gorm:"primary_key"`
	WinCount    int
	LoseCount   int
	KillCount   int
	DeathCount  int
	KDRatio     float64
	TeamID      uint
	Team        Team `gorm:"foreignKey: TeamID"`
}