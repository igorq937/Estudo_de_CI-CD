FROM node:lts-alpine3.15 AS builder

WORKDIR /app

COPY package.json .

RUN yarn install

COPY . .

RUN yarn run build


FROM nginx:1.23.1-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/build /var/www/web

EXPOSE 8080

ENTRYPOINT ["nginx", "-g", "daemon off;"]
