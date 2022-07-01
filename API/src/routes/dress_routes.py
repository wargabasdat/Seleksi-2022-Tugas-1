from fastapi import APIRouter
from API.src.config.database import collection_name
from API.src.models.dress_model import Dress
from API.src.schemas.dress_schema import dresses_serializer
from bson import ObjectId

dress_api_router = APIRouter()

# retrieve
# all dresses
@dress_api_router.get("/")
async def get_dresses():
  dresses = dresses_serializer(collection_name.find())
  return {"data": dresses}

# by id
@dress_api_router.get("/{id}")
async def get_dress_by_id(id: str):
  dress = dresses_serializer(collection_name.find({"_id": ObjectId(id)}))
  return {"data": dress}

# by title
@dress_api_router.get("/title/{title}")
async def get_dress_by_title(title: str):
  dress = dresses_serializer(collection_name.find({"title": title}))
  return {"data": dress}

# post
@dress_api_router.post("/")
async def post_dress(dress: Dress):
  _id = collection_name.insert_one(dress.dict())
  dress = dresses_serializer(collection_name.find({"_id": _id.inserted_id}))
  return {"data": dress}

# update
@dress_api_router.put("/{id}")
async def update_dress(id: str, dress: Dress):
  collection_name.find_one_and_update({"_id": ObjectId(id)}, {"$set": dress.dict()})
  dress = dresses_serializer(collection_name.find({"_id": ObjectId(id)}))
  return {"data": dress}

# delete
@dress_api_router.delete("/{id}")
async def delete_dress(id: str):
  collection_name.find_one_and_delete({"_id": ObjectId(id)})
  return {"data": []}
