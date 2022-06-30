#!/bin/bash

set -eu

# cd to 19.3.0 directory
cd "$(dirname $0)/19.3.0"

# Build 19c Oracle database image
docker build --pull \
  --build-arg DB_EDITION=xe \
  --label org.opencontainers.image.revision="$(git rev-parse HEAD)" \
  --tag klo2k/oracle-database:19.3.0-xe \
  --file Dockerfile \
  .

docker build --pull \
  --build-arg DB_EDITION=ee \
  --label org.opencontainers.image.revision="$(git rev-parse HEAD)" \
  --tag klo2k/oracle-database:19.3.0-ee \
  --file Dockerfile \
  .
