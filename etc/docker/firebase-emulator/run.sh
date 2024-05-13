#!/usr/bin/env sh

export GCP_PROJECT="${GCP_PROJECT}"
export UI_EMULATOR_PORT="${UI_EMULATOR_PORT:-4000}"
export UI_ENABLED="${UI_ENABLED:-true}"
export AUTH_EMULATOR_PORT="${AUTH_EMULATOR_PORT:-9099}"
export EMULATORS_HOST="${EMULATORS_HOST:-0.0.0.0}"

node /generate_config.js

# Gracefully handle shutdown https://stackoverflow.com/questions/65495344/stop-firebase-emulators-gracefully-when-docker-stop
loopPid=0
pid=0

sigterm_handler() {
  pkill -P "$pid"
  wait "$pid"
  echo "sigterm handled gracefully"
  exit 0;
}
trap 'sigterm_handler' SIGTERM

sigint_handler() {
  wait "$pid"
  wait "$loopPid"
  echo "sigint handled gracefully"
  exit 0;
}
trap 'sigint_handler' SIGINT

exec firebase emulators:start  --only auth --project="${GCP_PROJECT}" --import /firebase/emulator_data --export-on-exit /firebase/emulator_data &
pid="$!"

# wait forever
tail -f /dev/null &
loopPid="$!"
wait "$loopPid"

echo "Not a gracefully shutdown"
exit 1;
