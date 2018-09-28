#!/usr/bin/env bash

if [ -a "options.sh" ]; then
    source "options.sh"
fi

if [ -z "MNB_COMPOSE_PROJECT" ]; then
    export MNB_COMPOSE_PROJECT="mnb"
fi

docker-compose -p ${MNB_COMPOSE_PROJECT} down
