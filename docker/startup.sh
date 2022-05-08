#!/bin/sh

echo Pull from master branch ...
git pull origin master
echo Pull completed.

echo Rebuild application ...
mvn clean install
echo End of rebuilding.

echo Starting server ... 
touch log/startup_log.txt
nohup java -jar target/SpringDockerDemo-1.0-SNAPSHOT.jar > log/startup_log.txt &
echo Server launched finished. See logs below.

tail -f log/startup_log.txt