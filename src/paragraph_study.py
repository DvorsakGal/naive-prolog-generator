"""Paragraph-level stability study: the calls. Plan in paragraph_study.md.

One text, one model, one seed -> one Prolog module. Five texts, five models, three
seeds. Everything else is bookkeeping, and the bookkeeping is the point:

  * The text selection is a seeded draw with recorded filters, so the same five texts
    come out every time and a sixth can be added without disturbing them.
  * The exact text sent is written to disk beside the outputs. The models never see
    the <ref> markup; it is rendered to readable citations first, and the rendering is
    part of what is recorded.
  * "Three runs with identical settings" is seeds 1, 2, 3 at temperature 0. The seed is
    in the cache key, so the three calls are three real calls, and re-running this
    script replays them from disk.
  * Every call goes through llm.Client, so the run log, the truncation guard and the
    OpenRouter / Ollama handling are the pipeline's own.

Outputs:
  out_paragraphs/texts/<id>.txt
  out_paragraphs/<id>/<model>/seed_<n>.pl
  out_paragraphs/<id>/<model>/seed_<n>.meta.json
  out_paragraphs/run.jsonl
"""
from __future__ import annotations

import argparse
import asyncio
import json
import random
import re
import sys
from dataclasses import dataclass
from pathlib import Path

import httpx

sys.path.insert(0, str(Path(__file__).parent))
from llm import Client, LLMConfig, append_log, cache_key  # noqa: E402
from paragraph_prompt import build_paragraph_messages  # noqa: E402

UNITS = Path("20260922T172249_32024R1689_3f672e3e/units")
ACT_XML = UNITS / "celex:32024R1689%2Foj.xml"
OUT = Path("out_paragraphs")

# label, provider, model, reasoning. The five consensus-scoring peers; gpt-oss optional.
MODELS = {
    "deepseek": ("openrouter", "deepseek/deepseek-v4-pro", "none"),
    "kimi":     ("openrouter", "moonshotai/kimi-k2.6", "none"),
    "qwen":     ("openrouter", "qwen/qwen3.7-max", "none"),
    "gemini":   ("openrouter", "google/gemini-3.8-flash", "minimal"),   # cannot be disabled
    "mistral":  ("openrouter", "mistralai/mistral-large-4-0", "none"),
    "gpt-oss":  ("ollama", "gpt-oss:120b-cloud", "none"),              # Ollama default reasoning on
}
DEFAULT_MODELS = ["deepseek", "kimi", "qwen", "gemini", "mistral"]
DEFAULT_SEEDS = [1, 2, 3]

# The draw. Changing any of these changes the texts; they are recorded in texts/selection.json.
DRAW_SEED = 42
N_RECITALS, N_PARAGRAPHS = 2, 2
RECITAL_CHARS = (600, 1800)
PARAGRAPH_CHARS = (500, 1800)
# One paragraph chosen by hand, not drawn: a provision with conditional obligations and
# exceptions, so at least one text has rules to extract. Recitals state purposes, not
# rules, and the first run showed the models reifying nouns into facts for them.
PINNED_PARAGRAPHS = ["art_50/par_2"]


# -------------------------------------------------------------------- texts

REF_RE = re.compile(r'<ref id="([^"]+)"\s*/>')
ROMAN = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII", "XIII"]


def act_name(celex: str) -> str:
    """'32022R2065' -> 'Regulation (EU) 2022/2065'. Unknown shapes keep the CELEX id."""
    m = re.fullmatch(r"3(\d{4})([RLD])(\d{4})", celex)
    if not m:
        return f"[{celex}]"
    kind = {"R": "Regulation", "L": "Directive", "D": "Decision"}[m.group(2)]
    return f"{kind} (EU) {m.group(1)}/{int(m.group(3))}"


def render_ref(ref_id: str) -> tuple[str, str]:
    """'celex:32024R1689/oj#art_6/par_2/unp_1/pnt_a' -> ('Article 6(2)', 'point (a)').

    Returns (base, leaf): the leaf is the last point-like level, kept separate so a run
    of refs with one base can be compacted ('Annex VIII, points (1) to (10)')."""
    doc, _, frag = ref_id.partition("#")
    celex = doc.removeprefix("celex:").removesuffix("/oj")
    own = celex == "32024R1689"
    out: list[str] = []
    leaf = ""
    for part in (frag.split("/") if frag else []):
        kind, _, num = part.partition("_")
        if kind == "art":
            out.append(f"Article {num}")
        elif kind == "par":
            if out:
                out[-1] += f"({num})"
            else:
                out.append(f"paragraph {num}")
        elif kind == "pnt":
            leaf = f"point ({num})"
        elif kind == "anx":
            n = int(num) if num.isdigit() else 0
            out.append(f"Annex {ROMAN[n] if 0 < n < len(ROMAN) else num}")
        elif kind in ("unp", "sec", "cpt", "rct"):
            continue
        else:
            out.append(part)
    base = ", ".join(out) if out else ("this Regulation" if own else act_name(celex))
    if not own and out:
        base = f"{base} of {act_name(celex)}"
    return base, leaf


