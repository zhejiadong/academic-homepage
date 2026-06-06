#!/usr/bin/env bash
set -euo pipefail

SITE_DIR="/Users/zhejia/Brown Dropbox/Zhejia Dong/page/academic-homepage"
PORT="${1:-54201}"
URL="http://127.0.0.1:${PORT}/index.html"

cd "$SITE_DIR"

echo "Starting local preview for academic-homepage"
echo "Directory: $SITE_DIR"
echo "Port: $PORT"
echo "Open: $URL"
echo

echo "Press Ctrl+C to stop the server."
python3 -m http.server "$PORT"
