docker build -t php:8.4-fpm-alpine ./
docker tag php:8.4-fpm-alpine registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-fpm-alpine
docker push registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-fpm-alpine
