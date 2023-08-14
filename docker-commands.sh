# to run a docker based artifactory container

docker run --name artifactory -v /home/bharat/jfrog_artifactory_data:/var/opt/jfrog/artifactory -d -p 8081:8081 -p 8082:8082 releases-docker.jfrog.io/jfrog/artifactory-oss:latest
docker run --name artifactory -v /Users/bharatverma/docker-vols/jfrog_artifactory_data:/var/opt/jfrog/artifactory -d -p 8081:8081 -p 8082:8082 releases-docker.jfrog.io/jfrog/artifactory-oss:latest
# create war file

mvn -U deploy -s settings.xml

# download war file

curl --user "admin:RQb7ctKtx5KFP6q" http://localhost:8082/artifactory/libs-release/com/iwayq/iwayQApp/1.0-RELEASE/iwayQApp-1.0-RELEASE.war -o iwayq.war

# build docker image

docker build . --tag iwayq

# run docker image

docker run --name iwayq -p 8080:8080 -d iwayq


# login into docker container
docker exec -it iwayq bash

# mysql docker container
docker run --name mysql -p3306:3306 -e MYSQL_ROOT_PASSWORD=oracle -d mysql:latest

# connect to mysql docker container
mysql -h 127.0.0.1 -u root -p

# to inspect ip address of the container
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' iwayq


# sonarqube code check
mvn clean verify sonar:sonar -Dsonar.projectKey=coding-with-java -Dsonar.projectName='coding-with-java' -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_3d15e66d0c50b3a74c52e6a1a5e455e18d124179
