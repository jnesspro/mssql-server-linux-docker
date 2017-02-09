docker stop webestdb
docker rm webestdb
docker build . -t jnesspro/mssql-server-linux &&
docker run -p 1434:1433 -e 'SA_PASSWORD=@QAZxsw2' \
  -v /Users/ness/Documents/IdeaProjects/mssql-server-linux-docker/sql:/sql \
  --name webestdb -d jnesspro/mssql-server-linux
sleep 15 &&
docker exec -i webestdb /bin/bash < restore_webest.sh
