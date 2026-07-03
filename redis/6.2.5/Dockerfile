FROM redis:6.2.5-alpine

RUN apk add --no-cache tzdata bash vim
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 6379

CMD ["redis-server"]
