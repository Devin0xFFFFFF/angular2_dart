docker build -t nginx_dartboard . && \
docker tag nginx_dartboard 10.8.9.17:7777/nginx_dartboard && \
docker push 10.8.9.17:7777/nginx_dartboard
