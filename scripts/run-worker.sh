#!/bin/bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
bash "$DIR/install-plugins.sh"

python -m nomad.cli admin run action-internal-worker

