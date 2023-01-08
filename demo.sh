#!/usr/bin/env bash

set -e

echo "time=${time}"
docker volume create demo
docker build -t test-action .
docker run --rm --mount src=demo,dst=/demo test-action
