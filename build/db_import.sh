#!/usr/bin/env bash

. $(dirname $(realpath $0))/config.sh

if [ ! -f ${BUILD_PATH}/db/db.sql ]; then
  echo "db_import.sh # DB file does not exist"
  exit 1
fi

wp db reset --yes
wp db import ${BUILD_PATH}/db/db.sql
