FROM openjdk:11-jdk
RUN mkdir /app
COPY app.jar /app/app.jar
WORKDIR /app
ENTRYPOINT java -jar aposta-api.jar
