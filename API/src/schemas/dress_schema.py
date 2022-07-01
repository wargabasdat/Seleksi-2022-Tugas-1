def dress_serializer(dress) -> dict:
  return {
    "id": str(dress["_id"]),
    "title": dress["title"],
    "desc": dress["desc"],
    "price": dress["price"],
    "colour": dress["colour"],
    "size": dress["size"],
    "weight": dress["weight"],
    "dimensions": dress["dimensions"]
  }

def dresses_serializer(dresses) -> list:
  return [dress_serializer(dress) for dress in dresses]