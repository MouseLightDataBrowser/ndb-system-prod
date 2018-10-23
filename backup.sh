#!/usr/bin/env bash

if [ -a "options.sh" ]; then
    source "options.sh"
fi

echo "${MNB_BACKUP_LOCATION}"

test -d "${MNB_BACKUP_LOCATION}"  || echo "Backup location is not accessible - skipping"
test -d "${MNB_BACKUP_LOCATION}"  || exit 0

docker run -it --rm --network ${MNB_COMPOSE_PROJECT}_back_tier -e NODE_ENV=production -e DATABASE_PW=${DATABASE_PW} -v "${MNB_BACKUP_LOCATION}":/opt/data/backup mouselightdatabrowser/data-services:1.4 backup.sh
