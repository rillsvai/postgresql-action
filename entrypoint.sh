#!/bin/sh
set -x

docker run \
  -e POSTGRES_USER="${INPUT_USER}" \
  -e POSTGRES_PASSWORD="${INPUT_PASSWORD}" \
  -e POSTGRES_DB="${INPUT_DB_NAME}" \
  -p 5432:5432 \
  -d postgres:"${INPUT_VERSION}"