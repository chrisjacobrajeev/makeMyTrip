# Pull tomcat latest image from dockerhub
FROM tomcat:8.0.51-jre8-alpine
MAINTAINER chrisjacobrajeev@gmail.com
# copy war file on to container
ADD /target/makemytrip.war /usr/local/tomcat/webapps
EXPOSE  8080
USER makemytrip
WORKDIR /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]