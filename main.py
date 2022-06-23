from fastapi import FastAPI
from DataScraping.src.fastAPI.routes import proproutes

app = FastAPI()
app.include_router(router, tags=["CRUD"], prefix="/a")
