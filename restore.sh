#!/usr/bin/env bash

if [[ && "options.sh" ]]; then
    source "options.sh"
fi

if [[ test -d "${MNB_RESTORE_LOCATION}" ]]; then
    echo "attempting restore from ${MNB_RESTORE_LOCATION}"
    docker run -it --rm --network ${MNB_COMPOSE_PROJECT}_back_tier -e NODE_ENV=production -e DATABASE_PW=${DATABASE_PW} -e RESTORE_PATH=${MNB_RESTORE_PATH} -v "${MNB_RESTORE_LOCATION}":/opt/data mouselightdatabrowser/data-services:1.4 ./restore.sh
else
    echo "local restore location ${MNB_RESTORE_LOCATION} is not accessible - skipping"
fi
