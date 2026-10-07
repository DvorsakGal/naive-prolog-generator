"""Prolog source handling shared by assembly and linting. No LLM, no act knowledge.

Everything here is quote- and paren-aware, which is the whole reason it is a module
rather than a handful of regexes at the call sites. The model emits atoms like
'shall apply from 2 August 2026. However: (a) ...' -- a period inside quotes, an
unbalanced-looking paren inside quotes -- and a naive split on '.' silently corrupts
the clause that contains them.

`:- pred f/1, gloss(G), source(S).` is the convention Phase A and Phase B write
vocabulary declarations in. It is readable but it is not valid SWI-Prolog: as a
directive it would try to call pred/1, gloss/1 and source/1 and throw existence
errors. `rewrite_declarations()` turns each into a `declared/3` fact, so the vocabulary
survives into the program as queryable data. The linter depends on that: it is how a
predicate that is legitimately undefined (one the caller supplies facts for) is told
apart from a goal that is simply broken.
"""
from __future__ import annotations

import re

HEAD_RE = re.compile(r"^([a-z][A-Za-z0-9_]*)\s*\(")

PRED_DIRECTIVE_RE = re.compile(
    r":-\s*pred\s+([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*,\s*"
    r"gloss\(\s*('(?:[^']|'')*')\s*\)\s*,\s*"
    r"source\(\s*('(?:[^']|'')*')\s*\)\s*\.",
    re.DOTALL,
)

PRED_DECL_RE = re.compile(
    r":-\s*pred\s+([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*,\s*"
    r"gloss\(\s*'((?:[^']|'')*)'")

DECLARED_RE = re.compile(
    r"declared\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*,\s*'((?:[^']|'')*)'")

# Control constructs are not predicates of the domain.
CONTROL = {",", ";", "->", "\\+", "!", "true", "fail", "not"}

# Declaration and bookkeeping functors. Without this set they get scraped as domain
# predicates: a run once reported `pred`, `gloss` and `source` as invented vocabulary.
DECL_SYNTAX = {"pred", "gloss", "source", "declared", "provenance", "references",
               "alias", "discontiguous", "dynamic", "module", "use_module",
               "ensure_loaded"}


def split_clauses(text: str) -> list[str]:
    """Split Prolog source into clauses on top-level '.' terminators.

    Quote- and paren-aware, so a period inside 'text like this. And this.' or inside a
    nested term does not split. Lines starting with % are dropped first.
    """
    src = "\n".join(l for l in text.splitlines() if not l.lstrip().startswith("%"))
    clauses: list[str] = []
    buf: list[str] = []
    in_quote, depth, i = False, 0, 0
    while i < len(src):
        ch = src[i]
        if in_quote:
            if ch == "'":
                if i + 1 < len(src) and src[i + 1] == "'":
                    buf.append("''")
                    i += 2
                    continue
                in_quote = False
            buf.append(ch)
        elif ch == "'":
            in_quote = True
            buf.append(ch)
        elif ch in "([":
            depth += 1
            buf.append(ch)
        elif ch in ")]":
            depth -= 1
            buf.append(ch)
        elif ch == "." and depth == 0 and (i + 1 >= len(src) or src[i + 1] in " \t\r\n"):
            clause = "".join(buf).strip()
            if clause:
                clauses.append(clause + ".")
            buf = []
        else:
            buf.append(ch)
        i += 1
    tail = "".join(buf).strip()
    if tail:
        clauses.append(tail + ".")
    return clauses


def split_head_body(clause: str) -> tuple[str, str | None]:
    """(head, body) split on the top-level ':-'. body is None for a fact."""
    depth, in_q, i = 0, False, 0
    while i < len(clause) - 1:
        ch = clause[i]
        if in_q:
            if ch == "'":
                if clause[i + 1] == "'":
                    i += 2
                    continue
                in_q = False
        elif ch == "'":
            in_q = True
        elif ch in "([":
            depth += 1
        elif ch in ")]":
            depth -= 1
        elif ch == ":" and clause[i + 1] == "-" and depth == 0:
            return clause[:i].strip(), clause[i + 2:].rstrip(". ").strip()
        i += 1
    return clause.rstrip(". ").strip(), None


def indicator(clause: str) -> tuple[str, int] | None:
    """(name, arity) of a compound term's functor, or None."""
    m = HEAD_RE.match(clause)
    if not m:
        return None
    name, args, depth, in_quote = m.group(1), 1, 0, False
    i = m.end()
    while i < len(clause):
        ch = clause[i]
        if in_quote:
            if ch == "'":
                if i + 1 < len(clause) and clause[i + 1] == "'":
                    i += 2
                    continue
                in_quote = False
        elif ch == "'":
            in_quote = True
        elif ch in "([":
            depth += 1
        elif ch == ")" and depth == 0:
            return name, args
        elif ch in ")]":
            depth -= 1
        elif ch == "," and depth == 0:
            args += 1
        i += 1
    return None


