from fastapi import FastAPI
from API.src.routes.dress_routes import dress_api_router

app = FastAPI()

@app.get("/")
async def get_root():
    return {"Dress Database"}

app.include_router(dress_api_router, prefix="/dress")