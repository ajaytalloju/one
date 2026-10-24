FROM tomcat:8.0.20-jre8

RUN groupadd -r appuser && \
    useradd -r -g appuser appuser && \
    chown -R appuser:appuser /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY target/*.war /usr/local/tomcat/webapps/myweb.war

RUN chown appuser:appuser \
    /usr/local/tomcat/conf/tomcat-users.xml \
    /usr/local/tomcat/webapps/myweb.war

USER appuser
