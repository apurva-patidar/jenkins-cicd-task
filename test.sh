#!/bin/sh
set -eu
test -s app/index.html
grep -q "Hello from Jenkins CI/CD!" app/index.html
echo "Application checks passed"
