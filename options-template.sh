#!/usr/bin/env bash

# Customize Compose project/container prefix.
export MNB_COMPOSE_PROJECT=

# Environment variables that used both in the Docker Compose files and various scripts.  Env var that just used in the
# Docker Compose files are in the Compose specific file env.

# Location is mapped to the backup location in the data services container.  Backup files will appear in sample, swc,
# transform, and search subdirectories within this location.  Note that this is _not_ mapped to the BACKUP_PATH env var
# in the data services container.  It is used to map a local location to the default backup path in the container via a
# volume mapping.
export MNB_BACKUP_LOCATION=
