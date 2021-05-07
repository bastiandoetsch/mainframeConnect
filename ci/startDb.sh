#!/usr/bin/env bash
set -ex
BASH_LOADABLES_PATH=${BASH_LOADABLES_PATH:-/usr/local/lib/bash:/usr/lib/bash}
enable -f realpath realpath

dir="$(dirname "$0")"
envFile=$1

dbdata="$(realpath "$dir/../target/dbdata")"
mkdir -p "$dbdata"

# shellcheck disable=SC2091
pushd "$dir" || $(echo "Can't enter directory $dir. Aborting." && exit 1)
docker run -h db2server --name db2server --restart=always --detach --privileged=true -p 50000:50000 --env-file "../$envFile" -v "$dbdata":/database ibmcom/db2
