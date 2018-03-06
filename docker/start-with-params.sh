#!/bin/bash
if [ -z "$AWS_REGION"];then
AWS_REGION="eu-west-1"
fi
export SONARQUBE_JDBC_USERNAME=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_SONARQUBE_JDBC_USERNAME --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value` \
export SONARQUBE_JDBC_PASSWORD=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_SONARQUBE_JDBC_PASSWORD --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value` \
export SONARQUBE_JDBC_PASSWORD=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_SONARQUBE_JDBC_PASSWORD --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`
./bin/run.sh