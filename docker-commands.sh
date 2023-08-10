# create war file

mvn -U deploy -s settings.xml

# download war file

curl --user "admin:RQb7ctKtx5KFP6q" http://localhost:8082/artifactory/libs-release/com/iwayq/iwayQApp/1.0-RELEASE/iwayQApp-1.0-RELEASE.war -o iwayq.war

# build docker image

docker build . --tag iwayq

# run docker image

docker run --name iwayq -p 8080:8080 -d iwayq


# login into docker container
docker exec -it iwayq-java-app bash

# mysql docker container
docker run --name mysql -p3306:3306 -e MYSQL_ROOT_PASSWORD=oracle -d mysql:latest

# connect to mysql docker container
mysql -h 127.0.0.1 -u root -p

# to inspect ip address of the container
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' iwayq
