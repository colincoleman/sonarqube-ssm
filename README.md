# sonarqube-ssm
Sonarqube Docker with secrets pulled from AWS SSM Parameter Store

To use this docker container the values for SONARQUBE_JDBC_USERNAME, SONARQUBE_JDBC_PASSWORD and SONARQUBE_JDBC_PASSWORD should be set in AWS SSM Parameter store.

This docker container expects the following environment variables to be set with the names used in AWS SSM to reference the real values for the JDBC connection.

 - SSM_PARAMETER_NAME_SONARQUBE_JDBC_USERNAME
 - SSM_PARAMETER_NAME_SONARQUBE_JDBC_PASSWORD
 - SSM_PARAMETER_NAME_SONARQUBE_JDBC_PASSWORD
 - AWS_REGION (Optional - defaults to eu-west-1 if not set)