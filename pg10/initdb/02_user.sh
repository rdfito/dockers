#!/bin/bash
set -e

# 1: --single-transaction
# U: --username
# w: --no-password
# d: --dbname

if [ -n "$DB_NAME" ] && [ -n "$DB_USER_NAME" ] && [ -n "$DB_USER_PASSWORD" ]; then
psql -1 -U "$POSTGRES_USER" -w -d "$POSTGRES_DB" <<-EOSQL
    CREATE USER "$DB_USER_NAME" WITH PASSWORD '$DB_USER_PASSWORD';
    GRANT CREATE, CONNECT ON DATABASE "$DB_NAME" TO "$DB_USER_NAME";
EOSQL
fi
