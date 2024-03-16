#!/bin/bash

DOCKER_COMPOSE_FILE_NAME=$(cat env)

docker-compose -f "${DOCKER_COMPOSE_FILE_NAME}" stop

docker ps