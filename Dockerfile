FROM ubuntu:latest

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk git maven curl && \
    apt-get clean

# Set the working directory
WORKDIR /app

# Clone the Spring Petclinic repository
#RUN git clone https://github.com/dockersamples/spring-petclinic-docker.git

# Change working directory to the cloned repository
WORKDIR /app/spring-petclinic-docker

# Build the Spring Petclinic application using Maven
RUN ./mvnw package

# Expose the port on which the app runs
EXPOSE 8080

# Run the Spring Petclinic application
CMD ["java", "-jar", "target/spring-petclinic-2.7.0-SNAPSHOT.jar"]
