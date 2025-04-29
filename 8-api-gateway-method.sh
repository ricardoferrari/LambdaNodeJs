#!/bin/bash
REST_API_ID=$(cat rest-api-id.txt)

RESOURCE_ID=$(awslocal apigateway get-resources --rest-api-id ${REST_API_ID} | jq -r '.items[] | select(.path == "/hello") | .id')
awslocal apigateway put-method \
  --rest-api-id $REST_API_ID \
  --resource-id $RESOURCE_ID \
  --http-method GET \
  --request-parameters "method.request.path.somethingId=true" \
  --authorization-type "NONE"


  # awslocal apigateway put-method \
  # --rest-api-id kjbv0g2z1g \
  # --resource-id emtij4lvj4 \
  # --http-method GET \
  # --request-parameters "method.request.path.somethingId=true" \
  # --authorization-type "NONE"