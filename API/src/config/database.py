from pymongo import MongoClient

client = MongoClient("mongodb+srv://leoniantoinette:abcdef1234@cluster.sqcmnqb.mongodb.net/?retryWrites=true&w=majority")

db = client.dress_database

collection_name = db.get_collection("BasisData")