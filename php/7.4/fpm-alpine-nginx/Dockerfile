FROM php:7.4.33-fpm-alpine3.15
WORKDIR /www/


COPY ./php.ini /usr/local/etc/php/conf.d/php.ini
COPY ./php-fpm.conf /usr/local/etc/php-fpm.d/php-fpm.conf
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./defaul.conf /etc/nginx/conf.d/defaul.conf




#git

RUN apk add git

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



EXPOSE 80 443

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
