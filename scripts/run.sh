#!/bin/bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
bash "$DIR/install-plugins.sh"

exec python -m nomad.cli admin run app --with-gui --gunicorn --host 0.0.0.0 "$@"

