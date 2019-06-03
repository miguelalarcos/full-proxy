#!/bin/sh
# wait-for-api.sh not tested

set -e

host="$1"
shift
cmd="$@"

until curl http://api:3000/api/3000; do
  >&2 echo "api is unavailable - sleeping"
  sleep 1
done

>&2 echo "api is up - executing command"
exec $cmd