#!/bin/bash

echo "******************************"
echo "** Building JAR **************"
echo "******************************"

docker run --rm -v $PWD/java-app:/app -v $HOME/.m2/:/root/.m2 -w /app maven:3.8.6-eclipse-temurin-11-alpine "$@"