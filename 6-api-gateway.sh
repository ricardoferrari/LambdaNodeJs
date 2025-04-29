#!/bin/bash
REST_API_ID=$(awslocal apigateway create-rest-api --name 'API Gateway Lambda integration')
echo $REST_API_ID > rest-api-id.txt