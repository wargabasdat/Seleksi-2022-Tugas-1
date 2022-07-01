from marshmallow import fields, Schema
import datetime
from . import db

class CompanyModel(db.Model):

    # table name
    __tablename__ = 'company'

    company_rank = db.Column(db.Integer, primary_key=True)
    company_name = db.Column(db.String(35), nullable=False)
    company_website = db.Column(db.String(50), nullable=False)
    company_url_logo = db.Column(db.String(150), nullable=True)
    company_overview = db.Column(db.String(200), nullable=False)
    company_status = db.Column(db.String(6), nullable=False)
    company_batch = db.Column(db.String(5), nullable=False)
    company_breakthrough = db.Column(db.Boolean, nullable=False)
    company_headquarters = db.Column(db.String(50), nullable=False)
    company_job_portal = db.Column(db.String(150), nullable=True)

    # class constructor
    def __init__(self, data):
        """
        Class constructor
        """
        self.company_rank = data.get('company_rank')
        self.company_name = data.get('company_name')
        self.company_website = data.get('company_website')
        self.company_url_logo = data.get('company_url_logo')
        self.company_overview = data.get('company_overview')
        self.company_status = data.get('company_status')
        self.company_batch = data.get('company_batch')
        self.company_breakthrough = data.get('company_breakthrough')
        self.company_headquarters = data.get('company_headquarters')
        self.company_job_portal = data.get('company_job_portal')

    def add(self):
        db.session.add(self)
        db.session.commit()

    def update(self, data):
        for key, item in data.items():
            setattr(self, key, item)
            db.session.commit()

    def delete(self):
        db.session.delete(self)
        db.session.commit()

    @staticmethod
    def get_all_compamies():
        return CompanyModel.query.all()

    @staticmethod
    def get_one_company(company_rank):
        return CompanyModel.query.get(company_rank)

    
    def __repr(self):
        return '<company_rank {}>'.format(self.company_rank)

class CompanySchema(Schema):
    """
    Company Schema
    """
    company_rank = fields.Int(required=True)
    company_name = fields.Str(required=True)
    company_website = fields.Str(required=True)
    company_url_logo = fields.Str(required=True)
    company_overview = fields.Str(required=True)
    company_status = fields.Str(required=True)
    company_batch = fields.Str(required=True)
    company_breakthrough = fields.Boolean(required=True)
    company_headquarters = fields.Str(required=True)
    company_job_portal = fields.Str(required=True)