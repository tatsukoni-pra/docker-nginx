FROM alpine:3.21.0

RUN mkdir -p /var/www/html && apk upgrade --update && apk add --no-cache nginx

COPY conf/default.conf /etc/nginx/http.d/default.conf
COPY html/index.html /var/www/html/index.html 

ENTRYPOINT ["nginx", "-g", "daemon off;"]
