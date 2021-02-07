#!/usr/bin/env bash

path=/app/web/web/wp

if [ ! -f /app/db/db.sql ]; then
  echo "db_import.sh # DB file does not exist";
  exit 1;
fi

echo 'y' | wp db reset --path=${path}
wp db import /app/db/db.sql --path=${path}
# wp search-replace 'FROM' 'TO' --precise --all-tables-with-prefix --path=${path}
