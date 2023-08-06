FROM openjdk:17-jdk-slim as builder
EXPOSE 8080
RUN mkdir target
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java","-jar","app.jar"]
