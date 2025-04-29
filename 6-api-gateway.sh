#!/bin/bash
REST_API_ID=$(awslocal apigateway create-rest-api --name 'API Gateway Lambda integration' | jq -r '.id')
echo $REST_API_ID > rest-api-id.txt