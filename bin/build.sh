#!/bin/bash

. /helpers/log.sh

LANDO_MODULE="build"

lando_info 'run build.sh'

# composer install --no-interaction --working-dir=/app
