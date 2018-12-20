#!/usr/bin/env bash

cd "$(dirname "$0")/nginx-html" && docker run -it --rm \
  -v ${PWD}/src:/usr/share/nginx/html:ro \
  -v ${PWD}/nginx/conf.d/default.conf:/etc/nginx/conf.d/default.conf:ro \
  -p 8081:8081 nginx