#!/usr/bin/env bash

. ./config.sh

# Bedrock
composer install --no-interaction --working-dir=${BUILD_PATH}/web
rm -rf ${BUILD_PATH}/web/web/wp/wp-content

#if [ -z $BUILD_WP_THEME_NAME ]; then
#  echo "build.sh # required: BUILD_WP_THEME_NAME"
#  exit 1
#fi

# Theme
#composer install --no-interaction --working-dir=${BUILD_PATH}/web/web/app/themes/${BUILD_WP_THEME_NAME}
