#!/usr/bin/env bash

set -e

docker volume create demo
docker build -t test-action .
docker run --rm -v demo:/demo test-action
