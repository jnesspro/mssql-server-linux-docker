cp /var/opt/mssql/backup/ArtMan_test.mdf /var/opt/mssql/data/ArtMan.mdf &&
cp /var/opt/mssql/backup/ArtMan_test.ldf /var/opt/mssql/data/ArtMan.ldf &&
/opt/mssql-tools/bin/sqlcmd -U SA -P @QAZxsw2 -i /sql/restore_artman_from_copy.sql
