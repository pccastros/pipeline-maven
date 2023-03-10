#!/bin/bash

echo "******************************"
echo "** Building JAR **************"
echo "******************************"

WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v $HOME/.m2/:/root/.m2 -w /app maven:3.8.6-eclipse-temurin-11-alpine "$@"