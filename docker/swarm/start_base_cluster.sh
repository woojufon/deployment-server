#/bin/bash

source deploy-versions.sh

#mkdir -p $DATA_PATH/mysql/data
#mkdir -p $DATA_PATH/mysql/conf
#mkdir -p $DATA_PATH/redis
#mkdir -p $DATA_PATH/haproxy/volumes/rmqha_proxy


#/usr/bin/docker network create -d overlay spush-net

/usr/bin/docker stack deploy -c docker-rabbit.yml $IMAGE_PROXY swarm-cluster

#sleep 10

#/usr/bin/docker stack deploy -c docker-monitor.yml $IMAGE_PROXY swarm-cluster


