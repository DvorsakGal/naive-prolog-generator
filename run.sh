#!/usr/bin/env bash
# The pipeline: structure -> signature -> clauses -> assemble -> lint.
#
# Every step is deterministic except the LLM calls in Phase A, Phase B and Phase B2.
# Responses are cached by prompt hash, so re-running this script costs nothing unless a
# prompt, the model config or the corpus changed.
#
# Usage:
#   ./run.sh                        # pass 1: 1 + 125 calls, concurrency 3
#   ./run.sh --only art_5,anx_3     # a subset, for trying a prompt change cheaply
#   ./run.sh --both                 # pass 1, reconcile, pass 2, and compare them
#   ./run.sh --pass 2               # reconcile + pass 2 only (pass 1 must exist)
#   ./run.sh --no-annexes           # 112 articles, no annexes
#   FORCE=1 ./run.sh                # ignore cached responses and regenerate
#
# Env: OUT, UNITS, MODEL, CONCURRENCY.
set -uo pipefail
cd "$(dirname "$0")"

# Each phase is checked explicitly rather than relying on `set -e`, so a stop looks
# like a stop. A lint failure used to abort the script between pass 1 and Phase B2,
# which left no ai_act_2.pl and no explanation -- it read as a crash.
step () {
  local label="$1"; shift
  if ! "$@"; then
    echo
    echo "!! STOPPED at: $label"
    echo "   The phase above reported a failure, so later phases were not run."
    echo "   Nothing downstream is built on a program that does not load."
    exit 1
  fi
}

PY=venv/bin/python
OUT="${OUT:-out}"
UNITS="${UNITS:-20260922T172249_32024R1689_3f672e3e/units}"
MODEL="${MODEL:-gpt-oss:120b-cloud}"
CONCURRENCY="${CONCURRENCY:-3}"

RUN_PASS=1
BOTH=0
ONLY=""
ANNEX_FLAG=""
FORCE_FLAG=""
[ "${FORCE:-0}" = "1" ] && FORCE_FLAG="--force"

while [ $# -gt 0 ]; do
  case "$1" in
    --pass)        RUN_PASS="$2"; shift 2 ;;
    --both)        BOTH=1; shift ;;
    --only)        ONLY="$2"; shift 2 ;;
    --no-annexes)  ANNEX_FLAG="--no-annexes"; shift ;;
    --model)       MODEL="$2"; shift 2 ;;
    --concurrency) CONCURRENCY="$2"; shift 2 ;;
    --force)       FORCE_FLAG="--force"; shift ;;
    *) echo "unknown flag: $1" >&2; exit 2 ;;
  esac
done

ONLY_FLAG=""
[ -n "$ONLY" ] && ONLY_FLAG="--only $ONLY"

echo "out=$OUT  model=$MODEL  concurrency=$CONCURRENCY  pass=$RUN_PASS  both=$BOTH"
echo

# --- Phase 0: the work list, and the check that the slicer still agrees with the corpus
echo "== Phase 0: derive the work list from the act's structure (deterministic) =="
step "Phase 0 (work list)" $PY src/structure.py --units "$UNITS" $ANNEX_FLAG
echo

# --- Phase A: one call over the definitions article, frozen and hashed
echo "== Phase A: build and freeze the vocabulary (1 LLM call) =="
step "Phase A (vocabulary)" \
  $PY src/signature.py --units "$UNITS" --out "$OUT" --model "$MODEL" $FORCE_FLAG
echo

run_pass () {
  local n="$1"
  echo "== Phase B pass $n: write clauses, 1 LLM call per article or annex =="
  step "Phase B pass $n (clauses)" \
    $PY src/rules.py --units "$UNITS" --out "$OUT" --pass "$n" \
        --model "$MODEL" --concurrency "$CONCURRENCY" $ONLY_FLAG $ANNEX_FLAG $FORCE_FLAG
  echo
  echo "== Phase C pass $n: assemble the Prolog program (deterministic) =="
  step "Phase C pass $n (assemble)" \
    $PY src/assemble.py --units "$UNITS" --out "$OUT" --pass "$n" $ANNEX_FLAG
  echo
  echo "== Phase D pass $n: lint (deterministic) =="
  step "Phase D pass $n (lint)" \
    $PY src/lint.py --units "$UNITS" --out "$OUT" --pass "$n" $ANNEX_FLAG
  echo
}

if [ "$BOTH" = "1" ] || [ "$RUN_PASS" = "1" ]; then
  run_pass 1
fi

if [ "$BOTH" = "1" ] || [ "$RUN_PASS" = "2" ]; then
  echo "== Phase B2: adjudicate candidate pairs of invented names (batched LLM calls) =="
  step "Phase B2 (reconcile)" \
    $PY src/reconcile.py --out "$OUT" --model "$MODEL" $FORCE_FLAG
  echo
  run_pass 2
fi

if [ "$BOTH" = "1" ]; then
  echo "== pass 1 vs pass 2 =="
  $PY - "$OUT" <<'PYEOF'
import json, sys
from pathlib import Path
out = Path(sys.argv[1])
a = json.loads((out / "report.json").read_text())
b = json.loads((out / "report_2.json").read_text())
rows = [
    ("coverage",            lambda r: r["coverage"]["score"]),
    ("invented predicates", lambda r: r["namespace"].get("invented_predicates", 0)),
    ("shared across files", lambda r: r["namespace"].get("shared_across_files", 0)),
    ("fragmentation",       lambda r: r["namespace"].get("fragmentation", 0)),
    ("alias candidates",    lambda r: r["namespace"].get("n_alias_candidates", 0)),
    ("naming violations",   lambda r: r["namespace"].get("n_violations_number_in_name", 0)),
    ("link integrity",      lambda r: r["link_integrity"]["score"]),
    ("non-discriminating",  lambda r: r["discrimination"]["non_discriminating"]),
    ("discrimination rate", lambda r: r["discrimination"]["rate"]),
    ("rule heads",          lambda r: r["rule_heads"]),
]
print(f"  {'metric':<22} {'pass 1':>10} {'pass 2':>10}   delta")
for label, f in rows:
    x, y = f(a), f(b)
    d = y - x
    print(f"  {label:<22} {x:>10} {y:>10}   {d:+}")
print()
print("  Reconciliation is meant to move the three namespace lines and leave the rest")
print("  alone. A fall in link integrity or a rise in non-discriminating rules means")
print("  the merged names cost something, which is the thing worth knowing.")
PYEOF
fi

echo "done."
