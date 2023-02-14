FROM tomcat:9-jdk11-adoptopenjdk-hotspot As build
WORKDIR /usr/local/tomcat/webapps

FROM scratch
COPY --from=build 
COPY target/*.war /usr/local/tomcat/webapps/webapp.war
RUN chmod -R 755 /usr/local/tomcat/webapps/webapp.war
