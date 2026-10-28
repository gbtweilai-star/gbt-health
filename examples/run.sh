#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_health info
PYTHONPATH=src python -m gbt_health check --payload '{}'
PYTHONPATH=src python -m gbt_health run   --payload '{}'
