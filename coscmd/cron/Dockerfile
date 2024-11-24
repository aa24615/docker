FROM python:3.7.17-alpine3.18

WORKDIR /www/

RUN pip install coscmd
RUN apk add zip

RUN apk add cronie

CMD /usr/sbin/crond -n -x bit