#!/usr/bin/env fish

docker exec -it rabbitmq-node1 bash -c "rabbitmqctl cluster_status"
docker exec -it rabbitmq-node2 bash -c "rabbitmqctl stop_app"
docker exec -it rabbitmq-node2 bash -c "rabbitmqctl join_cluster rabbit@rabbitmq-node1"
docker exec -it rabbitmq-node2 bash -c "rabbitmqctl start_app"

docker exec -it rabbitmq-node1 bash -c "rabbitmqctl cluster_status"
docker exec -it rabbitmq-node3 bash -c "rabbitmqctl stop_app"
docker exec -it rabbitmq-node3 bash -c "rabbitmqctl join_cluster rabbit@rabbitmq-node1"
docker exec -it rabbitmq-node3 bash -c "rabbitmqctl start_app"

docker exec -it rabbitmq-node1 bash -c "rabbitmqctl cluster_status"
