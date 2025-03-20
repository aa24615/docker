FROM php:8.4-fpm-alpine
WORKDIR /www/

#nginx
RUN apk add nginx

#php
COPY ./php.ini /usr/local/etc/php/conf.d/php.ini

#php-fpm
COPY ./php-fpm.conf /usr/local/etc/php-fpm.conf

#nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./enable-php.conf /etc/nginx/enable-php.conf
COPY ./pathinfo.conf /etc/nginx/pathinfo.conf
COPY ./fastcgi.conf /etc/nginx/fastcgi.conf

#www
COPY ./index.php /www/index.php
COPY ./index.html /www/index.html



#mkdir
RUN mkdir -p /var/run/php/
RUN mkdir -p /var/log/php/
RUN mkdir -p /var/log/nginx/

#chmod
RUN chmod -R 755 /var/run/php/
RUN chmod -R 755 /var/log/php/
RUN chmod -R 755 /var/log/nginx/

RUN chmod -R 755 /etc/nginx/

#run
COPY ./start.sh /root/start.sh

RUN chmod 777 /root/start.sh

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["sh", "/root/start.sh"]