def _compact(refs: list[tuple[str, str]]) -> str:
    """Render a run of consecutive refs. Same base and numeric leaves -> one phrase."""
    groups: list[tuple[str, list[str]]] = []
    for base, leaf in refs:
        if groups and groups[-1][0] == base and leaf:
            groups[-1][1].append(leaf)
        else:
            groups.append((base, [leaf] if leaf else []))
    phrases = []
    for base, leaves in groups:
        if not leaves:
            phrases.append(base)
            continue
        nums = [re.search(r"\((\w+)\)", l).group(1) for l in leaves]
        if len(nums) == 1:
            phrases.append(f"{base}, point ({nums[0]})")
        elif all(n.isdigit() for n in nums) and [int(n) for n in nums] == list(range(int(nums[0]), int(nums[0]) + len(nums))):
            phrases.append(f"{base}, points ({nums[0]}) to ({nums[-1]})")
        else:
            phrases.append(f"{base}, points " + ", ".join(f"({n})" for n in nums[:-1]) + f" and ({nums[-1]})")
    return ", ".join(phrases)


REF_RUN_RE = re.compile(r'<ref id="[^"]+"\s*/>(?:\s*;?\s*<ref id="[^"]+"\s*/>)*')


def render_text(raw: str) -> str:
    """Strip the unit wrapper and leading number, render refs, compacting runs of
    consecutive refs (the extractor writes 'points 1 to 10' as ten refs joined by ';')."""
    s = re.sub(r"^<unit[^>]*>", "", raw.strip())
    s = re.sub(r"</unit>\s*$", "", s)
    s = REF_RUN_RE.sub(lambda m: _compact([render_ref(r) for r in REF_RE.findall(m.group(0))]), s)
    s = re.sub(r"<[^>]+>", "", s)
    s = re.sub(r"^\(\d+\)\s*", "", s.strip())                     # recital number
    s = re.sub(r"^\d+\.\s*", "", s)                               # paragraph number
    return re.sub(r"[ \t]+", " ", s).strip()


@dataclass
class Text:
    id: str
    kind: str          # recital | paragraph
    source: str        # where it came from
    text: str


def recitals() -> dict[int, str]:
    act = ACT_XML.read_text(encoding="utf-8")
    body = act[act.index("Whereas:"):act.index("HAVE ADOPTED")]
    return {int(m.group(1)): m.group(0) for m in re.finditer(r"^\((\d+)\)\s+.*$", body, re.M)}


def paragraphs() -> dict[str, str]:
    out = {}
    for f in UNITS.glob("celex:32024R1689%2Foj#art_*%2Fpar_*.xml"):
        frag = f.name.split("#")[1].replace("%2F", "/").removesuffix(".xml")
        if frag.count("/") == 1:                                   # top-level paragraph only
            out[frag] = f.read_text(encoding="utf-8")
    return out


def draw_texts() -> list[Text]:
    rng = random.Random(DRAW_SEED)
    recs = recitals()
    pars = paragraphs()
    rec_pool = sorted(n for n, t in recs.items()
                      if RECITAL_CHARS[0] <= len(render_text(t)) <= RECITAL_CHARS[1])
    par_pool = sorted(f for f, t in pars.items()
                      if PARAGRAPH_CHARS[0] <= len(render_text(t)) <= PARAGRAPH_CHARS[1])
    chosen = [Text(f"rct_{n}", "recital", f"recital ({n})", render_text(recs[n]))
              for n in rng.sample(rec_pool, N_RECITALS)]
    # Draw exactly N_PARAGRAPHS as before, so the drawn paragraphs do not change when a
    # pinned one is added; then append the pinned ones.
    drawn = [f for f in rng.sample(par_pool, N_PARAGRAPHS) if f not in PINNED_PARAGRAPHS]
    chosen += [Text(f.replace("/", "_"), "paragraph", f"celex:32024R1689/oj#{f}", render_text(pars[f]))
               for f in drawn + PINNED_PARAGRAPHS]
    return chosen


# -------------------------------------------------------------------- calls

