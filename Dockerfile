# Use a imagem oficial do OpenJDK 11 como base
FROM openjdk:11-jdk-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo POM e o arquivo de origem (necessários para a compilação Maven)
COPY pom.xml .
COPY src ./src

# Execute o build do Maven
RUN apt-get update && \
    apt-get install -y maven && \
    mvn clean package

# Copie o arquivo JAR gerado para o diretório de trabalho
COPY target/aposta-api.jar .

# Comando para executar o aplicativo Java quando o contêiner for iniciado
CMD ["java", "-jar", "aposta-api.jar"]
