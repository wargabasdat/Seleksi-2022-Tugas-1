import firebase_admin
from firebase_admin import credentials, db
import os 
from dotenv import load_dotenv


load_dotenv()
firebase_credentials = {
    "type": os.getenv("FIREBASE_CREDENTIAL_TYPE"),
    "project_id": os.getenv("FIREBASE_CREDENTIAL_PROJECT_ID"),
    "private_key_id": os.getenv("FIREBASE_CREDENTIAL_PRIVATE_KEY_ID"),
    "private_key": os.getenv("FIREBASE_CREDENTIAL_PRIVATE_KEY").replace('\\n', '\n'),
    "client_email": os.getenv("FIREBASE_CREDENTIAL_CLIENT_EMAIL"),
    "client_id": os.getenv("FIREBASE_CREDENTIAL_CLIENT_ID"),
    "auth_uri": os.getenv("FIREBASE_CREDENTIAL_AUTH_URI"),
    "token_uri": os.getenv("FIREBASE_CREDENTIAL_TOKEN_URI"),
    "auth_provider_x509_cert_url": os.getenv("FIREBASE_CREDENTIAL_AUTH_PROVIDER_X509_CERT_URL"),
    "client_x509_cert_url": os.getenv("FIREBASE_CREDENTIAL_CLIENT_X509_CERT_URL")
}

credentials = credentials.Certificate(firebase_credentials)

firebase_admin.initialize_app(credentials,{
    'databaseURL': os.getenv("FIREBASE_DATABASE_URL")
})

def storeToFirebase(database):
    ref = db.reference("/")
    # set nerima dictionary
    ref.set(database)