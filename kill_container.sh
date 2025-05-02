s_container_id=$(docker ps -a |grep mysite |grep -i up |awk '{print $1}')
echo $s_container_id
if [ -z "$s_container_id" ];then

	echo "container is running $s_container_id"
	echo "test"
	exit 0

else
	echo "kill test"
container_id=$(docker ps -a |grep mysite |grep -i exited |awk '{print $1}')
docker rm "$container_id"
	echo "final test"

fi
