docker stop voxmedb
sleep 10
docker run -p 1433:1433 -e 'SA_PASSWORD=@QAZxsw2' \
  -v ~/projects/docker/mssql-server-linux-docker/sql:/sql \
  --name voxmedb --rm -d jnesspro/mssql-server-linux &&
  sleep 15 &&
  docker exec -i voxmedb /bin/bash < restore_lm.sh
