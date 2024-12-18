FROM openjdk:11
ARG JAR_FILE=target/*war
COPY ${WAR_FILE} app.war
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.war"]
