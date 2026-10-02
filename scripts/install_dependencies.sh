#!/bin/bash
set -e
if ! command -v httpd >/dev/null 2>&1; then
  dnf install -y httpd
fi
systemctl enable httpd
rm -rf /var/www/html/*
