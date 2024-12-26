FROM cloudbase-839024615-docker.pkg.coding.net/joy127/docker/php:7.4.33-cli-alpine

RUN apk update
RUN apk add cronie

CMD /usr/sbin/crond -n -x bit