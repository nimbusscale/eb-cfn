#!/bin/bash

ENV_NAME=$1
OAUTH_TOKEN=$2

if [ -z ${OAUTH_TOKEN} ]; then
    aws cloudformation deploy --template-file stack.yaml --stack-name "ebtest-${ENV_NAME}" --capabilities CAPABILITY_IAM --parameter-overrides EnvName="${ENV_NAME}" DbAdminPassword="Password123!"
else
    aws cloudformation deploy --template-file stack.yaml --stack-name "ebtest-${ENV_NAME}" --capabilities CAPABILITY_IAM --parameter-overrides EnvName="${ENV_NAME}" DbAdminPassword="Password123!" OauthToken=${OAUTH_TOKEN}
fi
