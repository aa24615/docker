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
192.168.3.190:6001 \
192.168.3.190:6002 \
192.168.3.190:6003 \
192.168.3.190:6004 \
192.168.3.190:6005 \
192.168.3.190:6006 \
--cluster-replicas 1

```


