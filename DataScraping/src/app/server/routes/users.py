# Berfungsi untuk me-route request pada API

from fastapi import APIRouter, Body
from fastapi.encoders import jsonable_encoder
from DataScraping.src.app.server.database import(
    get_all_dramas,
    get_drama_by_id,
    add_drama,
    update_drama,
    delete_drama,
    )
from DataScraping.src.app.server.models.drama_structure import(
    DramaSchema,
    UpdateDramaModel,
    ResponseModel,
    ErrorResponseModel,
    )

router = APIRouter()

@router.post('/', response_description = "Drama added successfully")
async def add_drama_data(drama: DramaSchema = Body(...)):
    drama = jsonable_encoder(drama)
    new_drama = await add_drama(drama)
    return ResponseModel(new_drama, "Drama added successfully")

@router.get('/', response_description = "All dramas retrieved")
async def get_all_dramas_data():
    dramas = await get_all_dramas()
    if dramas :
        return ResponseModel(dramas, "All dramas retrieved")
    return ResponseModel(dramas, "No dramas found")

@router.get('/{id}', response_description = "Drama retrieved")
async def get_drama_by_id_data(id):
    drama = await get_drama_by_id(id)
    if drama :
        return ResponseModel(drama, "Drama retrieved")
    return ErrorResponseModel("An error occured", 404, "Drama doesn't exist")

@router.put('/{id}', response_description = "Drama updated successfully")
async def update_drama_data(id: str, request: UpdateDramaModel = Body(...)):
    request = {k: v for k, v in request.dict().items() if v is not None}
    updated_drama = await update_drama(id, request)
    if updated_drama :
        return ResponseModel(updated_drama, "Drama updated successfully")
    return ErrorResponseModel("An error occured", 404, "There was an error updating the drama")

@router.delete('/{id}', response_description = "Drama deleted successfully")
async def delete_drama_data(id: str):
    deleted_drama = await delete_drama(id)
    if deleted_drama :
        return ResponseModel(deleted_drama, "Drama deleted successfully")
    return ErrorResponseModel("An error occured", 404, "There was an error deleting the drama")