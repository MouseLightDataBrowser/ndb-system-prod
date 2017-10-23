#!/usr/bin/env bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE search_development;
    GRANT ALL PRIVILEGES ON DATABASE search_development TO "$POSTGRES_USER";
    CREATE DATABASE search_test;
    GRANT ALL PRIVILEGES ON DATABASE search_test TO "$POSTGRES_USER";
    CREATE DATABASE search_production;
    GRANT ALL PRIVILEGES ON DATABASE search_production TO "$POSTGRES_USER";
EOSQL
