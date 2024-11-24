docker build -t php:8.4-cli-alpine ./
docker tag php:8.4-cli-alpine registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-cli-alpine
docker push registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-cli-alpine
