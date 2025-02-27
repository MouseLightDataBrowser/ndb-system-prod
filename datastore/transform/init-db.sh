#!/usr/bin/env bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE transform_production;
    GRANT ALL PRIVILEGES ON DATABASE transform_production TO "$POSTGRES_USER";
EOSQL
