FROM registry.cn-hangzhou.aliyuncs.com/php127/php:8.4-cli-alpine

RUN apk update
RUN apk add cronie

CMD /usr/sbin/crond -n -x bit