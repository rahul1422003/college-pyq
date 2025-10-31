# ✅ Use Tomcat 10 (compatible with jakarta.servlet.*)
FROM tomcat:10.1-jdk11

# 🔹 Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# 🔹 Copy your WAR file into Tomcat as ROOT.war
COPY college_pyq.war /usr/local/tomcat/webapps/ROOT.war

# 🔹 Expose default Tomcat port
EXPOSE 8080

# 🔹 Start Tomcat server
CMD ["catalina.sh", "run"]
