#!/bin/bash
set -e

# 1: --single-transaction
# U: --username
# w: --no-password
# d: --dbname
# c: --clean
# O: --no-owner

if [ -n "$DB_NAME" ] && [ -n "$DB_DUMP" ]; then
    pg_restore -1 -U "$POSTGRES_USER" -w -d "$DB_NAME" -c --if-exists "/backups/$DB_DUMP"
fi

