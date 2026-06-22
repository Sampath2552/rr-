[root@fcpphdfs2 ranger-admin]# ./setup.sh
2026-06-22 15:53:52,819   --------- Running Ranger PolicyManager Web Application Install Script ---------
2026-06-22 15:53:52,826  [I] uname=Linux
2026-06-22 15:53:52,836  [I] hostname=fcpphdfs2
2026-06-22 15:53:52,853  [I] DB_FLAVOR=POSTGRES
2026-06-22 15:53:52,861  [I] Audit source=db
2026-06-22 15:53:52,874  [I] Checking distribution name..
2026-06-22 15:53:52,916  [I] Found distribution : Red Hat Enterprise Linux
2026-06-22 15:53:52,923  [I] check if command /media/Java/jdk-17.0.19/bin/java exists
2026-06-22 15:53:52,929  [I] '/media/Java/jdk-17.0.19/bin/java' command found
2026-06-22 15:53:53,072  [I] Checking POSTGRES CONNECTOR FILE : /media/production-setup/ranger/ranger-admin/postgresql-42.7.11.jar
2026-06-22 15:53:53,078  [I] POSTGRES CONNECTOR FILE : /media/production-setup/ranger/ranger-admin/postgresql-42.7.11.jar file found
2026-06-22 15:53:53,083  [I] Setting up UNIX user : ranger and group: ranger
2026-06-22 15:53:53,122  [I] the ranger user already exists and belongs to group ranger
2026-06-22 15:53:53,128  [I] Setting up UNIX user : ranger and group: ranger DONE
2026-06-22 15:53:53,134  [I] Setting up installation files and directory
2026-06-22 15:53:53,148  [WARN] core-site.xml file not found in provided hadoop_conf path. Creating blank core-site.xml
2026-06-22 15:53:53,159  [I] Setting up init.d
2026-06-22 15:53:53,177  [I] Creating script S88ranger-admin/K90ranger-admin in /etc/rc2.d directory ....
2026-06-22 15:53:53,195  [I] Creating script S88ranger-admin/K90ranger-admin in /etc/rc3.d directory ....
2026-06-22 15:53:53,211  [I] Creating script S88ranger-admin/K90ranger-admin in /etc/rc.d/rc2.d directory ....
2026-06-22 15:53:53,229  [I] Creating script S88ranger-admin/K90ranger-admin in /etc/rc.d/rc3.d directory ....
2026-06-22 15:53:53,264  [I] RANGER ADMIN LOGBACK CONF FILE : /media/production-setup/ranger/ranger-admin/ews/webapp/WEB-INF/classes/conf/logback.xml
2026-06-22 15:53:53,287  [I] Setting up installation files and directory DONE
2026-06-22 15:53:53,508  [I] /media/production-setup/ranger/ranger-admin/ews/webapp folder found
2026-06-22 15:53:53,514  [I] db/postgres/optimized/current/ranger_core_db_postgres.sql file found
2026-06-22 15:53:53,520  [I] Copying POSTGRES Connector to /media/production-setup/ranger/ranger-admin/ews/webapp/WEB-INF/lib
2026-06-22 15:53:53,540  [I] Copying POSTGRES Connector to /media/production-setup/ranger/ranger-admin/ews/webapp/WEB-INF/lib DONE
2026-06-22 15:53:53,548  [I] check if command python3 exists
2026-06-22 15:53:53,556  [I] 'python3' command found
2026-06-22 15:53:54,514  [I] DB FLAVOR :POSTGRES
2026-06-22 15:53:54,515  [I] --------- Verifying Ranger DB connection ---------
2026-06-22 15:53:54,515  [I] Checking connection..
2026-06-22 15:53:54,515  [JISQL] /media/Java/jdk-17.0.19/bin/java  -cp /media/production-setup/ranger/ranger-admin/postgresql-42.7.11.jar:/media/production-setup/ranger/ranger-admin/jisql/lib/* org.apache.util.sql.Jisql -driver postgresql -cstring jdbc:postgresql://jn4:8480/ranger -u rangeradmin -p '********' -noheader -trim -c \;  -query "select 1;"
2026-06-22 15:53:55,416  [I] Checking connection passed.
2026-06-22 15:53:55,458  [I] Setup mode is not set. Running DBA steps..
2026-06-22 15:53:55,621  [I] Running DBA setup script. QuiteMode:True
2026-06-22 15:53:55,621  [I] Using Java:/media/Java/jdk-17.0.19/bin/java
2026-06-22 15:53:55,622  [I] DB FLAVOR:POSTGRES
2026-06-22 15:53:55,622  [I] DB Host:jn4:8480
2026-06-22 15:53:55,622  [I] ---------- Verifying DB root password ----------
2026-06-22 15:53:55,622  [I] DBA root user password validated
2026-06-22 15:53:55,622  [I] ---------- Verifying Ranger Admin db user password ----------
2026-06-22 15:53:55,623  [I] admin user password validated
2026-06-22 15:53:55,623  [I] ---------- Creating Ranger Admin db user ----------
2026-06-22 15:53:55,623  [JISQL] /media/Java/jdk-17.0.19/bin/java  -cp /media/production-setup/ranger/ranger-admin/postgresql-42.7.11.jar:/media/production-setup/ranger/ranger-admin/jisql/lib/* org.apache.util.sql.Jisql -driver postgresql -cstring jdbc:postgresql://jn4:8480/postgres -u root -p '********' -noheader -trim -c \; -query "SELECT 1;"
SQLException : SQL state: 08004 org.postgresql.util.PSQLException: The server requested SCRAM-based authentication, but the password is an empty string. ErrorCode: 0
2026-06-22 15:53:55,987  [E] Can't establish connection, Please check connection settings or contact Administrator
2026-06-22 15:53:56,011  [E] DB schema setup failed! Please contact Administrator.
