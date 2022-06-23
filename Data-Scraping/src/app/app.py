# Berfungsi sebagai app utama API

from fastapi import FastAPI
from server.routes.users import router as DramaRouter
from mangum import Mangum

app = FastAPI()
handler = Mangum(app)

@app.get("/", tags=["Root"])
async def read_root():
    return {"Welcome to Top Drama Scraper"}

app.include_router(DramaRouter, tags=["Drama_CRUD"], prefix="/drama")