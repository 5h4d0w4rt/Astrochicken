#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
readonly DIR
for x in $(cat ${DIR}/extensions.txt); do code --install-extension $x; done
