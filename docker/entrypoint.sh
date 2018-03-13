#!/bin/bash
chown -R sonarqube:sonarqube $SONARQUBE_HOME
exec gosu sonarqube ./start-with-params.sh