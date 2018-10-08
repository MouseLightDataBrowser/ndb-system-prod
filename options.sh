#!/usr/bin/env bash

# Will override all database passwords (optional).
export DATABASE_PW=pgsecret

# Customize Compose project/container prefix.
export MNB_COMPOSE_PROJECT=mnb

# Environment variables that used both in the Docker Compose files and various scripts.  Env var that just used in the
# Docker Compose files are in the Compose specific file env.

# Location is mapped to the backup location in the data services container.  Backup files will appear in sample, swc,
# transform, and search subdirectories within this location.  Note that this is _not_ mapped to the BACKUP_PATH env var
# in the data services container.  It is used to map a local location to the default backup path in the container via a
# volume mapping.
export MNB_BACKUP_LOCATION="/Volumes/Spare/Projects/Janelia/Neuron Data Browser/backup"

export MNB_RESTORE_LOCATION="/Volumes/Spare/Projects/Janelia/Neuron Data Browser/restore"
