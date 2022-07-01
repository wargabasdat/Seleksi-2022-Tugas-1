from flask import request, json, Response, Blueprint
from models.companyModel import CompanyModel, CompanySchema
from marshmallow import ValidationError
from sqlalchemy.exc import SQLAlchemyError
from utils.firebaseUtils import storeToFirebase

company_api = Blueprint('companies', __name__)
company_schema = CompanySchema()

@company_api.route('/add_companies', methods=['POST'])
def add_companies():
    print(request)
    for req in request.get_json():
        try:
          data = company_schema.load(req)
        except ValidationError as err:
          return custom_response(err.messages, 400)

        # check if user already exist in the db
        company_in_db = CompanyModel.get_one_company(data.get('company_rank'))
        if company_in_db:
            message = {'error': 'Company already exist, please supply another email address'}
            return custom_response(message, 400)
        
        company = CompanyModel(data)
        company.add()

    updateFirebaseData()
    return custom_response({'message': "ok"}, 200)


@company_api.route('/get_companies', methods=['GET'])
def get_companies():
    companies = CompanyModel.get_all_compamies()
    data = company_schema.dump(companies, many=True)

    return custom_response(data, 200)


@company_api.route('/get_company/<int:company_rank>', methods=['GET'])
def get_company(company_rank):
    company = CompanyModel.get_one_company(company_rank)
    if not company:
        return custom_response({'error': 'company not found'}, 404)
    data = company_schema.dump(company)

    return custom_response(data, 200)


@company_api.route('/update_company/<int:company_rank>', methods=['PUT'])
def update_company(company_rank):

    company = CompanyModel.get_one_company(company_rank)
    if not company:
      return custom_response({'error': 'company not found'}, 404)

    req_params = request.get_json()

    try:
      data = company_schema.load(req_params, partial=True)
    except ValidationError as err:
      return custom_response(err.messages, 400)
    
    try:
      company.update(data)
    except SQLAlchemyError as err:
      return custom_response({'error': str(err)}, 400)
      
    data = company_schema.dump(company)

    updateFirebaseData()
    return custom_response(data, 200)


@company_api.route('/delete_company/<int:company_rank>', methods=['DELETE'])
def delete_company(company_rank):
    company = CompanyModel.get_one_company(company_rank)
    if not company:
        return custom_response({'error': 'company not found'}, 404)
    company.delete()

    updateFirebaseData()
    return custom_response({'message': 'deleted'}, 200)


def custom_response(res, status_code):
  """
  Custom Response Function
  """
  return Response(
    mimetype="application/json",
    response=json.dumps(res),
    status=status_code
  )

def updateFirebaseData():
    companies = CompanyModel.get_all_compamies()
    data = company_schema.dump(companies, many=True)
    storeToFirebase(data)