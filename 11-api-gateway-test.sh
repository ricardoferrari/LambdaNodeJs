#!/bin/bash
REST_API_ID=$(cat rest-api-id.txt)

curl -X GET http://$REST_API_ID.execute-api.localhost.localstack.cloud:4566/dev/hello \
  -H "Content-Type: application/json" \
  -d
  
{"message":"Hello World"}

curl -X GET http://smkyiwb4nh.execute-api.localhost.localstack.cloud:4566/dev/hello
  
{"message":"Hello World"}


# curl -X GET http://localhost:4566/_aws/execute-api/smkyiwb4nh/dev/hello
