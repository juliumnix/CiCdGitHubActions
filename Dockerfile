FROM openjdk:11-jdk-slim
RUN mkdir app
ARG JAR_FILE
ADD /target/${JAR_FILE} /app/aposta-api.jar
WORKDIR /app
ENTRYPOINT java -jar aposta-api.jar
