[root@fcpphdfs2 ranger-admin]# grep -i "setup" install.properties
#setup_mode=SeparateDBA
SQL_CONNECTOR_JAR=/media/production-setup/ranger/ranger-admin/postgresql-42.7.11.jar
[root@fcpphdfs2 ranger-admin]# grep -i "root" install.properties
#db_root_user=root|SYS|postgres|sa|dba
db_root_user=root
db_root_password=
