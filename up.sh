#!/usr/bin/env bash

if [ -z "${TRANSFORM_VOL}" ]; then
    export TRANSFORM_VOL="/mnt/groups"
fi

if [ -z "${DATA_VOL}" ]; then
    export DATA_VOL="/opt/data"
fi

docker-compose -p ndb up -d
