#!/bin/bash

set -euo pipefail
python3 < <(curl -s https://bootstrap.pypa.io/get-pip.py)
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
readonly DIR
pip3 install -r "${DIR}/pip.txt"
