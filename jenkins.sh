#!/bin/bash
echo "start docker build"
docker build --tag "172.17.0.3:8084/jenkins:1.0" .
echo $PASSWORD | docker login -u $USERNAME --password-stdin 172.17.0.3:8084
docker push 172.17.0.3:8084/jenkins:1.0
