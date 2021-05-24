#!/bin/bash

echo "maven install"
mvn clean install

echo "build docker image"
docker build -t addressbooknew:20210510 .

echo "tag docker image"
docker tag addressbooknew:20210510 pavaniprathyu/addressbooknew:20210510

echo "docker login"
docker login -u ${secret_docker_username} -p ${secret_docker_password}

echo "push docker image"
docker push pavaniprathyu/addressbooknew:20210510