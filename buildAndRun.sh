#!/bin/sh
mvn clean package && docker build -t com.mycompany/EasyParking .
docker rm -f EasyParking || true && docker run -d -p 9080:9080 -p 9443:9443 --name EasyParking com.mycompany/EasyParking