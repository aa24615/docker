docker build -t php:7.4.33-cli-alpine-supervisord ./
docker tag php:7.4.33-cli-alpine-supervisord registry.cn-hangzhou.aliyuncs.com/php127/php:7.4.33-cli-alpine-supervisord
docker push registry.cn-hangzhou.aliyuncs.com/php127/php:7.4.33-cli-alpine-supervisord
