FROM tomcat:9 as build
WORKDIR /usr/local/tomcat/webapps
COPY /target/*.war /usr/local/tomcat/webapps/webappkiran-0.0.1-SNAPSHOT.war
########
FROM openjdk:11
COPY --from=build /usr/local/tomcat/webapps/webappkiran-0.0.1-SNAPSHOT.war
RUN chmod -R 755 /usr/local/tomcat/webapps/webappkiran-0.0.1-SNAPSHOT.war
