#!/usr/bin/env bash

dir="$(dirname "$0")"
envFile=$1
# shellcheck disable=SC2091
pushd "$dir" || $(echo "Can't enter directory $dir. Aborting." && exit 1)
docker run -h db2server --name db2server --restart=always --detach --privileged=true -p 50000:50000 --env-file "../$envFile" -v db-data:/database ibmcom/db2
