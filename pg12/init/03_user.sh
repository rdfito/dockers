#!/bin/bash
set -e

# 1: --single-transaction
# U: --username
# w: --no-password
# d: --dbname

if [ -n "$DB_NAME" ] && [ -n "$DB_USER_NAME" ]; then
psql -1 -U "$POSTGRES_USER" -w -d "$POSTGRES_DB" <<-EOSQL
    GRANT ALL ON DATABASE "$DB_NAME" TO "$DB_USER_NAME";
EOSQL
fi
