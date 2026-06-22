2026-06-22 15:57:51,350  [JISQL] /media/Java/jdk-17.0.19/bin/java  -cp /media/production-setup/ranger/ranger-admin/postgresql-42.7.11.jar:/media/production-setup/ranger/ranger-admin/jisql/lib/* org.apache.util.sql.Jisql -driver postgresql -cstring jdbc:postgresql://jn4:8480/ranger -u rangeradmin -p '********' -noheader -trim -c \;  -query "select 1;"
2026-06-22 15:57:52,251  [I] Checking connection passed.
2026-06-22 15:57:52,251  [JISQL] /media/Java/jdk-17.0.19/bin/java  -cp /media/production-setup/ranger/ranger-admin/postgresql-42.7.11.jar:/media/production-setup/ranger/ranger-admin/jisql/lib/* org.apache.util.sql.Jisql -driver postgresql -cstring jdbc:postgresql://jn4:8480/ranger -u rangeradmin -p '********' -noheader -trim -c \;  -query "select version from x_db_version_h where version = 'JAVA_PATCHES' and inst_by = 'Ranger 3.0.0-SNAPSHOT' and active = 'Y';"
2026-06-22 15:57:53,107  [I] JAVA_PATCHES have already been applied
2026-06-22 15:57:54,045  [I] DB FLAVOR :POSTGRES
2026-06-22 15:57:54,046  [I] --------- Verifying Ranger DB connection ---------
2026-06-22 15:57:54,047  [I] Checking connection..
2026-06-22 15:57:54,047  [JISQL] /media/Java/jdk-17.0.19/bin/java  -cp /media/production-setup/ranger/ranger-admin/postgresql-42.7.11.jar:/media/production-setup/ranger/ranger-admin/jisql/lib/* org.apache.util.sql.Jisql -driver postgresql -cstring jdbc:postgresql://jn4:8480/ranger -u rangeradmin -p '********' -noheader -trim -c \;  -query "select 1;"
2026-06-22 15:57:54,773  [I] Checking connection passed.
2026-06-22 15:57:54,773  [I] RANGER_ADMIN_ENV_PATH : /media/production-setup/ranger/ranger-admin
2026-06-22 15:57:54,773  [I] env_file_path : /media/production-setup/ranger/ranger-admin/ranger-admin-env*.sh
Installation of Ranger PolicyManager Web Application is completed.
