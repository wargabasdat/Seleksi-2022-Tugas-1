from fastapi import APIRouter
from DataScraping.src.fastAPI.config.database import collection_name
from DataScraping.src.fastAPI.models.propmodels import Property
from DataScraping.src.fastAPI.schemas.propschemas import properties_serializer, property_serializer
from bson import ObjectId
router = APIRouter()

# retrieve
@router.get("/")
async def get_properties():
    properties = properties_serializer(collection_name.find())
    return {"status": "ok", "data":properties}

@router.get("/city={kota}")
async def get_properties_by_kota(kota: str):
    properties = properties_serializer(collection_name.find({"kota": kota}))
    return {"status": "ok", "data":properties}

@router.get("/{provinsi}")
async def get_properties_by_provinsi(provinsi: str):
    properties = properties_serializer(collection_name.find({"provinsi": provinsi}))
    return {"status": "ok", "data":properties}

@router.post("/")
async def post_property(property: Property):
    _id = collection_name.insert_one(dict(property))
    property = properties_serializer(collection_name.find({"_id": _id.inserted_id}))
    return {"status": "ok", "data":property}

@router.put("/{id}")
async def update_property(id: str, property: Property):
    collection_name.find_one_and_update({"_id": ObjectId(id)}, {
        "$set": dict(property)
    })
    property = properties_serializer(collection_name.find({"_id": ObjectId(id)}))
    return {"status": "ok", "data":property}

@router.delete("/{id}")
async def delete_property(id: str):
    collection_name.find_one_and_delete({"_id": ObjectId(id)})
    return {"status": "ok", "data":[]}