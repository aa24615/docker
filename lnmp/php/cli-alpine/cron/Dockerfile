FROM registry.cn-hangzhou.aliyuncs.com/php127/php:7.4.33-cli-alpine

RUN apk update
RUN apk add cronie

CMD /usr/sbin/crond -n -x bit