FROM openjdk:11
LABEL author="khaja ibrahim"
LABEL organization="quality thought"
EXPOSE 8080
CMD [ "java", "-jar", "/spring-petclinic.jar" ]

FROM openjdk:8
# base image is openjdk
LABEL author="khaja ibrahim"
LABEL maintainer="qtdevops@gmail.com"
# Downloading the image from the url
ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar /spring-petclinic.jar
# spring pet clinic runs on port 8080
EXPOSE 8080
# command to start the application
CMD ["java",  "-jar",  "/spring-petclinic.jar"]