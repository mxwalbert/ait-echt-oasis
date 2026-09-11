#!/bin/bash
set -e

echo "==> Reinstalling NOMAD Oasis plugins and readers..."
uv pip install --reinstall \
  'fairmat-readers-xrd' \
  'fairmat-readers-transmission' \
  'nomad-ait-echt-oasis @ git+https://github.com/mxwalbert/nomad-ait-echt-oasis.git' \
  'nomad-measurements @ git+https://github.com/FAIRmat-NFDI/nomad-measurements.git' \
  'nomad-material-processing @ git+https://github.com/FAIRmat-NFDI/nomad-material-processing.git'
echo "==> Plugin installation complete."
