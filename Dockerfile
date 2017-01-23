FROM openjdk:alpine
MAINTAINER Eric Muellenbach <emuellenbach@gmx.de>
ADD target/dependency/runner.jar .
ADD target/*.war .
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "runner.jar", "--port", "9090","samples-jaxrs-0.1.0-SNAPSHOT.war"]
