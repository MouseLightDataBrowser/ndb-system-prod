#!/usr/bin/env bash

if [ -a "options.sh" ]; then
    source "options.sh"
fi

echo "Using restore location ${MNB_RESTORE_LOCATION}"

test -d "${MNB_RESTORE_LOCATION}"  || echo "Restore location is not accessible - skipping"
test -d "${MNB_RESTORE_LOCATION}"  || exit 0

docker run -it --rm --network ${MNB_COMPOSE_PROJECT}_back_tier -e NODE_ENV=production -e DATABASE_PW=${DATABASE_PW} -v "${MNB_RESTORE_LOCATION}":/opt/data/restore mouselightdatabrowser/data-services restore.sh
