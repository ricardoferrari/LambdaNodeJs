#!/bin/bash
set -eo pipefail
if [ ! -d node_modules ]; then
  echo "Installing libraries..."
  npm install
fi
REGION=$(aws configure get region --profile localstack)
AWS_REGION=$REGION npm run test