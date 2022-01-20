FROM alpine:3.14 AS builder
WORKDIR /app
COPY package.json package-lock.json .
RUN npm install --registry=http://registry.npm.taobao.org
COPY . .
RUN npm run build

FROM alpine:3.14
COPY --FROM=builder /app/server ./server
COPY --FROM=builder /app/public ./public
COPY --FROM=builder node_modules .
COPY package.json package-lock.json .
EXPOSE 3000
CMD npm run start
