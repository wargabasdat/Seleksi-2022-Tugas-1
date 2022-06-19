from fastapi import FastAPI
from server.routes.users import router as DramaRouter

app = FastAPI()

@app.get("/", tags=["Root"])
async def read_root():
    return {"Welcome to Top Drama Scraper"}

app.include_router(DramaRouter, tags=["Drama"], prefix="/drama")