#!/usr/bin/env sh

docker stop aligneursfrancais-postgres

yes | docker system prune

docker run \
  --name aligneursfrancais-postgres \
  --network=aligneursfrancais \
  --ip 172.20.0.4 \
  --hostname aligneursfrancais_postgres \
  --restart unless-stopped \
  -p 5432:5432 \
  -e POSTGRES_DB=aligneursfrancais \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres123qwe!@#QWE \
  -e PGDATA=/var/lib/postgresql/data/pgdata \
  -v $PWD/postgres-data:/var/lib/postgresql/data \
  -d postgres

yes | docker system prune
