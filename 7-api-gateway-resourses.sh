#!/bin/bash
REST_API_ID=$(cat rest-api-id.txt)

PARENT_ID=(awslocal apigateway get-resources --rest-api-id ${REST_API_ID} | jq -r '.items[] | select(.path == "/") | .id')
awslocal apigateway create-resource \
  --rest-api-id $REST_API_ID \
  --parent-id $PARENT_ID \
  --path-part "hello"

  # awslocal apigateway create-resource \
  # --rest-api-id kjbv0g2z1g \
  # --parent-id phvyauzyxf \
  # --path-part "hello"