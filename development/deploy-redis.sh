#!/usr/bin/env sh

docker stop aligneursfrancais-redis

yes | docker system prune

docker run \
  --name aligneursfrancais-redis \
  --network aligneursfrancais \
  --ip 172.20.0.10 \
  --hostname aligneursfrancais_redis \
  --restart unless-stopped \
  -p 6379:6379 \
  -d redis

yes | docker system prune
