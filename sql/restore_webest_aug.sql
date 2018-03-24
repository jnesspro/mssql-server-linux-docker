RESTORE DATABASE webinvint FROM DISK = '/var/opt/mssql/backup/WebINV-Aug2017.bak' WITH FILE = 1, NOUNLOAD, STATS = 10, MOVE 'WebINV' TO '/var/opt/mssql/data/webinvint.mdf', MOVE 'WebINV_log' TO '/var/opt/mssql/data/webinvint.ldf', NOUNLOAD,  STATS = 10;
GO
CREATE LOGIN webinv WITH PASSWORD = 'webinv', DEFAULT_DATABASE=[webinvint], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
Use webinvint;
GO
ALTER USER webinv WITH LOGIN = webinv
GO