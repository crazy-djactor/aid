#!/usr/bin/env sh

# Stop all dockers
docker stop aligneursfrancais-frontend
docker stop aligneursfrancais-backend
docker stop aligneursfrancais-redis
docker stop aligneursfrancais-postgres

docker compose stop

yes | docker system prune

# Start nginx and certbots
./deploy-compose.sh
./init-letsencrypt.sh

# Run postgres and redis dockers
./deploy-postgres.sh
./deploy-redis.sh
