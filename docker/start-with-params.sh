#!/bin/bash
if [ -z "$AWS_REGION" ]; then
AWS_REGION="eu-west-1"
fi
export SONARQUBE_JDBC_USERNAME=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_SONARQUBE_JDBC_USERNAME --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value` \
export SONARQUBE_JDBC_PASSWORD=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_SONARQUBE_JDBC_PASSWORD --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value` \
export SONARQUBE_JDBC_URL=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_SONARQUBE_JDBC_URL --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`
  java -jar lib/sonar-application-$SONAR_VERSION.jar \
  -Dsonar.log.console=true \
  -Dsonar.jdbc.username="$SONARQUBE_JDBC_USERNAME" \
  -Dsonar.jdbc.password="$SONARQUBE_JDBC_PASSWORD" \
  -Dsonar.jdbc.url="$SONARQUBE_JDBC_URL" \
  -Dsonar.web.javaAdditionalOpts="$SONARQUBE_WEB_JVM_OPTS -Djava.security.egd=file:/dev/./urandom" \
  "$@"