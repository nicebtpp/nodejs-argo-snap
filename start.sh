#!/bin/sh
# SnapDeploy 启动脚本：为所有index.js支持的变量设置默认值，避免表单漏填导致行为异常
# 如果 SnapDeploy 已注入同名环境变量，则以其为准（:? 不会覆盖已存在的值）

# 基础节点配置
export UUID="${UUID:-9afd1229-b893-40c1-84dd-51e7ce204913}"
export NAME="${NAME:-snapdeploy-nicebtpp}"

# 哪吒探针 (v0: 填端口; v1: 端口留空)
export NEZHA_SERVER="${NEZHA_SERVER:-nezhak2.btpp.ggff.net}"
export NEZHA_PORT="${NEZHA_PORT:-443}"
export NEZHA_KEY="${NEZHA_KEY:-snap}"

# Argo 固定隧道 (留空则用临时隧道)
export ARGO_DOMAIN="${ARGO_DOMAIN:-snap.5201972.xyz}"
export ARGO_AUTH="${ARGO_AUTH:-eyJhIjoiZmJkN2VhODFlMjI1MWIzMWMyYmJmNWJmZTFkY2Q3OWEiLCJ0IjoiNDQ5ZGM1ZWQtMDdhYS00MTRjLThlMmUtZWI5Nzk4N2U4NzFjIiwicyI6Ik1HRm1OamhqTmpJdFpUY3paQzAwTlRVMUxXSTNZelF0TXpSaU1qRmtPVE16T1dReSJ9}"
export ARGO_PORT="${ARGO_PORT:-8001}"

# 节点优选
export CFIP="${CFIP:-saas.sin.fan}"
export CFPORT="${CFPORT:-443}"

# HTTP / 服务端口
export PORT="${PORT:-3000}"
export SERVER_PORT="${SERVER_PORT:-3000}"

# 运行目录 / 订阅路径
export FILE_PATH="${FILE_PATH:-.tmp}"
export SUB_PATH="${SUB_PATH:-sub}"

# 日志
export SHOW_LOG="${SHOW_LOG:-true}"

# 自动保活 (需配合 PROJECT_URL)
export AUTO_ACCESS="${AUTO_ACCESS:-false}"
export PROJECT_URL="${PROJECT_URL:-https://example.com}"

# 订阅上传
export UPLOAD_URL="${UPLOAD_URL:-https://example.com}"

# 占位端口 (代码当前未启用, 仅用于通过平台表单必填校验)
export HY2_PORT="${HY2_PORT:-8443}"
export S5_PORT="${S5_PORT:-1080}"
export REALITY_PORT="${REALITY_PORT:-443}"

echo ">>> SnapDeploy start.sh: 环境变量已就绪, 启动 node index.js"
exec node index.js
