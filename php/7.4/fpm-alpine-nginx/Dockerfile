FROM cloudbase-839024615-docker.pkg.coding.net/joy127/docker/php:7.4.33-fpm-alpine3.15
WORKDIR /www/

#git

RUN apk add git

#nginx

RUN apk add nginx

#ext

COPY ./install-php-extensions /bin/install-php-extensions
RUN chmod 777 /bin/install-php-extensions

RUN install-php-extensions gd
RUN install-php-extensions zip
RUN install-php-extensions bcmath
RUN install-php-extensions fileinfo
RUN install-php-extensions exif
RUN install-php-extensions redis
RUN install-php-extensions pdo
RUN install-php-extensions pdo_mysql
RUN install-php-extensions mysqli


COPY ./php.ini /usr/local/etc/php/conf.d/php.ini
COPY ./php-fpm.conf /usr/local/etc/php-fpm.d/php-fpm.conf
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf


EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
