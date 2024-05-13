from function.app import handler
import json
import os

def test_app_handler():
    event = {}
    context = {}
    test_version = '0.0.1-test'
    os.environ['APP_VERSION'] = test_version

    response = handler(event, context)
    response_body = json.loads(response['body'])
    version = response_body['Version']

    assert  version == test_version
    assert response['statusCode'] == 200