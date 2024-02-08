#!/bin/bash

mode=${TOOLS_MODE-'local'}

if [[ $mode == "local" ]]; then
#  wp search-replace 'FROM' 'TO' --precise --all-tables-with-prefix
  exit 0;
fi

if [[ $mode == "production" ]]; then
#  wp search-replace 'FROM' 'TO' --precise --all-tables-with-prefix
  exit 0;
fi
