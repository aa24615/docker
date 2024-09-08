FROM php:7.4.33-fpm-alpine3.15
WORKDIR /www/

#更换源

#RUN echo "" > /etc/apt/sources.list;
#RUN echo "deb https://mirrors.aliyun.com/debian/ buster main non-free contrib" >> /etc/apt/sources.list;
#RUN echo "deb-src https://mirrors.aliyun.com/debian/ buster main non-free contrib" >> /etc/apt/sources.list;
#RUN echo "deb https://mirrors.aliyun.com/debian-security buster/updates main" >> /etc/apt/sources.list;
#RUN echo "deb-src https://mirrors.aliyun.com/debian-security buster/updates main" >> /etc/apt/sources.list;
#RUN echo "deb https://mirrors.aliyun.com/debian/ buster-updates main non-free contrib" >> /etc/apt/sources.list;
#RUN echo "deb-src https://mirrors.aliyun.com/debian/ buster-updates main non-free contrib" >> /etc/apt/sources.list;

#gd
#RUN apt install -y \
#    libfreetype6-dev \
#    libjpeg62-turbo-dev \
#    libpng-dev \
#    && docker-php-ext-configure gd --with-freetype --with-jpeg
#RUN docker-php-ext-install -j$(nproc) gd

#sys

#RUN apt clean
#RUN apt upgrade -y
#RUN apt update -y
#RUN apt install -y libzip-dev
#RUN apt install -y zlib1g-dev
#RUN apt install -y git

#RUN echo "" > /etc/apk/repositories;
#RUN echo "https://mirrors.aliyun.com/alpine/v3.15/main" > /etc/apk/repositories;
#RUN echo "https://mirrors.aliyun.com/alpine/v3.15/community" > /etc/apk/repositories;



#install-php-extensions
RUN curl -sSLf \
        -o /usr/local/bin/install-php-extensions \
        https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions && \
    chmod +x /usr/local/bin/install-php-extensions

#zip
#RUN docker-php-ext-install zip

#RUN docker-php-ext-install bcmath
#RUN docker-php-ext-install fileinfo
#RUN docker-php-ext-install exif
#RUN docker-php-ext-install pcntl

#RUN install-php-extension ssh2
#RUN install-php-extension yaml

#gd

RUN install-php-extensions gd

RUN install-php-extensions zip

RUN install-php-extensions bcmath
RUN install-php-extensions fileinfo
RUN install-php-extensions exif
RUN install-php-extensions redis
RUN install-php-extensions pdo
RUN install-php-extensions pdo_mysql
RUN install-php-extensions mysqli

#RUN apt install -y \
#		libfreetype-dev \
#		libjpeg62-turbo-dev \
#		libpng-dev \
#	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
#	&& docker-php-ext-install -j$(nproc) gd


#redis
#RUN pecl install -o -f redis \
#    && rm -rf /tmp/pear \
#    && docker-php-ext-enable redis
#
##mysql
#RUN docker-php-ext-install pdo pdo_mysql mysqli




#imagick
#RUN apt install -y --no-install-recommends libmagickwand-dev \
#    && rm -rf /var/lib/apt/lists/*
#RUN apt install -y imagemagick
#RUN apt install -y libmagick++-dev
#RUN pecl install -o -f imagick \
#    && rm -rf /tmp/pear \
#    && docker-php-ext-enable imagick
#RUN php -m
