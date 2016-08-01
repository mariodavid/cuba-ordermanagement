### Dockerfile

FROM tomcat:8-jre8

RUN rm -rf /usr/local/tomcat/webapps/*

ADD container-files/war/app-core.war /usr/local/tomcat/webapps/ROOT.war

ADD container-files/context.xml /usr/local/tomcat/conf/
ADD container-files/local.app.properties /usr/local/tomcat/conf/app-core/
ADD container-files/jgroups.xml /opt/cuba_home/app-core/conf/
ADD container-files/logback.xml /opt/cuba_home/

ADD container-files/start.sh /start.sh
RUN chmod +x /start.sh


ENV CATALINA_OPTS="${CATALINA_OPTS} -Dlogback.configurationFile=/opt/cuba_home/logback.xml"
ENV CATALINA_OPTS="${CATALINA_OPTS} -Dapp.home=/opt/cuba_home"
ENV CATALINA_OPTS="${CATALINA_OPTS} -Djava.net.preferIPv4Stack=true"

ADD https://jdbc.postgresql.org/download/postgresql-9.3-1101.jdbc41.jar /usr/local/tomcat/lib/postgresql.jar

EXPOSE 8080

CMD ["/start.sh"]
