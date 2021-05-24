#!/bin/bash

echo "maven install"
mvn clean install

echo "build docker image"
docker build -t addressbooknew:20210510 .

echo "tag docker image"
docker tag addressbook:20210510 pavaniprathyu/addressbooknew:20210510

echo "push docker image"
docker push pavaniprathyu/addressbooknew:20210510