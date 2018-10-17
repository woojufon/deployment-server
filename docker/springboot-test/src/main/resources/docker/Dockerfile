FROM openjdk:8-jdk-alpine
ADD springboot-test-1.0.0.jar /usr/app/
ENV HOME /usr/app
WORKDIR /usr/app/
ENTRYPOINT ["java",  "-jar", "springboot-test-1.0.0.jar"]

