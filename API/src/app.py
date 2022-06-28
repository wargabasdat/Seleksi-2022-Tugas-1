import os
from dotenv import load_dotenv

from json import load
import sys
sys.path.append("../")

from flask import Flask
import os
from models import db

from config import app_config
from flask_migrate import Migrate
from views.companyView import company_api as company_blueprint
import utils.firebaseUtils

# app initiliazation
load_dotenv()
env_name = os.getenv('FLASK_ENV')
app = Flask(__name__)
app.config.from_object(app_config[env_name])
db.init_app(app)
Migrate(app,db)

app.register_blueprint(company_blueprint, url_prefix='/api/top_companies') 

# run app
if __name__ == "__main__":
    app.run()