FROM node:18-bookworm

# 安装 code-server 和 VS Code 常用插件
RUN curl -fsSL https://code-server.dev/install.sh | sh \
  && code-server --install-extension cnbcool.cnb-welcome \
  && code-server --install-extension redhat.vscode-yaml \
  && code-server --install-extension dbaeumer.vscode-eslint \
  && code-server --install-extension waderyan.gitblame \
  && code-server --install-extension mhutchie.git-graph \
  && code-server --install-extension donjayamanne.githistory \
  && code-server --install-extension tencent-cloud.coding-copilot \
  && echo done

# 安装 SSH 服务及其他工具
RUN apt-get update && apt-get install -y git wget unzip openssh-server locales sudo vim \
  && rm -rf /var/lib/apt/lists/*

# 配置中文 locale
RUN sed -i '/zh_CN.UTF-8/s/^# //g' /etc/locale.gen \
  && locale-gen zh_CN.UTF-8
ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN:zh
ENV LC_ALL zh_CN.UTF-8

# 默认时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 安装 pnpm
RUN npm install -g pnpm

WORKDIR /app

CMD ["tail", "-f", "/dev/null"]
