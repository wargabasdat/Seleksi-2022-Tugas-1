# ToT Card API

A simple API for storing and accessing Tears of Themis card data that has been scraped from [tot.wiki](https://tot.wiki) and stored in PostgresSQL database created using FastAPI.

## Requirements (local)

- Python 3.6+
- PostgresSQL
- FastAPI

## Installation

<!-- ```
pip install fastapi
pip install "uvicorn[standard]"
``` -->
```
pip install "fastapi[all]"
```

## Usage

### Run locally
```sh
uvicorn main:app --reload
```
The API will be available at [localhost:8000](http://localhost:8000)
The interactive API documentation will be available at [localhost:8000/docs](http://localhost:8000/docs)

### Run from remote
The API is available at [tot-card.herokuapp.com](https://tot-card.herokuapp.com).

## Endpoints

```
GET		/
GET		/api
GET		/api/cards
GET		/api/cards/{id}
GET		/api/skills
GET		/api/skills/{id}
```