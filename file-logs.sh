#!/usr/bin/env bash

source ./.env
source ./options.sh

docker run -it --rm --network ${MNB_COMPOSE_PROJECT}_back_tier -v ${MNB_COMPOSE_PROJECT}_log_output:/var/log/mnb busybox
