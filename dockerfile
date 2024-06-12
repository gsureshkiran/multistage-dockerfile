FROM tomcat:9 as build
WORKDIR /usr/local/tomcat/webapps
COPY /target/*.war /usr/local/tomcat/webapps/webappkiran-0.0.1-SNAPSHOT.war
########
FROM scratch
COPY --from=build /usr/local/tomcat/webapps/webappkiran-0.0.1-SNAPSHOT.war
RUN chmod -R 755 /usr/local/tomcat/webapps/webappkiran-0.0.1-SNAPSHOT.war




#FROM ubuntu as build
#cmd sudo apt-get install -y tomcat9

#WORKDIR /usr/local/tomcat/webapps

#FROM ubuntu
#COPY --from=build /usr/local/tomcat/webapps /target/*.war
