FROM registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-cli-alpine

RUN apk update
RUN apk add supervisor
RUN apk add redis

RUN echo_supervisord_conf > /etc/supervisord.conf

CMD supervisord -n -c /etc/supervisord.conf