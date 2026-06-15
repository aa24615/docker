# Nginx

基于官方 nginx:1.26.2-alpine 的基镜像，添加时区和常用工具。

## 版本

- **Nginx**: 1.26.2 (alpine)
- **Base**: nginx:1.26.2-alpine

## 改动

- 添加 tzdata，默认 Asia/Shanghai
- 添加 bash、vim、curl

## 构建

```bash
bash push.sh
```