def head_indicator(clause: str) -> tuple[str, int] | None:
    """indicator(), extended to a zero-arity head.

    A rule head can be a bare atom (`publish_annual_report :- ...`). Requiring a '('
    silently dropped those clauses at assembly.
    """
    ind = indicator(clause)
    if ind is not None:
        return ind
    head, _ = split_head_body(clause)
    m = re.match(r"^([a-z][A-Za-z0-9_]*)\s*(?:\.)?$", head)
    return (m.group(1), 0) if m else None


def body_goals(body: str) -> list[tuple[str, int, bool]]:
    """(name, arity, negated) for each goal in a rule body, quote-aware."""
    goals: list[tuple[str, int, bool]] = []
    depth, in_q, i, negated = 0, False, 0, False
    while i < len(body):
        ch = body[i]
        if in_q:
            if ch == "'":
                if i + 1 < len(body) and body[i + 1] == "'":
                    i += 2
                    continue
                in_q = False
            i += 1
            continue
        if ch == "'":
            in_q = True
            i += 1
            continue
        if body.startswith("\\+", i):
            negated = True
            i += 2
            continue
        if ch in "([":
            depth += 1
            i += 1
            continue
        if ch in ")]":
            depth -= 1
            i += 1
            continue
        if depth == 0 and ch.islower() and (
                i == 0 or not (body[i - 1].isalnum() or body[i - 1] == "_")):
            m = re.match(r"([a-z][A-Za-z0-9_]*)\s*(\()?", body[i:])
            if m:
                name = m.group(1)
                if name in CONTROL:
                    i += len(name)
                    continue
                if not m.group(2):
                    goals.append((name, 0, negated))
                    negated = False
                    i += len(name)
                    continue
                arity, d2, q2, j = 1, 1, False, i + m.end()
                while j < len(body) and d2 > 0:
                    c2 = body[j]
                    if q2:
                        if c2 == "'":
                            if j + 1 < len(body) and body[j + 1] == "'":
                                j += 2
                                continue
                            q2 = False
                    elif c2 == "'":
                        q2 = True
                    elif c2 in "([":
                        d2 += 1
                    elif c2 in ")]":
                        d2 -= 1
                    elif c2 == "," and d2 == 1:
                        arity += 1
                    j += 1
                goals.append((name, arity, negated))
                negated = False
                i = j
                continue
        if ch in ",;" and depth == 0:
            negated = False
        i += 1
    return goals


def rewrite_declarations(text: str) -> tuple[str, int]:
    """`:- pred f/1, gloss(G), source(S).` -> `declared(f/1, G, S).`"""
    n = 0

    def sub(m: re.Match) -> str:
        nonlocal n
        n += 1
        return f"declared({m.group(1)}/{m.group(2)}, {m.group(3)}, {m.group(4)})."

    return PRED_DIRECTIVE_RE.sub(sub, text), n


def simple_conjuncts(body: str) -> list[tuple[str, str]] | None:
    """[(goal name, argument text)] for a body that is a plain conjunction.

    Returns None when the body contains a top-level disjunction, if-then or negation.
    Those bodies carry real structure, and the discrimination check that uses this
    function deliberately declines to judge them -- a check for weak rules must
    under-report rather than over-report, or it cannot be trusted.
    """
    if "\\+" in body:
        return None
    out: list[tuple[str, str]] = []
    depth, in_q, i, start = 0, False, 0, 0
    parts: list[str] = []
    while i < len(body):
        ch = body[i]
        if in_q:
            if ch == "'":
                if i + 1 < len(body) and body[i + 1] == "'":
                    i += 2
                    continue
                in_q = False
        elif ch == "'":
            in_q = True
        elif ch in "([":
            depth += 1
        elif ch in ")]":
            depth -= 1
        elif depth == 0 and (ch == ";" or body.startswith("->", i)):
            return None
        elif ch == "," and depth == 0:
            parts.append(body[start:i])
            start = i + 1
        i += 1
    parts.append(body[start:])

    for part in parts:
        p = part.strip().rstrip(".")
        if not p:
            continue
        m = re.match(r"^([a-z][A-Za-z0-9_]*)\s*(\((.*)\))?$", p, re.DOTALL)
        if not m:
            return None
        out.append((m.group(1), m.group(3) or ""))
    return out


_QUOTED = re.compile(r"'(?:[^']|'')*'")
_VAR = re.compile(r"(?<![A-Za-z0-9_])([A-Z][A-Za-z0-9_]*|_[A-Za-z0-9_]+)")


def variables(text: str) -> set[str]:
    """Variable names in a term. Quoted atoms are removed first, so an atom like
    'Commission decisions' does not contribute a variable called Commission."""
    return set(_VAR.findall(_QUOTED.sub("''", text)))
