FROM tomcat:latest

# copy war file on to container
COPY ./iwayq.war /usr/local/tomcat/webapps
