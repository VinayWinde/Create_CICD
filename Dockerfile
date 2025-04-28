# Use official OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory


# Copy the JAR file into the container
COPY target/github-actions-sp.jar github-actions-sp.jar

# Expose the default Spring Boot port
EXPOSE 9076

# Run the application
ENTRYPOINT ["java", "-jar", "github-actions-sp.jar"]