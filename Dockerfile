FROM openjdk:11
# Set ARG for JAR_FILE, ensuring that you specify the exact name of the .war file
ARG JAR_FILE=target/my-app-1.0.0.war
# Copy the WAR file into the container
COPY ${JAR_FILE} app.war
EXPOSE 8081
# Run the Java application using the copied WAR file
ENTRYPOINT ["java", "-jar", "/app.war"]
