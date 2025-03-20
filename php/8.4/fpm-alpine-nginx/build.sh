docker build -t php:8.4-fpm-alpine-nginx ./
docker tag php:8.4-fpm-alpine-nginx registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-fpm-alpine-nginx
docker push registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-fpm-alpine-nginx
