# Use official OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/CICDP-0.0.1-SNAPSHOT.jar app.jar

# Expose the default Spring Boot port
EXPOSE 9076

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]