#!/usr/bin/env bash

set -e

echo "time=${{ steps.hello-goudan.outputs.time }}"
docker volume create demo
docker build -t test-action .
docker run --rm --mount src=demo,dst=/demo test-action
