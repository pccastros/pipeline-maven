#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/jenkins_remote.pem /tmp/.auth ec2-user@ec2-34-204-76-28.compute-1.amazonaws.com:/tmp/.auth
scp -i /opt/jenkins_remote.pem ./jenkins/deploy/publish ec2-user@ec2-34-204-76-28.compute-1.amazonaws.com:/tmp/publish
ssh -i /opt/jenkins_remote.pem ec2-user@ec2-34-204-76-28.compute-1.amazonaws.com "/tmp/publish"