#!/bin/bash

echo "pull docker image"
docker_web_pull_result=$(docker pull pavaniprathyu/addressbooknew:20210510 2>&1)
echo $docker_web_pull_result

echo "run docker image"
docker run -d -p 8070:8080 pavaniprathyu/addressbooknew:20210510

echo "test curl"
curl_result=$(curl -v http://localhost:8070/addressbook/ping 2>&1)
echo $curl_result
