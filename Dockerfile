FROM maven:alpine as maven
WORKDIR /app
COPY ./ ./
RUN mvn package -DskipTests

FROM maven:alpine
WORKDIR /app
COPY --from=maven /app/Helloworld-latest/target/helloworld-1.4-SNAPSHOT.war /app//usr/local/tomcat/webapps/
ENTRYPOINT ["java", "-jar", "/app/helloworld.war"]  
