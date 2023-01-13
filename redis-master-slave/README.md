## reids主从

### 运行

```shell
docker-compose up -d
```

### 说明

数据目录 主 `master`  从 `slave`          
主配置文件 `redis-master.conf`       
从配置文件 `redis-slave.conf`        

需要多个从,请复 `slave` 与 `docker-compose.yml` 内容