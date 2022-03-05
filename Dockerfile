FROM mdelapenya/tomcat-mysql:7.0.77
COPY target/tsab.war /usr/local/tomcat/webapps/tsab.war
RUN mkdir /opt/tsab/
VOLUME ["/opt/tsab/"]
RUN mysql -uadmin -p47nnf4FweaKu -e "CREATE DATABASE tsab CHARACTER SET UTF8; CREATE USER 'tsab'@'%' IDENTIFIED BY 'f09Flca'; GRANT ALL PRIVILEGES ON *.* TO 'tsab'@'%' WITH GRANT OPTION;"