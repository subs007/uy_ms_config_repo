FROM openjdk:11  # openjdk image with 11 version tag

ARG JAR_FILE=target/*.jar      #during runtime u r going to define a variable called JAR_FILE

COPY ${JAR_FILE} configserver.jar

ENTRYPOINT ["java", "-jar", "/configserver.jar"] # start or run our app

EXPOSE 9296 # accessing app through container
