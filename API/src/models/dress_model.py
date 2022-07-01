from pydantic import BaseModel

class Dress(BaseModel):
  title: str
  desc: str
  price: int
  colour: list[str]
  size: list[str]
  weight: str
  dimensions: str
