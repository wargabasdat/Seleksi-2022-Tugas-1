from fastapi import FastAPI
from routes.dress_routes import dress_api_router

app = FastAPI()

app.include_router(dress_api_router)