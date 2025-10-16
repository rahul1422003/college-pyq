# 1. Base image (Tomcat 10 with Java 17)
# Note: 'openjdk' tag zyada reliable aur specific hai
FROM tomcat:10.1-jdk17-openjdk

# 2. Webapps folder ko clean karne ki zaroorat nahi hai. 
# Jab hum ROOT.war copy karte hain, toh woh default app ko khud hi overwrite kar deta hai.

# 3. Copy WAR file to Tomcat webapps folder
# NOTE: Maine aapke WAR file ka naam 'college-pyq.war' (hyphen ke saath) use kiya hai.
# Agar aapki file ka naam 'college_pyq.war' (underscore ke saath) hai, toh neeche badal dein.
COPY college-pyq.war /usr/local/tomcat/webapps/ROOT.war

# 4. Expose default Tomcat port
EXPOSE 8080

# 5. Start Tomcat
CMD ["catalina.sh", "run"]