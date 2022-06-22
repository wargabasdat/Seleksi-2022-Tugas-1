package database

import (
	"fmt"
	"log"
	"strconv"
	"api/config"
    "gorm.io/driver/postgres"
    "gorm.io/gorm"
	"gorm.io/gorm/schema"
)


var DB *gorm.DB // variable for the database

// connect to database function
func ConnectDB() {
	var err error
	p := config.Config("DB_PORT")
	port, err := strconv.ParseUint(p, 10, 32)

	if err != nil {
        log.Println("Error parsing DB_PORT:", err)
    }

	// connection URL to connect to Postgres Database
	dsn := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=require", config.Config("DB_HOST"), port, config.Config("DB_USER"), config.Config("DB_PASSWORD"), config.Config("DB_NAME"))
	// connect to the DB and initialize the DB variable
    DB, err = gorm.Open(postgres.Open(dsn), &gorm.Config{
		NamingStrategy: schema.NamingStrategy{
			SingularTable: true, // set table naming to singular
		},
	})

	if err != nil { // failed to connect db
		panic("failed to connect database") // print stack trace error and terminate the program
	}

	fmt.Println("Connection Opened to Database") // if successfuly connected to db
}
