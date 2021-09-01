


for i in {1..6}
do
  docker create --name redis-node${i} --net host -v D:/www/docker/redis-cluster/600${i}.conf:/etc/redis.conf -v D:/www/docker/redis-cluster/600$i:/data/redis redis:5.0 redis-server /etc/redis.conf
done

docker start  redis-node1 redis-node2 redis-node3 redis-node4 redis-node5 redis-node6



docker exec -it redis-node1 /bin/bash -c "redis-cli --cluster create 127.0.0.1:6001 127.0.0.1:6002 127.0.0.1:6003 127.0.0.1:6004 127.0.0.1:6005 127.0.0.1:6006 --cluster-replicas 1"