FROM cloudbase-839024615-docker.pkg.coding.net/joy127/docker/php:7.4.33-cli-alpine

RUN apk update
RUN apk add supervisor
RUN apk add redis

RUN echo_supervisord_conf > /etc/supervisord.conf

CMD supervisord -n -c /etc/supervisord.conf