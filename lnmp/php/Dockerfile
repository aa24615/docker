FROM php:7.4.6-fpm
WORKDIR /www/openwork/

RUN apt-get update -y

#gd
RUN apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install -j$(nproc) gd

#redis
RUN pecl install -o -f redis \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable redis

#mysql
RUN docker-php-ext-install pdo pdo_mysql mysqli

#zip
RUN apt-get install -y libzip-dev
RUN docker-php-ext-install zip

#imagick
#RUN apt-get install -y --no-install-recommends libmagickwand-dev \
#    && rm -rf /var/lib/apt/lists/*
RUN apt-get install -y imagemagick
RUN apt-get install -y libmagick++-dev
RUN pecl install -o -f imagick \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable imagick
RUN php -m
