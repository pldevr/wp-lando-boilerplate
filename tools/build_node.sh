#!/usr/bin/env bash

if [ -f ../build.conf ]; then
  . ../build.conf
fi

if [ -z $BUILD_WP_THEME_NAME ]; then
  echo "build_node.sh # Set environment: BUILD_WP_THEME_NAME";
  exit 1;
fi

# Sage
cd /app/web/web/app/themes/${BUILD_WP_THEME_NAME} && npm i && npm run build:production
