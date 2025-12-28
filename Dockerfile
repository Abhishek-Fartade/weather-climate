# Use official Tomcat image as base
FROM tomcat:11

# Remove default apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to webapps directory
COPY WeatherClimateApplication.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat (CMD is inherited from base image)
