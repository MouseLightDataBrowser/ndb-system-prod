#!/usr/bin/env bash

# TODO Remove when swc and transform api services handle migration as sample and search do.

docker run --rm --network ndb_back_tier -e NODE_ENV=production mouselightdatabrowser/data /apps/migrate.sh
