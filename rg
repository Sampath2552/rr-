2026-06-22 15:44:26,399  [I] Checking connection passed.
2026-06-22 15:44:26,424  [E] 'setup_mode' not found in /media/production-setup/ranger/ranger-admin/install.properties file while getting....!!
2026-06-22 15:44:26,429  [I] Setup mode is not set. Running DBA steps..
2026-06-22 15:44:26,591  [I] Running DBA setup script. QuiteMode:True
2026-06-22 15:44:26,591  [I] Using Java:/media/Java/jdk-17.0.19/bin/java
2026-06-22 15:44:26,591  [I] DB FLAVOR:POSTGRES
2026-06-22 15:44:26,591  [I] DB Host:jn4:8480
2026-06-22 15:44:26,592  [I] ---------- Verifying DB root password ----------
2026-06-22 15:44:26,592  [I] DBA root user password validated
2026-06-22 15:44:26,592  [I] ---------- Verifying Ranger Admin db user password ----------
2026-06-22 15:44:26,592  [I] admin user password validated
2026-06-22 15:44:26,592  [I] ---------- Creating Ranger Admin db user ----------
2026-06-22 15:44:26,592  [JISQL] /media/Java/jdk-17.0.19/bin/java  -cp /media/production-setup/ranger/ranger-admin/postgresql-42.7.11.jar:/media/production-setup/ranger/ranger-admin/jisql/lib/* org.apache.util.sql.Jisql -driver postgresql -cstring jdbc:postgresql://jn4:8480/postgres -u root -p '********' -noheader -trim -c \; -query "SELECT 1;"
SQLException : SQL state: 08004 org.postgresql.util.PSQLException: The server requested SCRAM-based authentication, but the password is an empty string. ErrorCode: 0
2026-06-22 15:44:27,142  [E] Can't establish connection, Please check connection settings or contact Administrator
2026-06-22 15:44:27,166  [E] DB schema setup failed! Please contact Administrator.
