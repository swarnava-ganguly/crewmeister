FROM openjdk:17-jdk-slim
RUN groupadd -g 1001 appuser && useradd -r -u 1001 -g appuser appuser
WORKDIR /application
COPY /target/*.jar app.jar
RUN chown -R appuser:appuser /application
USER appuser
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
