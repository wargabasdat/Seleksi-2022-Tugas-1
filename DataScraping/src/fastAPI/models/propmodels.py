from pydantic import BaseModel

class Property(BaseModel):
    title: str
    nama: str
    badge: str
    tipe: str
    kamar_mandi: int
    kamar_tidur: int
    luas_tanah: float
    harga_idr: int
    harga_float: float
    unit_harga: str
    status_pembayaran: str
    kota: str
    provinsi: str
    status: str
    link: str