#!/usr/bin/env bash
echo '通过DockerFile创建镜像'
echo '当前目录:' && pwd
docker build -f ./Dockerfile -t nginx-myweb .
echo '删除容器'
docker stop docker_nginx && docker rm docker_nginx
echo '启动容器'
docker run --name docker_nginx -d -p 8011:80 nginx-myweb
#docker run --name docker_nginx -d --network host nginx-myweb
