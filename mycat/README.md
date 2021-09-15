# mycat

新建一个centos系统

```shell
docker run -it centos
```

一键安装

```shell
sh install.sh
```

调试运行

```shell
mycat  console
```


准备两台服务器

- 127.0.0.1:3301 主
- 127.0.0.1:3302 从

搭建 [mysql主从](mysql-master-slave/README.md)


配置

`/usr/local/mycat/conf/schema.xml`

```xml
<dataHost name="localhost1" maxCon="1000" minCon="10" balance="1"
          writeType="0" dbType="mysql" dbDriver="native" switchType="1"  slaveThreshold="100">
    <heartbeat>show slave status</heartbeat>
    <writeHost host="m1" url="127.0.0.1:3301" user="root" password="root">
        <readHost host="s1" url="192.168.10.206:3302" user="root" password="root">
        </readHost>
    </writeHost>
</dataHost>
```