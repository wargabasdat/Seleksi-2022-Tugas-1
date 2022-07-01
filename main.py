from fastapi import FastAPI
from API.src.routes.dress_routes import dress_api_router

app = FastAPI()

app.include_router(dress_api_router)