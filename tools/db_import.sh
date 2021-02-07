#!/usr/bin/env bash

if [ ! -f /app/db/db.sql ]; then
  echo "db_import.sh # DB file does not exist";
  exit 1;
fi

echo 'y' | wp db reset
wp db import /app/db/db.sql
# wp search-replace 'FROM' 'TO' --precise --all-tables-with-prefix
