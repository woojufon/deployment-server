FROM 192.168.12.242/spush/docker-alpine-java:1.8
ADD springboot-test-1.0.0.jar /usr/app/
ENV HOME /usr/app
WORKDIR /usr/app/
ENTRYPOINT ["java",  "-jar", "springboot-test-1.0.0.jar"]