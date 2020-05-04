#!/bin/bash
set -e

# U: --username
# w: --no-password
# d: --dbname

if [ -n "$DB_NAME" ]; then
psql -U "$POSTGRES_USER" -w -d "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE "$DB_NAME";
EOSQL
fi
