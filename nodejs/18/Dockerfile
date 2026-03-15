FROM node:18-alpine3.23

RUN apk add git
RUN apk add bash
RUN apk add vim

# 默认时区
RUN apk add --no-cache tzdata
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /app

#npm
RUN npm install -g pnpm

CMD ["tail", "-f", "/dev/null"]
