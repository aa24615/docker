FROM cloudbase-839024615-docker.pkg.coding.net/joy127/docker/php:7.4.33-fpm-alpine3.15
WORKDIR /www/

#git

RUN apk add git

#nginx

RUN apk add nginx


#install-php-extensions
RUN curl -sSLf \
        -o /usr/local/bin/install-php-extensions \
        https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions && \
    chmod +x /usr/local/bin/install-php-extensions

#ext

RUN install-php-extensions gd
RUN install-php-extensions zip
RUN install-php-extensions bcmath
RUN install-php-extensions fileinfo
RUN install-php-extensions exif
RUN install-php-extensions redis
RUN install-php-extensions pdo
RUN install-php-extensions pdo_mysql
RUN install-php-extensions mysqli
RUN install-php-extensions opcache


COPY ./php.ini /usr/local/etc/php/conf.d/php.ini
COPY ./php-fpm.conf /usr/local/etc/php-fpm.d/zz-docker.conf
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./enable-php.conf /etc/nginx/enable-php.conf
COPY ./pathinfo.conf /etc/nginx/pathinfo.conf
COPY ./fastcgi.conf /etc/nginx/fastcgi.conf
COPY ./index.php /www/index.php
COPY ./index.html /www/index.html


RUN mkdir -p /run/php/
RUN chmod 777 /run/php/

COPY ./start.sh /root/start.sh

RUN chmod 777 /root/start.sh

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["sh", "/root/start.sh"]
