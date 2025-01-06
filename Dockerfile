# Use an official Tomcat image as the base image
FROM tomcat:9.0-jdk8

# Copy the WAR file into the Tomcat webapps directory
COPY target/techaxis-webapp.war /usr/local/tomcat/webapps/techaxis-webapp.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]