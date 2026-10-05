#!/usr/bin/env bash
# Sweep the pedantry parameter so the runs can be compared by eye.
#
# ONLY PHASE B VARIES. The frozen signature is copied from an existing run
# (default out_v2) into every level's directory, so all levels write rules
# against the identical vocabulary. If each level built its own signature the
# runs would differ in two ways at once and the comparison would be worthless.
#
# Usage:
#   ./sweep_pedantry.sh                       # levels 0-5 (0 = baseline), Article 5
#   ./sweep_pedantry.sh --levels 1,3,5
#   ./sweep_pedantry.sh --articles art_5,art_10 --levels 2,4
#   SIG_FROM=out_v2 ./sweep_pedantry.sh
#
# Output: out_pedantry/p<N>/{rules/,ontology.pl,report.json}
# Then:   ./sweep_pedantry.sh --diff          # side-by-side of what changed
set -euo pipefail
cd "$(dirname "$0")"

PY=venv/bin/python
ROOT="${ROOT:-out_pedantry}"
SIG_FROM="${SIG_FROM:-out_v2}"
UNITS="${UNITS:-20260922T172249_32024R1689_3f672e3e/units}"
ARTICLES="${ARTICLES:-art_5}"
MODEL="${MODEL:-gpt-oss:120b-cloud}"
LEVELS="${LEVELS:-0,1,2,3,4,5}"
DIFF_ONLY=0
FORCE_FLAG=""
[ "${FORCE:-0}" = "1" ] && FORCE_FLAG="--force"

while [ $# -gt 0 ]; do
  case "$1" in
    --levels)   LEVELS="$2";   shift 2 ;;
    --articles) ARTICLES="$2"; shift 2 ;;
    --model)    MODEL="$2";    shift 2 ;;
    --diff)     DIFF_ONLY=1;   shift ;;
    --force)    FORCE_FLAG="--force"; shift ;;
    *) echo "unknown flag: $1" >&2; exit 2 ;;
  esac
done

IFS=',' read -r -a LEVEL_ARR <<< "$LEVELS"

summarise() {
  $PY - "$ROOT" "$LEVELS" <<'PYEOF'
import json, re, sys
from pathlib import Path

root, levels = Path(sys.argv[1]), [s.strip() for s in sys.argv[2].split(",")]
rows = []
for lv in levels:
    d = root / f"p{lv}"
    rep = d / "report.json"
    if not rep.exists():
        continue
    r = json.loads(rep.read_text())
    onto = (d / "ontology.pl").read_text(encoding="utf-8")
    rules = "".join(p.read_text(encoding="utf-8") for p in sorted((d / "rules").glob("*.pl")))
    # Predicates Phase B had to invent: declared in a rule file, not in the signature.
    sig = set(re.findall(r":-\s*pred\s+([a-z_]\w*)\s*/\s*(\d+)",
                         (d / "signature.pl").read_text(encoding="utf-8")))
    new = set(re.findall(r":-\s*pred\s+([a-z_]\w*)\s*/\s*(\d+)", rules)) - sig
    bodies = [b for b in re.findall(r":-\s*(.*?)\.\s*(?:\n|$)", rules, re.DOTALL)]
    rows.append({
        "level": lv,
        "chars": len(rules),
        "clauses": r["clauses"],
        "rule_heads": r["rule_heads"],
        "new_preds": len(new),
        "abox": r["abox_primitives"]["count"],
        "link": r["link_integrity"]["score"],
        "vac_neg": r["link_integrity"]["vacuous_negations"],
        "dangling": r["link_integrity"]["dangling"],
        "syntax": "ok" if r["syntax"].get("ok") else "FAIL",
        "refs_f1": r["references"]["f1"],
    })

if not rows:
    print("no runs found under", root)
    sys.exit(0)

hdr = ("level", "chars", "clauses", "rules", "new preds", "ABox", "link", "dangl",
       "vac\\+", "syntax", "refs F1")
w = (5, 8, 7, 5, 9, 5, 5, 5, 5, 6, 7)
print("  ".join(h.rjust(x) for h, x in zip(hdr, w)))
print("  ".join("-" * x for x in w))
for r in rows:
    cells = (r["level"], f"{r['chars']:,}", r["clauses"], r["rule_heads"], r["new_preds"],
             r["abox"], r["link"], r["dangling"], r["vac_neg"], r["syntax"], r["refs_f1"])
    print("  ".join(str(c).rjust(x) for c, x in zip(cells, w)))
print()
print("Read the actual Prolog side by side:")
for r in rows:
    print(f"  p{r['level']}: {root}/p{r['level']}/rules/")
PYEOF
}

if [ "$DIFF_ONLY" = "1" ]; then
  summarise
  exit 0
fi

if [ ! -f "$SIG_FROM/signature.pl" ]; then
  echo "no $SIG_FROM/signature.pl -- build a signature first:" >&2
  echo "    $PY src/signature.py --units $UNITS --out $SIG_FROM --model $MODEL" >&2
  exit 2
fi
echo "signature : $SIG_FROM/signature.pl (shared by every level)"
echo "scope     : $ARTICLES"
echo "levels    : $LEVELS"
echo "model     : $MODEL"
echo

for LV in "${LEVEL_ARR[@]}"; do
  OUT="$ROOT/p$LV"
  echo "======================================================================"
  echo "== pedantry $LV  ->  $OUT"
  echo "======================================================================"
  mkdir -p "$OUT"
  cp "$SIG_FROM/signature.pl" "$SIG_FROM/signature.meta.json" "$OUT/"

  $PY src/generate_rules.py --units "$UNITS" --out "$OUT" \
      --articles "$ARTICLES" --model "$MODEL" --pedantry "$LV" $FORCE_FLAG
  $PY src/merge_v2.py --units "$UNITS" --out "$OUT" --articles "$ARTICLES"
  $PY src/lint.py --units "$UNITS" --out "$OUT" --articles "$ARTICLES" >/dev/null
  echo
done

echo "======================================================================"
echo "== comparison"
echo "======================================================================"
summarise
