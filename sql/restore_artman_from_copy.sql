USE [master]
GO
CREATE DATABASE [ArtMan] ON
( FILENAME = N'/var/opt/mssql/data/ArtMan.mdf' ),
( FILENAME = N'/var/opt/mssql/data/ArtMan.ldf' )
 FOR ATTACH ;
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
