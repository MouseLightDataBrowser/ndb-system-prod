#!/usr/bin/env bash

if [ -z ${BACKUP_VOL} ]; then
    export BACKUP_VOL="/opt/data/backups"
fi

docker run -it --rm --network ndb_back_tier -e BACKUP_VOL=${BACKUP_VOL} -e NODE_ENV=production -v /opt/data:/opt/data -v /mnt/groups:/mnt/groups mouselightdatabrowser/data
