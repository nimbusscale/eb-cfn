#!/bin/bash

export ENV_NAME=$1
aws cloudformation deploy --template-file stack.yaml --stack-name "db-${ENV_NAME}" --parameter-overrides EnvName="${ENV_NAME}" DbAdminPassword="Password123!"
