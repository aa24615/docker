
docker build -t goaccess:1.9.2 ./
docker tag goaccess:1.9.2 registry.cn-hangzhou.aliyuncs.com/php127/goaccess:1.9.2
docker push registry.cn-hangzhou.aliyuncs.com/php127/goaccess:1.9.2
