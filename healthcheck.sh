#!/bin/bash
set -e

if [ ! -z "$MYSQL_ROOT_PASSWORD_PATH" ]; then
    MYSQL_ROOT_PASSWORD="$(cat $MYSQL_ROOT_PASSWORD_PATH)"
    export MYSQL_ROOT_PASSWORD
fi

echo "SELECT 1+1;" | mysql --user="root" --password="$MYSQL_ROOT_PASSWORD" > /dev/null

exit $?
