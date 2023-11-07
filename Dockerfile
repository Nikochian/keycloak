FROM openjdk:17-jdk
MAINTAINER dabige
WORKDIR /cf-keycloak-server
ADD quarkus/server/target/lib .
CMD ["java","-Xmx1536m","-Xms1536m","-Xss256k","-jar","quarkus-run.jar","start-dev"]
