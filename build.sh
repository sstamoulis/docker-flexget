#!/bin/bash
docker build -t flexget . && \
docker images -q -f dangling=true | xargs --no-run-if-empty docker rmi