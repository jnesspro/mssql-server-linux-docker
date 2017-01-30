#cp /Users/ness/Yandex.Disk.localized/backup/ArtMan.bak ArtMan.bak &&
docker build . -t jnesspro/mssql-server-linux &&
#rm ArtMan.bak &&
docker run -p 1433:1433 -e 'SA_PASSWORD=@QAZxsw2' \
  -v /Users/ness/Yandex.Disk.localized/backup/artmandb:/var/opt/mssql/backup \
  --name artmandb -d jnesspro/mssql-server-linux &&
sleep 15 &&
docker exec --interactive artmandb /bin/bash < restore.sh
