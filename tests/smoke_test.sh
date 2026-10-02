#!/bin/bash
set -e
[ -f app/index.html ]  || { echo "index.html missing"; exit 1; }
[ -f app/health.html ] || { echo "health.html missing"; exit 1; }
grep -q "<title>" app/index.html || { echo "index.html has no <title>"; exit 1; }
echo "Smoke tests passed"
