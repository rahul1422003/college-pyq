# 1. Base image (Tomcat 10.1 with Java 17)
FROM tomcat:10.1-jdk17-openjdk

# 2. Set CATALINA_OPTS to force extraction of the WAR file
# Isse Tomcat WAR file ko unpack karke files ko seedhe ROOT folder mein daalega.
ENV CATALINA_OPTS "-Dorg.apache.catalina.startup.ContextConfig.jarsToSkip=*.jar"

# 3. Copy the WAR file and rename it to ROOT.war
COPY college-pyq.war /usr/local/tomcat/webapps/ROOT.war

# 4. Expose default Tomcat port
EXPOSE 8080

# 5. Start Tomcat server
CMD ["catalina.sh", "run"]