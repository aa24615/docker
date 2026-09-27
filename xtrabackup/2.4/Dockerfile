FROM percona/percona-xtrabackup:2.4

ENV TZ=Asia/Shanghai

RUN microdnf -y install tzdata bash vim-minimal \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && microdnf clean all \
    && rm -rf /var/cache/yum /var/cache/dnf
