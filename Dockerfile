
FROM tomcat:6

ENV DEBIAN_FRONTEND noninteractive

RUN sudo apt-get update && \
    sudo -E apt-get -q -y install mysql-server
#VOLUME ["/opt/tsab/", "/usr/local/tomcat/webapps" ]

# Remove unneeded apps
#RUN \
##   rm -rf /opt/tomcat/webapps/host-manager ; \
#   rm -rf /opt/tomcat/webapps/examples  ;\
#   rm -rf /opt/tomcat/webapps/docs/ ;\
#   rm -rf /opt/tomcat/webapps/ROOT

#ADD setup.d/setup-tomcat /etc/setup.d/

#RUN mysqladmin -u root password root@123

EXPOSE 8080
