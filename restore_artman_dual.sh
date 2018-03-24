cp /var/opt/mssql/backup/ArtMan.mdf /var/opt/mssql/data/ArtMan.mdf &&
cp /var/opt/mssql/backup/ArtMan.ldf /var/opt/mssql/data/ArtMan.ldf &&
cp /var/opt/mssql/backup/ArtMan.mdf /var/opt/mssql/data/ArtManTesting.mdf &&
cp /var/opt/mssql/backup/ArtMan.ldf /var/opt/mssql/data/ArtManTesting.ldf &&
/opt/mssql-tools/bin/sqlcmd -U SA -P @QAZxsw2 -i /sql/restore_artman_from_copy_dual.sql
