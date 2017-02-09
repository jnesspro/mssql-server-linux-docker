RESTORE DATABASE ArtMan FROM DISK = '/var/opt/mssql/backup/ArtMan.bak' WITH FILE = 1, NOUNLOAD, STATS = 10, MOVE 'ARTMAN' TO '/var/opt/mssql/data/ArtMan.mdf', MOVE 'ARTMAN_log' TO '/var/opt/mssql/data/ArtMan.ldf', NOUNLOAD,  STATS = 10;
GO
CREATE LOGIN artman WITH PASSWORD = 'artman', DEFAULT_DATABASE=[ArtMan], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
Use ArtMan;
GO
ALTER USER artman WITH LOGIN = artman
GO
GRANT DELETE ON [CountryGroup] TO [artman] AS [dbo]
GO
GRANT INSERT ON [CountryGroup] TO [artman] AS [dbo]
GO
GRANT UPDATE ON [CountryGroup] TO [artman] AS [dbo]
GO
GRANT SELECT ON [CountryGroup] TO [artman] AS [dbo]
GO
