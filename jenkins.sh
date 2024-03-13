#!/bin/bash
echo "start docker build"
docker build --tag "http://localhost:8084/jenkins:1.0" .
echo $PASSWORD | docker login -u $USERNAME --password-stdin "http://localhost:8084"
docker push "http://localhost:8084/jenkins:1.0"
