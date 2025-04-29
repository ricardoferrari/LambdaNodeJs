#!/bin/bash

awslocal lambda create-function \
  --function-name apigw-lambda \
  --runtime nodejs16.x \
  --handler lambda.apiHandler \
  --memory-size 128 \
  --zip-file fileb://lambda.zip \
  --role arn:aws:iam::111111111111:role/apigw

