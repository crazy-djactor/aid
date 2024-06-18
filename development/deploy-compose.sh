#!/bin/bash

# ./init-letsencrypt.sh

docker compose stop
docker compose down

docker compose up -d


