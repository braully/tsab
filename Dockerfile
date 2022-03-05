FROM mdelapenya/tomcat-mysql:7.0.77
ENV MYSQL_PASS admin
#Tsab config
ENV TSAB_DB_HOST localhost
ENV TSAB_DB_USERNAME tsab
ENV TSAB_DB_PASSWORD f09Flca
#
ENV TSAB_ADMIN_USERNAME tsabadmin
ENV TSAB_ADMIN_PASSWORD tsabadmin
#Tsab install
COPY target/tsab.war /opt/apache-tomcat-7.0.77/webapps/tsab.war
RUN mkdir /opt/tsab/
VOLUME ["/opt/tsab/"]

#Tomcat config
COPY conf/tomcat-users.xml /opt/apache-tomcat-7.0.77/conf/tomcat-users.xml
#COPY conf/mysql-setup-tsab.sh /mysql-setup.sh
ADD conf/mysql-setup-tsab.sh /mysql-setup.sh
RUN chmod +x /mysql-setup.sh
#RUN mysql -uadmin -padmin -e "CREATE DATABASE tsab CHARACTER SET UTF8; CREATE USER 'tsab'@'%' IDENTIFIED BY 'f09Flca'; GRANT ALL PRIVILEGES ON *.* TO 'tsab'@'%' WITH GRANT OPTION;"