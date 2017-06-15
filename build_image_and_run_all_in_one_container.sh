./build_image.sh &&
sleep 15 &&
docker exec -i voxmedb /bin/bash < restore_artman.sh &&
docker exec -i voxmedb /bin/bash < restore_webest.sh
