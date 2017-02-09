docker stop artmandb
docker rm artmandb
docker build . -t jnesspro/mssql-server-linux &&
docker run -p 1433:1433 -e 'SA_PASSWORD=@QAZxsw2' \
  -v /Users/ness/Yandex.Disk.localized/backup/artmandb:/var/opt/mssql/backup \
  -v /Users/ness/Documents/IdeaProjects/mssql-server-linux-docker/sql:/sql \
  --name artmandb -d jnesspro/mssql-server-linux &&
sleep 15 &&
docker exec -i artmandb /bin/bash < restore_artman.sh
