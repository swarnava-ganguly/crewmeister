FROM openjdk:17
WORKDIR /application
COPY /crewmeisterchallenge-0.0.1-SNAPSHOT.jar.original  /application
EXPOSE 8080
CMD ["java" , "-jar", "crewmeisterchallenge-0.0.1-SNAPSHOT.jar.original"]