#!/usr/bin/env bash

if [ -z "${TRANSFORM_VOL}" ]; then
#   Until ml-ubuntu-test has standard mounts
#   export TRANSFORM_VOL="/groups/mousebrainmicro/mousebrainmicro"
    export TRANSFORM_VOL="/mnt/groups"
fi

docker-compose -p ndb up -d
