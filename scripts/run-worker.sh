#!/bin/bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
bash "$DIR/install-plugins.sh"

if [ $# -eq 0 ]; then
  set -- -l info -Q celery --max-tasks-per-child 128
fi

exec python -m celery -A nomad.processing worker "$@"

