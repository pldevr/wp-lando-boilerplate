#!/usr/bin/env bash

BUILD_CONFIG_FILE=$(dirname $(realpath $0))/../build.conf
BUILD_CONFIG_LOCAL_FILE=$(dirname $(realpath $0))/../build.local.conf

if [[ -f ${BUILD_CONFIG_FILE} ]]; then
  . ${BUILD_CONFIG_FILE}
fi

if [[ -f ${BUILD_CONFIG_LOCAL_FILE} ]]; then
  . ${BUILD_CONFIG_LOCAL_FILE}
fi
