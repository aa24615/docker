# mysql 主从


```shell
docker-compose up -d
```

```shell

change master to
master_host='127.0.0.1',
master_user='root',
master_log_file='mysql-bin.000003',
master_log_pos=1201,
master_port=3306,
master_password='root';

```