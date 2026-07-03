FROM mysql:5.7.44

ENV TZ=Asia/Shanghai

RUN yum install -y tzdata bash vim \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && yum clean all

EXPOSE 3306
