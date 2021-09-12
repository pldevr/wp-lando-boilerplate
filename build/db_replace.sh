#!/usr/bin/env bash

. $(dirname $(realpath $0))/config.sh

if [[ $BUILD_MODE == "local" ]]; then
#  wp search-replace 'FROM' 'TO' --precise --all-tables-with-prefix
fi

if [[ $BUILD_MODE == "development" ]]; then
#  wp search-replace 'FROM' 'TO' --precise --all-tables-with-prefix
fi

if [[ $BUILD_MODE == "production" ]]; then
#  wp search-replace 'FROM' 'TO' --precise --all-tables-with-prefix
fi