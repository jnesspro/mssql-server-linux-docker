docker stop voxmedb
sleep 5
docker run -p 1433:1433 -e 'SA_PASSWORD=@QAZxsw2' \
  -v ~/Yandex.Disk.localized/backup/artmandb:/var/opt/mssql/backup \
  -v ~/projects/docker/mssql-server-linux-docker/sql:/sql \
  --name voxmedb --rm -d jnesspro/mssql-server-linux &&
  sleep 20 &&
  docker exec -i voxmedb /bin/bash < restore_artman.sh
