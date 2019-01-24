FROM openjdk:8-jdk-alpine
VOLUME /tmp

RUN mkdir -p /opt/cz/flits/config

VOLUME /opt/cz/flits/config

ARG JAR_FILE
ENV _JAVA_OPTIONS "-Xms256m -Xmx512m -Djava.awt.headless=true"

COPY ${JAR_FILE} /opt/cz/flits/app.jar


EXPOSE 8080

WORKDIR  /opt/cz/flits

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom --spring.config.location=file:/opt/cz/flits/config/application.properties", "-jar", "/opt/cz/flits/app.jar"]