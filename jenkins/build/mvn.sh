#!/bin/bash

echo "******************************"
echo "** Building JAR **************"
echo "******************************"

WORKSPACE=/Users/patriciocastro/Documents/Courses/Jenkins/jenkins-data/jenkins_home/workspace/pipeline-maven

docker run --rm -v $WORKSPACE/java-app:/app -v $HOME/.m2/:/root/.m2 -w /app maven:3.8.6-eclipse-temurin-11-alpine "$@"