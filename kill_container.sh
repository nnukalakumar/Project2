s_container_id=$(docker ps -a |grep mysite |grep -i up |awk '{print $1}')
echo $s_container_id
if [ -n "$s_container_id"];then

	ehco "container is running $s_container_id"
	exit 0

else
container_id=$(docker ps -a |grep mysite |grep -i exited |awk '{print $1}')
docker rm "$container_id"

fi
