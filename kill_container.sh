container_id=$(docker ps -a |grep mysite |grep -i exited |awk '{print $1}')
docker rm "$container_id"
