# CAUTION : Check JVM version and compiled war file JVM version
FROM tomcat:latest

# so the problem was tomcat:latest JVM Version was supported till 17.0.8+7 and war created with Java 20 JVM Version
ADD ./iwayq.war /usr/local/tomcat/webapps/iwayq.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
