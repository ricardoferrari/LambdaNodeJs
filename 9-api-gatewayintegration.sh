#!/bin/bash
REST_API_ID=$(cat rest-api-id.txt)

RESOURCE_ID=$(awslocal apigateway get-resources --rest-api-id ${REST_API_ID} | jq -r '.items[] | select(.path == "/hello") | .id')

  awslocal apigateway put-integration \
  --rest-api-id $REST_API_ID \
  --resource-id $RESOURCE_ID \
  --http-method GET \
  --type AWS_PROXY \
  --integration-http-method POST \
  --uri arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:000000000000:function:blank-nodejs-function-e1822fff/invocations \
  --passthrough-behavior WHEN_NO_MATCH

  # awslocal apigateway put-integration \
  # --rest-api-id smkyiwb4nh \
  # --resource-id 2vjt8fbj42 \
  # --http-method GET \
  # --type AWS_PROXY \
  # --integration-http-method POST \
  # --uri arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:000000000000:function:blank-nodejs-function-e1822fff/invocations \
  # --passthrough-behavior WHEN_NO_MATCH
 
  # awslocal apigateway put-integration \
  # --rest-api-id kjbv0g2z1g \
  # --resource-id emtij4lvj4 \
  # --http-method GET \
  # --type AWS_PROXY \
  # --integration-http-method POST \
  # --uri arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:000000000000:function:apigw-lambda/invocations \
  # --passthrough-behavior WHEN_NO_MATCH