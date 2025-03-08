FROM alpine:latest

RUN apk update && apk add openjdk17 wget bash

RUN mkdir -p /usr/local/tomcat && \
    cd /usr/local/tomcat && \
    wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.34/bin/apache-tomcat-9.0.34.tar.gz && \
    tar -xvzf apache-tomcat-9.0.34.tar.gz --strip-components=1 && \
    rm apache-tomcat-9.0.34.tar.gz

ENV PATH="/usr/local/tomcat/bin:$PATH"

COPY com.registrationPage.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]


