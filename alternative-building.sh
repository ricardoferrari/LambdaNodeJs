#!/bin/bash
export AWS_ACCESS_KEY_ID="test"
export AWS_SECRET_ACCESS_KEY="test"
export AWS_DEFAULT_REGION="us-east-1"

aws configure set region us-east-1 --profile localstack
aws configure set output json --profile localstack
aws configure set aws_access_key_id test --profile localstack
aws configure set aws_secret_access_key test --profile localstack
# aws configure set aws_session_token ls-PIcibAWa-wIlU-DUce-roRO-8559qEGU159b --profile localstack

cd function
zip function.zip lambda.js
awslocal lambda create-function \
  --function-name apigw-lambda \
  --runtime nodejs16.x \
  --handler lambda.apiHandler \
  --memory-size 128 \
  --zip-file fileb://function.zip \
  --role arn:aws:iam::111111111111:role/apigw


awslocal lambda create-function \
  --function-name apigw-lambda \
  --runtime nodejs16.x \
  --handler lambda.handler \
  --memory-size 128 \
  --zip-file fileb://function.zip \
  --role arn:aws:iam::111111111111:role/apigw

