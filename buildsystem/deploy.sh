#!/bin/bash

echo "docker login"
docker login -u ${secret_docker_username} -p ${secret_docker_password}

echo "pull docker image"
docker_web_pull_result=$(docker pull pavaniprathyu/addressbooknew:20210510 2>&1)
echo $docker_web_pull_result

echo "run docker image"
docker run -d -p 6666:8080 pavaniprathyu/addressbooknew:20210510

echo "test curl"
curl_result=$(curl -v http://localhost:6666/addressbook/ping 2>&1)
echo $curl_result
