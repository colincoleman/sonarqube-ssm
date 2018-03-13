FROM sonarqube:lts

RUN apt-get update &&\
    apt-get install -y \
      python-pip \
      jq &&\
    pip install awscli-cwlogs && \
    pip install --upgrade awscli

COPY start-with-params.sh entrypoint.sh ./

ENTRYPOINT ["./entrypoint.sh"]