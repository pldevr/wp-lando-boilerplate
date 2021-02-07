#!/usr/bin/env bash

path=/app/web/web/wp

echo 'y' | wp db reset --path=${path}
wp db import /app/db/db.sql --path=${path}
# wp search-replace 'FROM' 'TO' --precise --all-tables-with-prefix --path=${path}
