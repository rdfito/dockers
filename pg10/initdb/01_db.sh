#!/bin/bash
set -e

# U: --username
# w: --no-password
# d: --dbname

if [ -n "$DB_NAME" ] && [ -n "$DB_USER_NAME" ] && [ -n "$DB_USER_PASSWORD" ]; then
psql -U "$POSTGRES_USER" -w -d "$POSTGRES_DB" <<-EOSQL
    CREATE USER "$DB_USER_NAME" WITH PASSWORD '$DB_USER_PASSWORD';
    CREATE DATABASE "$DB_NAME";
EOSQL
fi
