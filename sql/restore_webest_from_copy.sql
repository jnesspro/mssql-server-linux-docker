USE [master]
GO
CREATE DATABASE [webest] ON
( FILENAME = N'/var/opt/mssql/data/webest.mdf' ),
( FILENAME = N'/var/opt/mssql/data/webest.ldf' )
 FOR ATTACH ;
GO
CREATE LOGIN webest WITH PASSWORD = 'webest', DEFAULT_DATABASE=[webest], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
Use webest;
GO
ALTER USER webest WITH LOGIN = webest
GO

GRANT ALTER, REFERENCES, INSERT, SELECT, UPDATE, DELETE ON DATABASE :: webest TO webest