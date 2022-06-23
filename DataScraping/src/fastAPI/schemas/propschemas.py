def property_serializer(property) -> dict:
    return {
        "id": str(property["_id"]),
        "nama": property["nama"],
        "title": property["title"],
        "tipe": property["tipe"],
        "kamar_mandi": property["kamar_mandi"],
        "kamar_tidur": property["kamar_tidur"],
        "luas_tanah": property["luas_tanah"],
        "harga_idr": property["harga_idr"],
        "harga_float": property["harga_float"],
        "unit_harga": property["unit_harga"],
        "status_pembayaran": property["status_pembayaran"],
        "kota": property["kota"],
        "Provinsi": property["provinsi"],
        "status": property["status"],
        "link": property["link"]
    }

def properties_serializer(properties) -> list:
    return [property_serializer(property) for property in properties]
    