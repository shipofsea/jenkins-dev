FROM adoptopenjdk/openjdk11:alpine-jre
LABEL maintainer="shipofsea"
EXPOSE 8080
ARG APP_NAME="spring-boot-docker"
ARG APP_VERSION="0.0.1"
ARG JAR_FILE="/build/libs/${APP_NAME}-${APP_VERSION}.jar"

COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]