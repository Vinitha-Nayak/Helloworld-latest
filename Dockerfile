# pull the tomcat docker image from docker hub
FROM tomcat:jdk11-openjdk-slim-buster

MAINTAINER nayakvinitha413@gmail.com

ADD ./config/tomcat-users.xml /usr/local/tomcat/conf/

COPY target/helloworld-1.4-SNAPSHOT.war /usr/local/tomcat/webapps/helloworld.war

CMD ["catalina.sh", "run"]
