FROM cloudbase-839024615-docker.pkg.coding.net/joy127/docker/php:7.4.33-fpm-alpine3.15
WORKDIR /www/


#git

RUN apk add git

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