# Tomcat 10.1 is REQUIRED — this project uses Jakarta EE 9 (jakarta.* namespace)
# Tomcat 9 (javax.*) will NOT work with this WAR.
FROM tomcat:10.1-jdk21-temurin

# Remove default ROOT app so our app can take over the root context (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the built WAR (name comes from pom.xml <finalName>sample</finalName>)
# Deployed as ROOT.war so the app is available at http://<host>:8060/ directly
COPY target/sample.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
