### Dockerfile

# Base Image: official tomcat 8 image, with jre 8 underneath
FROM tomcat:8-jre8

# Add tomcat users file for manager app
RUN rm -rf /usr/local/tomcat/webapps/*

# Add generated app war files to the webapps directory
ADD container-files/war/app.war /usr/local/tomcat/webapps/ROOT.war

# Add context config file for the application
ADD container-files/local.app.properties /usr/local/tomcat/conf/app/

# copy logback.xml config in the container
ADD container-files/logback.xml /opt/cuba_home/

ADD container-files/start.sh /start.sh
RUN chmod +x /start.sh

# set CATALINA_OPTS env variable to point to logback config file and app home directory
ENV CATALINA_OPTS="-Dlogback.configurationFile=/opt/cuba_home/logback.xml -Dapp.home=/opt/cuba_home"


EXPOSE 8080

CMD ["/start.sh"]
