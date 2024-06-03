#!/bin/sh

set -o errexit
set -o pipefail
set -o nounset

# check if JHANA_MIGRATE env is true and using JHANA_DB_DRIVER and JHANA_DB_URL to run atlasgo migrations

if [ "${JHANA_MIGRATE}" = "true" ]; then
  echo "Running migrations"
  /app/atlas migrate apply --url ${JHANA_DB_URL} --dir file:///migrations/${JHANA_DB_DRIVER}
fi

exec "$@"