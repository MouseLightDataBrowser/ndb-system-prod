#!/usr/bin/env bash

docker run -it --rm --network mdb_back_tier -e NODE_ENV=production mouselightdatabrowser/data /apps/seed.sh
