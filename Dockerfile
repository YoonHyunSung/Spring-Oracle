FROM openjdk:8-jdk-alpine
LABEL maintainer="gustjd6495@gmail.com"
VOLUME /main-app
ADD build/libs/oracle-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.jdbc:oracle:thin:@192.168.0.100:1521/xe","-jar","app.jar"]
