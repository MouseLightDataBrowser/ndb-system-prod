#!/usr/bin/env bash

if [ -a "options.sh" ]; then
    source "options.sh"
fi

if [ -z "MNB_COMPOSE_PROJECT" ]; then
    export MNB_COMPOSE_PROJECT="mnb"
fi

docker-compose -f docker-compose.yml -f docker-compose.services.yml -p ${MNB_COMPOSE_PROJECT} down
