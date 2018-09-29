#!/usr/bin/env bash

if [ -a "options.sh" ]; then
    source "options.sh"
fi

if [ -z "MNB_COMPOSE_PROJECT" ]; then
    export MNB_COMPOSE_PROJECT="mnb"
fi

if [ -z "${MNB_BACKUP_LOCATION}" ]; then
    export MNB_BACKUP_LOCATION="/opt/data/backups"
fi

echo "${MNB_BACKUP_LOCATION}"

test -d "${MNB_BACKUP_LOCATION}"  || echo "Backup location is not accessible - skipping"
test -d "${MNB_BACKUP_LOCATION}"  || exit 0

docker run -it --rm --network ${MNB_COMPOSE_PROJECT}_back_tier -e NODE_ENV=production -e DATABASE_PW=${DATABASE_PW} -v "${MNB_BACKUP_LOCATION}":/opt/data/backups mouselightdatabrowser/data
