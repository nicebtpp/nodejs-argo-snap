FROM node:18-alpine

WORKDIR /app

COPY package.json ./
RUN npm install

COPY index.js index.html ./

# 运行时依赖（argo 隧道 / cloudflared 需要）
RUN apk add --no-cache openssl curl gcompat iproute2 coreutils bash

EXPOSE 3000

CMD ["node", "index.js"]
