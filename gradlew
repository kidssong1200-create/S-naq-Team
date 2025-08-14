#!/usr/bin/env sh
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
exec "$DIR/gradlew.bat" "$@" 2>/dev/null || true
# On Linux/Mac GitHub Actions runners the .sh will be used, but we keep it simple.
