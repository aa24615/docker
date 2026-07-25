#!/usr/bin/env bash
set -euo pipefail

NETWORK_NAME="app_net"

if docker network inspect "$NETWORK_NAME" >/dev/null 2>&1; then
  echo "网络 ${NETWORK_NAME} 已存在"
else
  docker network create "$NETWORK_NAME"
  echo "网络 ${NETWORK_NAME} 创建成功"
fi
