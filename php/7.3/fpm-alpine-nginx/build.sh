
docker build -t php:7.3.33-fpm-alpine-nginx ./
docker tag php:7.3.33-fpm-alpine-nginx registry.cn-hangzhou.aliyuncs.com/php127/php:7.3.33-fpm-alpine-nginx
docker push registry.cn-hangzhou.aliyuncs.com/php127/php:7.3.33-fpm-alpine-nginx

