#!/usr/bin/env bash

docker run -it --rm --network ndb_back_tier -e NODE_ENV=production -v /opt/data:/opt/data mouselightdatabrowser/data
