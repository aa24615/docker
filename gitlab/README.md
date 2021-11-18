# docker-gitlab

gitlab一健包


### 运行

```shell
docker-compose up -d
```


### 说明

用户名: `root`     
密码: `./config/initial_root_password` 文件中    
管理后台: `http://gitlab.test.com:8091` 

如果您在本地测试,请在 hosts 添加重定向 `127.0.0.1 gitlab.test.com`

配置域名请修改 `docker-compose.yml`