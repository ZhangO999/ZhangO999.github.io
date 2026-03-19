#!/usr/bin/env bash
# serve.sh — build the site and serve it locally at http://localhost:8000
set -euo pipefail

bash build.sh
echo ""
echo "serving at http://localhost:8000  (ctrl-c to stop)"
python3 -m http.server 8000 --directory public
