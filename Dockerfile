# pull the tomcat docker image from docker hub
From tomcat:8-jre8

COPY ./target/helloworld-1.4-SNAPSHOT.war /usr/local/tomcat/webapps/











#FROM maven:3.8.1-adoptopenjdk-11

#COPY pom.xml .
#RUN mvn clean package

#COPY ./target/helloworld-1.4-SNAPSHOT.war .

# copying the the helloworld target war package from the target to destincation tomcat Container directory
#COPY ./target/helloworld-1.4-SNAPSHOT.war /usr/local/tomcat/webapps/
