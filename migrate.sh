#!/usr/bin/env bash

docker run --rm --network ndb_back_tier -e NODE_ENV=production mouselightdatabrowser/data /apps/migrate.sh
