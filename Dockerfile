
FROM tomcat:6

ENV DEBIAN_FRONTEND noninteractive
#
ENV TSAB_DB_HOST localhost
ENV TSAB_DB_USERNAME tsab
ENV TSAB_DB_PASSWORD f09Flca
#
ENV TSAB_ADMIN_USERNAME tsabadmin
ENV TSAB_ADMIN_PASSWORD tsabadmin

RUN apt-get update && \
    apt-get -q -y install mysql-server
#    apt-get -q -y install mysql-server && \
#    apt-get -q -y install mp3splt ffmpeg


#VOLUME ["/opt/tsab/", "/usr/local/tomcat/webapps" ]

RUN mkdir /opt/tsab/

VOLUME ["/opt/tsab/"]

ADD conf/tomcat-users.xml.tpl /usr/local/tomcat/conf/

#RUN mysqladmin -u root password root@123

ADD target/tsab.war /usr/local/tomcat/webapps
#mysqld
EXPOSE 8080 3306
