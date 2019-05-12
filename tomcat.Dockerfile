FROM tomcat

MAINTAINER Evgeny_Mrykhin Evgeny_Mrykhin@epam.com>

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME

RUN apt-get update && apt-get -y upgrade

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

EXPOSE 8080

VOLUME ["/usr/local/tomcat/webapp", "/var/lib/docker/volumes/http-simple-tomcat"]
CMD ["catalina.sh", "run"]
