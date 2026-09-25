#!/usr/bin/env bash
# Full pipeline: generate -> merge -> validate. Extra args go to generate.py.
set -euo pipefail
cd "$(dirname "$0")"
PY=venv/bin/python
OUT="${OUT:-out}"

echo "== 1/3 generate =="
$PY src/generate.py --out "$OUT" "$@"
echo
echo "== 2/3 merge =="
$PY src/merge.py --out "$OUT"
echo
echo "== 3/3 validate =="
$PY src/validate.py --out "$OUT"
