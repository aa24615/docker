
thisDir=$(pwd)
echo $thisDir;

for i in {1..6}
do
  docker create --name redis-node${i} --net host -v ./600${i}.conf:/etc/redis.conf -v ./600$i:/data/redis redis:5.0 redis-server /etc/redis.conf
done

docker start  redis-node1 redis-node2 redis-node3 redis-node4 redis-node5 redis-node6



