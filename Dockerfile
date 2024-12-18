##Start with a base image containing Java runtime
#FROM openjdk:17-jdk-slim
#
##Information around who maintains the images
#MAINTAINER tle01
#
##Add the application's jar to the image
#COPY target/accounts-0.0.1-SNAPSHOT.jar accounts-0.0.1-SNAPSHOT.jar
#
##execute the application
#ENTRYPOINT ["java", "-jar", "accounts-0.01-SNAPSHOT.jar"]




FROM openjdk:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/accounts-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
