from typing import Optional
from pydantic import BaseModel, Field

class DramaSchema(BaseModel):
    judul_drama : str = Field(...)
    jenis_drama : str = Field(...)
    tahun_pembuatan : str = Field(...)
    jumlah_episode : int = Field(..., gt=0)
    rating_drama : float = Field(...)

    class config:
        schema_extra = {
            'example': {
                'judul_drama': 'Drama X',
                'jenis_drama': 'Korean Drama',
                'tahun_pembuatan': '2020',
                'jumlah_episode': 10,
                'rating_drama': 9.0
            }
        }
    
class UpdateDramaModel(BaseModel):
    judul_drama : Optional[str]
    jenis_drama : Optional[str]
    tahun_pembuatan : Optional[str]
    jumlah_episode : Optional[int]
    rating_drama : Optional[float]

    class config:
        schema_extra = {
            'example': {
                'judul_drama': 'Drama Y',
                'jenis_drama': 'Taiwan Drama',
                'tahun_pembuatan': '2021',
                'jumlah_episode': 11,
                'rating_drama': 9.2
            }
        }

def ResponseModel (data, message):
    return {
        'data': [data],
        'code': 200,
        'message': message
    }

def ErrorResponseModel(error, code, message):
    return {"error": error, "code": code, "message": message}