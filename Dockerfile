FROM openjdk:11-jdk-slim
VOLUME /tmp
RUN mkdir /build

#ARG JAR_FILE=/home/ubuntu/java_project/*.jar
COPY SpringBootDemoProject-0.0.1-SNAPSHOT.jar /build
WORKDIR /build

ENTRYPOINT ["java","-jar","SpringBootDemoProject-0.0.1-SNAPSHOT.jar"]
