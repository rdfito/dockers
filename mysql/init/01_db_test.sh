#!/bin/bash
set -e

# u: --username
# p: --password

if [ -n "$MYSQL_USER" ] && [ -n "$MYSQL_PASSWORD" ] && [ -n "$MYSQL_DATABASE" ]; then
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE}_test COLLATE 'utf8mb4_unicode_ci';
    GRANT ALL ON ${MYSQL_DATABASE}_test.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
EOSQL
echo "test db created"
fi