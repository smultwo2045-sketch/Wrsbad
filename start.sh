#!/bin/sh
set -e
cd /srv
export PORT="${PORT:-8000}"
exec python -m uvicorn main:app --host 0.0.0.0 --port "$PORT"
