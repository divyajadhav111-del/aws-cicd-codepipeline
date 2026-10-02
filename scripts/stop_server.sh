#!/bin/bash
# First deployment: httpd may not exist yet, so never fail here.
systemctl stop httpd 2>/dev/null || true
exit 0
