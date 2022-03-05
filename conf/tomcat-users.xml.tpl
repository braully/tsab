<?xml version='1.0' encoding='utf-8'?>
<tomcat-users>
  <role rolename="admin-gui"/>
  <role rolename="admin-script"/>
  <role rolename="manager-gui"/>
  <role rolename="manager-status"/>
  <role rolename="manager-script"/>
  <role rolename="manager-jmx"/>
  <role rolename="manager"/>
  <user name="{{TSAB_ADMIN_USERNAME| default('tsabadmin')}}" password="{{TSAB_ADMIN_PASSWORD| default ('tsabadmin')}}" roles="manager"/>
  <user name="{{MANAGER_USER| default('admin')}}" password="{{MANAGER_PASSWORD| default ('admin')}}" roles="admin-gui,admin-script,manager-gui,manager-status,manager-script,manager-jmx"/>
</tomcat-users>
