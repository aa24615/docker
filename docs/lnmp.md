# LNMP 镜像构建

为 [lnmp](../lnmp/) 环境构建 MySQL 5.7、Redis 6.2.5、Nginx 镜像，并推送到 CNB 仓库，供其他项目直接使用。

## 镜像列表

| 组件 | 版本 | Dockerfile | 镜像地址 |
|------|------|------------|----------|
| MySQL | 5.7.44 (Oracle Linux) | `mysql/5.7/Dockerfile` | `docker.cnb.cool/php127/docker/mysql:5.7.44` |
| Redis | 6.2.5 | `redis/6.2.5/Dockerfile` | `docker.cnb.cool/php127/docker/redis:6.2.5` |
| Nginx | 1.26.2 | `nginx/Dockerfile` | `docker.cnb.cool/php127/docker/nginx:1.26.2` |

所有镜像均已配置 **Asia/Shanghai** 时区，并安装 `bash`、`vim`。

## CNB 平台构建

配置文件：

- [`.cnb.yml`](../.cnb.yml) — 流水线定义
- [`.cnb/web_trigger.yml`](../.cnb/web_trigger.yml) — Web 触发按钮

在 CNB 仓库页面，进入 **master** 分支，点击对应按钮即可触发构建：

| 按钮 | 事件 | 说明 |
|------|------|------|
| 构建 LNMP 基础镜像 | `web_trigger_lnmp` | 一次性构建 Nginx + MySQL + Redis |
| 构建 Nginx | `web_trigger_nginx` | 仅构建 Nginx |
| 构建 MySQL 5.7 | `web_trigger_mysql` | 仅构建 MySQL |
| 构建 Redis 6.2.5 | `web_trigger_redis` | 仅构建 Redis |
| 构建全部 | `web_trigger_all` | 包含以上所有镜像 |

## 本地手动构建

```shell
# MySQL 5.7
cd mysql/5.7
docker build -t docker.cnb.cool/php127/docker/mysql:5.7.44 .
docker push docker.cnb.cool/php127/docker/mysql:5.7.44

# Redis 6.2.5
cd redis/6.2.5
docker build -t docker.cnb.cool/php127/docker/redis:6.2.5 .
docker push docker.cnb.cool/php127/docker/redis:6.2.5

# Nginx 1.26.2
cd nginx
docker build -t docker.cnb.cool/php127/docker/nginx:1.26.2 .
docker push docker.cnb.cool/php127/docker/nginx:1.26.2
```

## 在 docker-compose 中使用

```yaml
services:
  mysql:
    image: docker.cnb.cool/php127/docker/mysql:5.7.44
    environment:
      MYSQL_ROOT_PASSWORD: root
    volumes:
      - "./mysql/data:/var/lib/mysql"

  redis:
    image: docker.cnb.cool/php127/docker/redis:6.2.5
    volumes:
      - "./redis/data:/data/redis/data"
      - "./redis/redis.conf:/etc/redis.conf"
    command: "redis-server /etc/redis.conf"

  nginx:
    image: docker.cnb.cool/php127/docker/nginx:1.26.2
    volumes:
      - "./nginx/vhost:/etc/nginx/conf.d"
      - "./nginx/conf/nginx.conf:/etc/nginx/nginx.conf"
```

PHP 镜像可配合已有构建，例如 `docker.cnb.cool/php127/docker/php:7.4.33-fpm-alpine`。
