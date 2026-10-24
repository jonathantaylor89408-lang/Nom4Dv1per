#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
chmod +x setup.sh
command -v python3 >/dev/null 2>&1 && python3 -c "print('python3 ready')" || echo "python3 missing. Setup can still run."
./setup.sh --init
echo "Desk: https://vipergearlabs.grok.me/"
echo "Sample: https://nomadone.gumroad.com/l/tvzebu"
