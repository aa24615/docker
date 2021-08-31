
### 进入某一个节点

```shell
docker exec -it redis-node1 /bin/bash
```

### 创建集群 3主3从

请将ip替换成外网ip

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



