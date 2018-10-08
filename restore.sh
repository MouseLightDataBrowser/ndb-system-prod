#!/usr/bin/env bash

if [ -a "options.sh" ]; then
    source "options.sh"
fi

if [ -z "MNB_COMPOSE_PROJECT" ]; then
    export MNB_COMPOSE_PROJECT="mnb"
fi

if [ -z "${MNB_RESTORE_LOCATION}" ]; then
    export MNB_RESTORE_LOCATION="/opt/data/backup"
fi

echo "Using restore location ${MNB_RESTORE_LOCATION}"

test -d "${MNB_RESTORE_LOCATION}"  || echo "Restore location is not accessible - skipping"
test -d "${MNB_RESTORE_LOCATION}"  || exit 0

docker run -it --rm --network ${MNB_COMPOSE_PROJECT}_back_tier -e NODE_ENV=production -e DATABASE_PW=${DATABASE_PW} -v "${MNB_RESTORE_LOCATION}":/opt/data/restore mouselightdatabrowser/data-services restore.sh
