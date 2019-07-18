PORT=$1
PORT2=$2
NAME=anyproxy

docker stop $NAME
docker rm $NAME
docker run \
--name $NAME \
-d \
--restart=always \
-p $PORT:8001 \
-p $PORT2:8002 \
-v $PWD/app:/app \
-t mrdabin/anyproxy:v4.0
