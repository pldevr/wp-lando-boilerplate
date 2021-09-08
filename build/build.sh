#!/usr/bin/env bash

. ./config.sh

if [ -z $BUILD_WP_THEME_NAME ]; then
  echo "build.sh # Set environment: BUILD_WP_THEME_NAME"
  exit 1
fi

# Bedrock
composer install --no-interaction --working-dir=${BUILD_PATH}/web
rm -rf ${BUILD_PATH}/web/web/wp/wp-content

# Sage
composer install --no-interaction --working-dir=${BUILD_PATH}/web/web/app/themes/${BUILD_WP_THEME_NAME}

# DB
sh ${BUILD_PATH}/tools/db_import.sh
