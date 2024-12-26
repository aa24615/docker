# docker

读心印的docker笔记    
开箱即用

#### 阿里镜像加速 
```
https://59qupr8z.mirror.aliyuncs.com
```

[comment]: <> (我的个人镜像仓库 )

[comment]: <> (```)

[comment]: <> (registry.cn-hangzhou.aliyuncs.com/php127)

[comment]: <> (```)


#### web


- [x] [lnmp](./lnmp/) php + mysql + redis
- [x] [lnmp-mongodb](./lnmp_mongodb/) php + mongodb + redis
- [x] [lnmn-mysql](./lnmn_mysql/) nodejs + mysql + redis 
- [x] [lnmn-mongodb](./lnmn_mongodb/) nodejs + mongodb + redis

请自行修改端口/路径

#### php

- [x] [php7.4.33-fpm-alpine](./php/7.4/) php7.4.33-alpine fpm版
- [x] [php7.4.33-cli-alpine](./php/7.4/cli-alpine) php7.4.33-alpine cli版
- [x] [php7.4.33-cli-alpine-cron](./php/7.4/cli-alpine/cron) php7.4.33-alpine cli版 crontab定时任务
- [x] [php7.4.33-cli-alpine-supervisord](./php/7.4/cli-alpine/supervisord) php7.4.33-alpine cli版 supervisord守护进程

其他版本请自行修改

#### redis

- [x] [redis集群](./redis-cluster/)
- [x] [redis主从](./redis-master-slave/) 
- [ ] [redis哨兵](./redis-sentinel/) 

#### mysql
  
- [ ] [mysql主从](./mysql-master-slave/)  
- [ ] [mycat中间件](./mycat/) 
- [x] [mysql备份](./mysql-backup/) 


#### 其他


- [x] [gitlab](./gitlab/)  (包含 gitlab-runner 流水线)
- [x] [uptime-kuma](./uptime-kuma/) http监控
- [x] [vaultwarden](./vaultwarden/) 密码库
- [x] [goaccess](./goaccess/) 日志分析
- [x] [coscmd](./coscmd/) 腾讯cos备份
- [x] [tengine](./tengine/) 阿里优化版nginx
- [x] [mycli](./mycli/) 一个很好用的mysql命令行
- [x] [wework-msgaudit-php-docker](https://github.com/aa24615/wework-msgaudit-php-docker) 企业微信-会话内容存档

## 参与贡献

1. fork 当前库到你的名下
2. 在你的本地修改完成审阅过后提交到你的仓库
3. 提交 PR 并描述你的修改，等待合并

### License

[LICENSE](LICENSE)