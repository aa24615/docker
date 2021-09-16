# 水平分表

建一个订单表
```sql
CREATE TABLE orders(
    id INT AUTO_INCREMENT,
    order_id INT,
    userid INT, 
    time INT, 
    PRIMARY KEY(id)
);
```

库配置 分表添加test1~test5库 为了方便测试直接在一台服务器中创建

```xml
<?xml version="1.0"?>
<!DOCTYPE mycat:schema SYSTEM "schema.dtd">
<mycat:schema xmlns:mycat="http://io.mycat/">
    <schema name="TESTDB" checkSQLschema="false" sqlMaxLimit="100" dataNode="dn1">
        <table name="orders" dataNode="dn1,dn2,dn3,dn4,dn5" rule="mod_rule"></table>
    </schema>
    <dataNode name="dn1" dataHost="host1" database="test1" />
    <dataNode name="dn2" dataHost="host1" database="test2" />
    <dataNode name="dn3" dataHost="host1" database="test3" />
    <dataNode name="dn4" dataHost="host1" database="test4" />
    <dataNode name="dn5" dataHost="host1" database="test5" />
    <dataHost name="host1" maxCon="1000" minCon="10" balance="0" writeType="0" dbType="mysql" dbDriver="native" switchType="1" slaveThreshold="100">
        <heartbeat>select user()</heartbeat>
        <writeHost host="hostm1" url="192.168.31.200:3306" user="root" password="root"></writeHost>
    </dataHost>
</mycat:schema>
```

分表规则

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mycat:rule SYSTEM "rule.dtd">
<mycat:rule xmlns:mycat="http://io.mycat/">
	<tableRule name="mod_rule">
		<rule>
			<columns>userid</columns>
            <!--使用mod-long规则-->
			<algorithm>mod-long</algorithm>
		</rule>
	</tableRule>
	<function name="mod-long" class="io.mycat.route.function.PartitionByMod">
		<!-- 使用5个库 -->
		<property name="count">5</property>
	</function>
</mycat:rule>
```

尝试插入一些数据

```sql
INSERT INTO orders(order_id,userid,tine) values(1,1,1631808176);
INSERT INTO orders(order_id,userid,tine) values(2,2,1631808176);
INSERT INTO orders(order_id,userid,tine) values(3,3,1631808176);
INSERT INTO orders(order_id,userid,tine) values(4,4,1631808176);
INSERT INTO orders(order_id,userid,tine) values(5,5,1631808176);
INSERT INTO orders(order_id,userid,tine) values(6,6,1631808176);
```

然后你会发现其中有一个库中有2条数据,其他库都为1条数据
