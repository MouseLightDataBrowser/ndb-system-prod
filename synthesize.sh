#!/usr/bin/env bash

docker run --rm --network ndb_back_tier -e NODE_ENV=production mouselightdatabrowser/data /apps/synthesize.sh $1 $2 $3
