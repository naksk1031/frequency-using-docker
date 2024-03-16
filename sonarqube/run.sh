#!/bin/bash

DOCKER_COMPOSE_FILE_NAME=$(cat env)

docker-compose -f "${DOCKER_COMPOSE_FILE_NAME}" up -d

docker-compose -f "${DOCKER_COMPOSE_FILE_NAME}" logs -f -n 10