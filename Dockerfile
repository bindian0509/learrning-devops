FROM tomcat:latest

ADD ./iwayq.war /usr/local/tomcat/webapps/iwayq.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
