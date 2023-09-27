# Use a base image with Java (e.g., OpenJDK) pre-installed
FROM openjdk:11-jre-slim

 

# Set the working directory
WORKDIR /app

 

# Copy the JAR file into the container using the environment variable
COPY ${JENKINS_HOME}/workspace/${JOB_NAME}/target/*.jar app.jar

 

# Define the command to run your application
CMD ["java", "-jar", "app.jar"]

