docker build -t php:8.4-cli-alpine-supervisord ./
docker tag php:8.4-cli-alpine-supervisord registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-cli-alpine-supervisord
docker push registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-cli-alpine-supervisord
