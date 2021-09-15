#### 初始化6个主机

```shell
sh start.sh
```

#### 停止所有主机
```shell
sh stop.sh
```

#### 重启所有主机
```shell
sh restart.sh
```

#### 摧毁所有主机
```shell
sh rm.sh
```

### 创建集群

- 进入任一个节点

```shell
docker exec -it redis-node1 /bin/bash
```

- 创建集群 3主3从

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

> 注: 如果外网使用,请将ip替换成外网ip,同时修改conf配置文件


