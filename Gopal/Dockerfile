# Use the latest Alpine image as the base
FROM alpine:latest

# Update package manager and install OpenJDK 17, wget, and bash
RUN apk update && apk add openjdk17 wget bash

# Create directory for Tomcat, download and extract it
RUN mkdir -p /usr/local/tomcat && \
    cd /usr/local/tomcat && \
    wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.102/bin/apache-tomcat-9.0.102.tar.gz && \
    tar -xvzf apache-tomcat-9.0.102.tar.gz --strip-components=1 && \
    rm apache-tomcat-9.0.102.tar.gz

# Update the PATH environment variable
ENV PATH="/usr/local/tomcat/bin:$PATH"

# Copy the WAR file into the Tomcat webapps directory
COPY com.registrationPage.war /usr/local/tomcat/webapps/

# Expose port 8080 for the application
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
