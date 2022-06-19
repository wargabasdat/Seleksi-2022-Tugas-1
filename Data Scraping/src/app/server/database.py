import motor.motor_asyncio
from bson.objectid import ObjectId
import certifi

url = "mongodb+srv://admin:qOlkI6IgxiwE1Zai@clusterv.upxpd7q.mongodb.net/?retryWrites=true&w=majority"

ca = certifi.where()
client = motor.motor_asyncio.AsyncIOMotorClient(url, tlsCAFile=ca)

database = client.SeleksiAsLab

drama_collection = database.get_collection("tugas1")

# Parser from Mongo to Python
def drama_parser(drama) -> dict:
    return {
        "id": str(drama["_id"]),
        "judul_drama": drama["judul_drama"],
        "jenis_drama": drama["jenis_drama"],
        "tahun_pembuatan": drama["tahun_pembuatan"],
        "jumlah_episode": drama["jumlah_episode"],
        "rating_drama": drama["rating_drama"],
    }

# CRUD Operations below

# Retrieve all dramas
async def get_all_dramas():
    dramas = []
    async for drama in drama_collection.find():
        dramas.append(drama_parser(drama))
    return dramas

# Retrieve a drama by id
async def get_drama_by_id(id: str) -> dict:
    drama = await drama_collection.find_one({"_id": ObjectId(id)})
    if drama:
        return drama_parser(drama)
    
# Create/add a new drama
async def add_drama(drama: dict) -> dict:
    drama = await drama_collection.insert_one(drama)
    new_drama = await drama_collection.find_one({"_id": drama.inserted_id})
    return drama_parser(new_drama)

# Update a drama by id
async def update_drama(id: str, data: dict):
    # Return false if an empty request body is sent.
    if len(data) < 1:
        return False

    drama = await drama_collection.find_one({"_id": ObjectId(id)})

    if drama:
        updated_drama = await drama_collection.update_one(
            {"_id": ObjectId(id)}, {"$set": data}
        )
        if updated_drama:
            return True
        return False

# Delete a student from the database
async def delete_drama(id: str):
    drama = await drama_collection.find_one({"_id": ObjectId(id)})
    if drama:
        await drama_collection.delete_one({"_id": ObjectId(id)})
        return True