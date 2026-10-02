#!/bin/bash
set -e
for i in {1..5}; do
  code=$(curl -s -o /dev/null -w "%{http_code}" http://localhost/health.html || true)
  if [ "$code" = "200" ]; then
    echo "Service healthy"
    exit 0
  fi
  sleep 3
done
echo "Service failed health check" >&2
exit 1
