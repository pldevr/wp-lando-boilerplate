#!/usr/bin/env bash

. $(dirname $(realpath $0))/config.sh

wp db export ${BUILD_PATH}/db/db.sql