async def run(args: argparse.Namespace) -> int:
    texts = draw_texts()
    if args.only:
        wanted = set(args.only.split(","))
        texts = [t for t in texts if t.id in wanted]
    (OUT / "texts").mkdir(parents=True, exist_ok=True)
    for t in texts:
        (OUT / "texts" / f"{t.id}.txt").write_text(t.text, encoding="utf-8")
    (OUT / "texts" / "selection.json").write_text(json.dumps({
        "draw_seed": DRAW_SEED, "recital_chars": RECITAL_CHARS, "paragraph_chars": PARAGRAPH_CHARS,
        "pinned": PINNED_PARAGRAPHS,
        "texts": [{"id": t.id, "kind": t.kind, "source": t.source, "chars": len(t.text)} for t in texts],
    }, indent=1), encoding="utf-8")

    labels = args.models or DEFAULT_MODELS
    log_path = OUT / "run.jsonl"
    sem = asyncio.Semaphore(args.concurrency)
    progress = {"done": 0, "cached": 0, "failed": 0}
    jobs = []

    print(f"texts {len(texts)} x models {len(labels)} x seeds {len(args.seeds)} = "
          f"{len(texts) * len(labels) * len(args.seeds)} calls  (concurrency {args.concurrency})\n")
    for t in texts:
        print(f"  {t.id:<14} {t.kind:<9} {len(t.text):>5} chars")
    print()

    clients: dict[tuple[str, int], Client] = {}
    for label in labels:
        provider, model, reasoning = MODELS[label]
        for seed in args.seeds:
            cfg = LLMConfig(provider=provider, model=model, reasoning=reasoning, seed=seed,
                            temperature=0.0, concurrency=args.concurrency,
                            num_predict=args.num_predict)
            clients[(label, seed)] = Client(cfg, OUT / "cache")

    async def one(http: httpx.AsyncClient, t: Text, label: str, seed: int) -> None:
        client = clients[(label, seed)]
        messages = build_paragraph_messages(t.text)
        dest_dir = OUT / t.id / label
        dest_dir.mkdir(parents=True, exist_ok=True)
        dest = dest_dir / f"seed_{seed}.pl"
        key = cache_key(client.cfg, messages)
        meta_path = dest_dir / f"seed_{seed}.meta.json"
        if dest.exists() and meta_path.exists() and not args.force:
            if json.loads(meta_path.read_text()).get("key") == key:
                progress["cached"] += 1
                return
        async with sem:
            text, rec = await client.call(http, messages, label=f"paragraph:{t.id}:{label}:s{seed}")
        rec.meta = {"text": t.id, "model": label, "seed": seed, "chars_in": len(t.text)}
        append_log(log_path, rec)
        if not rec.ok:
            progress["failed"] += 1
            print(f"  FAILED {t.id} {label} seed {seed}: {rec.error}", file=sys.stderr)
            return
        dest.write_text(text + "\n", encoding="utf-8")
        meta_path.write_text(json.dumps({
            "key": key, "model": client.cfg.model, "provider": client.cfg.provider,
            "reasoning": client.cfg.reasoning, "seed": seed, "cached": rec.cached,
            "prompt_tokens": rec.prompt_tokens, "completion_tokens": rec.completion_tokens,
            "wall_s": rec.wall_s, "truncated": rec.truncated, "chars_out": len(text),
        }, indent=1), encoding="utf-8")
        progress["done"] += 1
        print(f"  {t.id:<14} {label:<9} seed {seed}  {'cache' if rec.cached else 'call '}  "
              f"{rec.completion_tokens or 0:>5} out-tokens  {len(text):>6,} chars")

    async with httpx.AsyncClient() as http:
        for t in texts:
            for label in labels:
                for seed in args.seeds:
                    jobs.append(one(http, t, label, seed))
        await asyncio.gather(*jobs)

    print(f"\ndone={progress['done']} already-present={progress['cached']} failed={progress['failed']}")
    print(f"outputs in {OUT}/  -- next: venv/bin/python src/paragraph_metrics.py")
    return 1 if progress["failed"] else 0


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="Paragraph study: 5 texts x models x seeds.")
    p.add_argument("--models", nargs="*", choices=sorted(MODELS), default=None,
                   help=f"default: {' '.join(DEFAULT_MODELS)}; add gpt-oss for the sixth")
    p.add_argument("--seeds", nargs="*", type=int, default=DEFAULT_SEEDS)
    p.add_argument("--only", default="", help="comma-separated text ids, e.g. rct_34")
    p.add_argument("--concurrency", type=int, default=4)
    p.add_argument("--num-predict", type=int, default=LLMConfig.num_predict)
    p.add_argument("--force", action="store_true", help="re-call even if an output exists")
    p.add_argument("--list", action="store_true", help="print the drawn texts and exit")
    return p


if __name__ == "__main__":
    a = build_parser().parse_args()
    if a.list:
        for t in draw_texts():
            print(f"== {t.id}  ({t.kind}, {t.source}, {len(t.text)} chars) ==\n{t.text}\n")
        sys.exit(0)
    sys.exit(asyncio.run(run(a)))
