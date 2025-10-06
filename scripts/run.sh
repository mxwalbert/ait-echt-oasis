#!/bin/bash

uv pip install --reinstall --no-deps 'nomad-ait-echt-oasis @ git+https://github.com/mxwalbert/nomad-ait-echt-oasis.git'

python -m nomad.cli admin run app --with-gui --gunicorn --host 0.0.0.0 $@
