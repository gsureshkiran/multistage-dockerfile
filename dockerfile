FROM tomcat:9 As build
WORKDIR /usr/local/tomcat/webapps

FROM openjdk:11
COPY --from=build /target/*.war /usr/local/tomcat/webapps/webappkiran-0.0.1-SNAPSHOT.war
RUN chmod -R 755 /usr/local/tomcat/webapps/webappkiran-0.0.1-SNAPSHOT.war
