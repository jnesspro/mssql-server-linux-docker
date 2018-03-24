cp /var/opt/mssql/backup/webest.mdf /var/opt/mssql/data/webest.mdf &&
cp /var/opt/mssql/backup/webest.ldf /var/opt/mssql/data/webest.ldf &&
/opt/mssql-tools/bin/sqlcmd -U SA -P @QAZxsw2 -i /sql/restore_webest_from_copy.sql
