FROM openjdk:17
WORKDIR /application
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java" , "-jar", "app.jar"]