# pull the tomcat docker image from docker hub
FROM tomcat:latest

RUN mvn clean package


# copying the the helloworld target war package from the target to destincation tomcat Container directory
COPY ./target/helloworld-1.4-SNAPSHOT.war /usr/local/tomcat/webapps/
