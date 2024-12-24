FROM php:7.4.33-fpm-alpine3.15
WORKDIR /www/


COPY ./php.ini /usr/local/etc/php/conf.d/php.ini
COPY ./php-fpm.conf /usr/local/etc/php-fpm.d/php-fpm.conf
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./install-php-extensions /usr/local/bin/install-php-extensions

RUN chmod +x /usr/local/bin/install-php-extensions


#git

RUN apk add git

#nginx

RUN apk add nginx

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


EXPOSE 80 443

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
