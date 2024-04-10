FROM tomcat:8.0
ADD **/*.war /usr/local/tomcat/webapps/
EXPOSE 8000
CMD ["catalina.sh", "run"]