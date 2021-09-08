#!/usr/bin/env bash

if [ -f ../build.conf ]; then
  . ../build.conf
fi

if [ -f ../build.local.conf ]; then
  . ../build.local.conf
fi
