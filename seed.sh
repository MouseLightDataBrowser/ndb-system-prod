#!/usr/bin/env bash

docker run -it --rm --network ndb_back_tier -e NODE_ENV=production mouselightdatabrowser/data /apps/seed.sh
