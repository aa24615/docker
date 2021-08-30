```shell

docker exec -it redis-node1 /bin/bash

```


```shell

redis-cli --cluster create \
127.0.0.1:6001 \
127.0.0.1:6002 \
127.0.0.1:6003 \
127.0.0.1:6004 \
127.0.0.1:6005 \
127.0.0.1:6006 \
--cluster-replicas 1

```

```shell

redis-cli --cluster create \
106.53.147.61:6001 \
106.53.147.61:6002 \
106.53.147.61:6003 \
106.53.147.61:6004 \
106.53.147.61:6005 \
106.53.147.61:6006 \
--cluster-replicas 1

```


