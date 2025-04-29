#!/bin/bash
REST_API_ID=$(cat rest-api-id.txt)

awslocal apigateway create-deployment \
  --rest-api-id $REST_API_ID \
  --stage-name dev


# awslocal apigateway create-deployment \
#   --rest-api-id smkyiwb4nh \
#   --stage-name dev
  