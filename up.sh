#!/usr/bin/env bash

if [ -z "${TRANSFORM_VOL}" ]; then
    export TRANSFORM_VOL="/mnt/groups"
fi

if [ -z "${BACKUP_DATA_VOL}" ]; then
    export BACKUP_DATA_VOL="/opt/data"
fi

if [ -z "${EXPORT_DATA_VOL}" ]; then
    export EXPORT_DATA_VOL="/opt/data"
fi

docker-compose -p ndb up -d
