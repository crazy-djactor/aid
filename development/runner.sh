#!/usr/bin/env sh

docker stop aligneursfrancais-nginx

yes | docker system prune

docker build --no-cache -t aligneursfrancais-nginx .

docker run --name aligneursfrancais-nginx --network aligneursfrancais --ip 172.20.0.2 --hostname nginx -p 80:80 -v $PWD/nginx/conf.d:/etc/nginx/conf.d:ro -d aligneursfrancais-nginx
# docker run --name aligneursfrancais-nginx --network bridge --hostname nginx  -p 80:80 -d aligneursfrancais-nginx

yes | docker system prune


