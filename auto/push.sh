#!/bin/bash

image="nginx:1.23.2 494526681395.dkr.ecr.ap-east-1.amazonaws.com/goudan-test:${GITHUB_RUN_ID}"

docker pull nginx:1.23.2
docker tag nginx:1.23.2 "${image}"
docker push "${image}"
