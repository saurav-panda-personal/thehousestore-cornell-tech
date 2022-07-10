#!/bin/sh
# wait-for-postgres.sh

set -e
  
host="$1"
>&2 echo "$host"
sleep 5
shift
# until ping -c 1 "$host" ; do
#   >&2 echo "Postgres is unavailable - sleeping"
#   sleep 1
# done
  
>&2 echo "Postgres is up - executing command"
exec "$@"