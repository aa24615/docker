docker create --name redis-node1 --net host redis:5.0.5 --cluster-enabled yes --cluster-config-file nodes-node-1.conf --port 6001
docker create --name redis-node2 --net host redis:5.0.5 --cluster-enabled yes --cluster-config-file nodes-node-1.conf --port 6002
docker create --name redis-node3 --net host redis:5.0.5 --cluster-enabled yes --cluster-config-file nodes-node-1.conf --port 6003
docker create --name redis-node4 --net host redis:5.0.5 --cluster-enabled yes --cluster-config-file nodes-node-1.conf --port 6004
docker create --name redis-node5 --net host redis:5.0.5 --cluster-enabled yes --cluster-config-file nodes-node-1.conf --port 6005
docker create --name redis-node6 --net host redis:5.0.5 --cluster-enabled yes --cluster-config-file nodes-node-1.conf --port 6006


docker start \
redis-node1 \
redis-node2 \
redis-node3 \
redis-node4 \
redis-node5 \
redis-node6




