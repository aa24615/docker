
docker create --name redis-master --net host -v D:/www/docker/redis-slave/redis-master.conf:/etc/redis.conf -v D:/www/docker/redis-slave/master:/data/redis redis:5.0 redis-server /etc/redis.conf
docker create --name redis-slave --net host -v D:/www/docker/redis-slave/redis-slave.conf:/etc/redis.conf -v D:/www/docker/redis-slave/slave:/data/redis redis:5.0 redis-server /etc/redis.conf


docker start  redis-master redis-slave
