from pymongo import MongoClient
client = MongoClient("mongodb://mzakyyyy:Vangaal01@ac-e3kqcmr-shard-00-00.szlkred.mongodb.net:27017,ac-e3kqcmr-shard-00-01.szlkred.mongodb.net:27017,ac-e3kqcmr-shard-00-02.szlkred.mongodb.net:27017/?ssl=true&replicaSet=atlas-ruo83o-shard-0&authSource=admin&retryWrites=true&w=majority")

db = client.PropertyDatabase
collection_name = db.get_collection("TugasLabBasisData")