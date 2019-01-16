#!/usr/bin/env bash

if [ -a "options.sh" ]; then
    source "options.sh"
fi

echo "${MNB_LOCAL_BACKUP_LOCATION}"
echo "${MNB_REMOTE_BACKUP_LOCATION}"

test -d "${MNB_LOCAL_BACKUP_LOCATION}"  || echo "local backup location is not accessible - skipping"
test -d "${MNB_LOCAL_BACKUP_LOCATION}"  || exit 0

test -d "${MNB_REMOTE_BACKUP_LOCATION}"  || echo "remote backup location is not accessible - skipping"
test -d "${MNB_REMOTE_BACKUP_LOCATION}"  || exit 0

docker run -it --rm --network ${MNB_COMPOSE_PROJECT}_back_tier -e NODE_ENV=production -e DATABASE_PW=${DATABASE_PW} -v "${MNB_LOCAL_BACKUP_LOCATION}":/opt/data/ mouselightdatabrowser/data-services:1.4 ./backup.sh

docker run -it --rm --network ${MNB_COMPOSE_PROJECT}_back_tier -e NODE_ENV=production -e DATABASE_PW=${DATABASE_PW} -e BACKUP_PATH=/opt/data/neuron-database -v "${MNB_REMOTE_BACKUP_LOCATION}":/opt/data/ mouselightdatabrowser/data-services:1.4 ./backup.sh
