# FROM openjdk:17-jdk-slim
# WORKDIR /application
# COPY /target/*.jar app.jar
# EXPOSE 8080
# CMD ["java" , "-jar", "app.jar"]

FROM openjdk:17-jdk-slim

# Create a group and user
RUN groupadd -g 1001 appuser && \
    useradd -r -u 1001 -g appuser appuser

# Set working directory
WORKDIR /application

# Copy the application JAR
COPY /target/*.jar app.jar

# Change ownership of application files
RUN chown -R appuser:appuser /application

# Switch to non-root user
USER appuser

# Expose application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
