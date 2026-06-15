docker build -t nginx:1.26.2-alpine ./
docker tag nginx:1.26.2-alpine registry.cn-hangzhou.aliyuncs.com/php127/nginx:1.26.2-alpine
docker tag nginx:1.26.2-alpine axizdkr/nginx:1.26.2-alpine
docker push registry.cn-hangzhou.aliyuncs.com/php127/nginx:1.26.2-alpine
docker push axizdkr/nginx:1.26.2-alpine
