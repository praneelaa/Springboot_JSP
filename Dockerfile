FROM tomcat:9.0

# Optional: remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Correct WAR file name (with SNAPSHOT)
COPY target/demo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
