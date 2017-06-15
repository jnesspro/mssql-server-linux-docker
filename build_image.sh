docker stop voxmedb
docker rm voxmedb
docker rmi jnesspro/mssql-server-linux
docker build . -t jnesspro/mssql-server-linux &&
docker run -p 1433:1433 -e 'SA_PASSWORD=@QAZxsw2' \
  -v /Users/ness/Yandex.Disk.localized/backup/artmandb:/var/opt/mssql/backup \
  -v /Users/ness/Projects/docker/mssql-server-linux-docker/sql:/sql \
  --name voxmedb -d --rm jnesspro/mssql-server-linux
