#!/usr/bin/env bash
# v2 pipeline: slice -> signature -> rules -> assemble -> lint.
#
# Every step is deterministic except Phase A and Phase B, which call the LLM.
# Responses are cached by prompt hash, so re-running this script costs nothing
# unless a prompt or the corpus changed.
#
# Usage:
#   ./run_v2.sh                       # default scope: Article 5
#   ./run_v2.sh --articles art_5,art_6
#   ./run_v2.sh --articles all        # every article in the act
#   ARTICLES=art_5 FORCE=1 ./run_v2.sh   # ignore cache, regenerate
set -euo pipefail
cd "$(dirname "$0")"

PY=venv/bin/python
OUT="${OUT:-out_v2}"
UNITS="${UNITS:-20260922T172249_32024R1689_3f672e3e/units}"
ARTICLES="${ARTICLES:-art_5}"
MODEL="${MODEL:-gpt-oss:120b-cloud}"
FORCE_FLAG=""
[ "${FORCE:-0}" = "1" ] && FORCE_FLAG="--force"

# Allow --articles X to override the env default
while [ $# -gt 0 ]; do
  case "$1" in
    --articles) ARTICLES="$2"; shift 2 ;;
    --model)    MODEL="$2";    shift 2 ;;
    --force)    FORCE_FLAG="--force"; shift ;;
    *) echo "unknown flag: $1" >&2; exit 2 ;;
  esac
done

echo "scope=$ARTICLES  model=$MODEL  out=$OUT"
echo

echo "== Phase 0/4: slice provisions out of the whole-act unit (deterministic) =="
$PY src/slice.py --units "$UNITS" --out "$OUT/slices"
echo

echo "== Phase A 1/4: build and freeze the signature (1 LLM call) =="
$PY src/signature.py --units "$UNITS" --out "$OUT" --model "$MODEL" $FORCE_FLAG
echo

echo "== Phase B 2/4: generate rules, 1 LLM call per provision =="
$PY src/generate_rules.py --units "$UNITS" --out "$OUT" \
    --articles "$ARTICLES" --model "$MODEL" $FORCE_FLAG
echo

echo "== Phase C 3/4: assemble the ontology (deterministic) =="
$PY src/merge_v2.py --units "$UNITS" --out "$OUT" --articles "$ARTICLES"
echo

echo "== Phase D 4/4: lint (deterministic) =="
$PY src/lint.py --units "$UNITS" --out "$OUT" --articles "$ARTICLES"
