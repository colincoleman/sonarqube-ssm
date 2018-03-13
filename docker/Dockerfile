FROM sonarqube:lts

RUN apt-get update &&\
    apt-get install -y \
      python-pip \
      jq &&\
    pip install awscli-cwlogs && \
    pip install --upgrade awscli

COPY start-with-params.sh entrypoint.sh ./
COPY sonar-java-plugin-5.1.1.13214.jar sonar-python-plugin-1.9.0.2010.jar sonar-auth-github-plugin-1.3.jar /opt/sonarqube/extensions/plugins/

ENTRYPOINT ["./entrypoint.sh"]