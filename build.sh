#!/bin/bash

set -e

# Remove exist folder
if [ -d api ] || [ -d web ]; then rm -rf api web; fi;

git clone --depth=1 --branch=master \
 https://github.com/neighborhood999/next-fiveN1  web

git clone --depth=1 --branch=master \
 https://github.com/neighborhood999/docker-fiveN1  api

find . -type d -name .git | xargs rm -rf

# Building images and execute docker-compose
make
