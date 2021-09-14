@echo off
call mvn clean package
call docker build -t com.mycompany/EasyParking .
call docker rm -f EasyParking
call docker run -d -p 9080:9080 -p 9443:9443 --name EasyParking com.mycompany/EasyParking