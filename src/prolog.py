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

import bisect
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

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

# Control constructs and builtins are not predicates of the domain, so a body goal
# naming one is not a dangling reference. `false/0` was missing and got reported as
# dangling in a rule the model wrote as `head :- ..., false.` -- which is valid, and
# deliberate: it is how you write a condition that must never hold.
CONTROL = {",", ";", "->", "\\+", "!", "not",
           "true", "false", "fail", "halt",
           "is", "forall", "findall", "bagof", "setof", "between", "succ",
           "member", "memberchk", "length", "append", "nth0", "nth1", "msort",
           "sort", "atom", "number", "var", "nonvar", "ground", "functor", "arg",
           "copy_term", "assertz", "asserta", "retract", "dif",
           "format", "write", "writeln", "nl", "print_message"}

# Declaration and bookkeeping functors. Without this set they get scraped as domain
# predicates: a run once reported `pred`, `gloss` and `source` as invented vocabulary.
DECL_SYNTAX = {"pred", "gloss", "source", "declared", "provenance", "references",
               "alias", "discontiguous", "dynamic", "module", "use_module",
               "ensure_loaded"}


def strip_comments(text: str) -> str:
    """Remove % comments, quote-aware, including TRAILING ones.

    An earlier version dropped only lines that START with %, which is wrong: the model
    writes trailing comments on goal lines --

        provider(Provider),      % Provider appears at least twice

    -- and the comment text then got scanned as three body goals (`appears`, `at`,
    `least`), reported as dangling references. SWI-Prolog loads such a file without
    complaint, so nothing but this parser was ever confused by it.
    """
    out: list[str] = []
    for line in text.splitlines():
        in_q, cut = False, None
        i = 0
        while i < len(line):
            ch = line[i]
            if in_q:
                if ch == "'":
                    if i + 1 < len(line) and line[i + 1] == "'":
                        i += 2
                        continue
                    in_q = False
            elif ch == "'":
                in_q = True
            elif ch == "%":
                cut = i
                break
            i += 1
        out.append(line if cut is None else line[:cut])
    return "\n".join(out)


def split_clauses(text: str) -> list[str]:
    """Split Prolog source into clauses on top-level '.' terminators.

    Quote- and paren-aware, so a period inside 'text like this. And this.' or inside a
    nested term does not split. Comments are stripped first, trailing ones included.
    """
    src = strip_comments(text)
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


TRAILING_DOTS = re.compile(r"\.{2,}\s*$")


def normalise(clause: str) -> str:
    """Repair the one malformed shape that is unambiguous: a doubled terminator.

    A model occasionally writes `references(a, b)..`. There is exactly one reading of
    that, so collapsing it is a transcription fix rather than a judgement, and the
    alternative is discarding a clause whose content is fine.
    """
    return TRAILING_DOTS.sub(".", clause)


def well_formed(clause: str) -> str | None:
    """None if the clause is well formed, else a short reason.

    Only checks what can be decided without a Prolog reader: balanced quotes, and
    balanced parentheses and brackets outside quotes. That covers the malformed output
    actually seen -- an extra closing paren in a deeply nested term -- and it is the
    check that lets ONE bad clause be dropped instead of taking the whole program down
    with it.
    """
    depth, in_q = 0, False
    i = 0
    while i < len(clause):
        ch = clause[i]
        if in_q:
            if ch == "'":
                if i + 1 < len(clause) and clause[i + 1] == "'":
                    i += 2
                    continue
                in_q = False
        elif ch == "'":
            in_q = True
        elif ch in "([":
            depth += 1
        elif ch in ")]":
            depth -= 1
            if depth < 0:
                return "unbalanced: an extra closing parenthesis or bracket"
        i += 1
    if in_q:
        return "unbalanced: unterminated quoted atom"
    if depth > 0:
        return f"unbalanced: {depth} unclosed parenthesis or bracket"
    if not clause.rstrip().endswith("."):
        return "no terminating period"
    return None


# ------------------------------------------------------------ the authoritative check

# A tiny SWI-Prolog program that reads a file term by term and prints, for each term,
# either `ok <char offset>` or `bad <char offset> <message>`. The offsets are what
# Python needs: it knows where every clause starts in the file it wrote, so an offset
# maps to exactly one clause.
#
# After a syntax error SWI's reader resynchronises at the next full stop. That can
# swallow the start of the FOLLOWING clause when the broken one has, say, an open
# quote. So a clause counts as accepted only if a successful read STARTED inside it;
# a clause nobody read and nobody blamed is reported as swallowed and dropped too.
_READER_CHECK = r"""
:- initialization(main, main).
main :-
    current_prolog_flag(argv, [File]),
    open(File, read, S, [encoding(utf8)]),
    loop(S, -1, 0),
    close(S).
loop(S, LastBad, Repeats) :-
    catch(read_term(S, T, [term_position(P), syntax_errors(error)]), E, true),
    (   var(E)
    ->  (   T == end_of_file
        ->  true
        ;   stream_position_data(char_count, P, C),
            format("ok ~d~n", [C]),
            loop(S, LastBad, Repeats)
        )
    ;   (   E = error(syntax_error(Msg), file(_, _, _, C))     % file streams
        ->  true
        ;   E = error(syntax_error(Msg), stream(_, _, _, C))   % other streams
        ->  true
        ;   E = error(syntax_error(Msg), _)
        ->  C = -1
        ;   Msg = E, C = -1
        ),
        format("bad ~d ~q~n", [C, Msg]),
        (   C == LastBad
        ->  R is Repeats + 1
        ;   R = 0
        ),
        (   R > 2 -> true ; loop(S, C, R) )   % guard against a reader that cannot advance
    ).
"""

_SWIPL = shutil.which("swipl")
_warned_no_swipl = False


def reader_check(clauses: list[str]) -> list[str | None]:
    """Run each clause through SWI-Prolog's own reader. One entry per clause: None if
    it is accepted, else a short reason.

    `well_formed` is a cheap pre-filter for the one malformation gpt-oss produced
    (unbalanced parentheses). Other models produce other ones -- DeepSeek wrote an
    unquoted `celex:32024R1689`, which balances perfectly and is a syntax error -- and
    guessing them one at a time is a losing game. The reader that will load the file
    is the only authority on what it will load, so it is asked, once per rule file.

    If swipl is not installed every clause passes, with one warning on stderr; the
    lint step then reports the same absence under `syntax.ran = false`.
    """
    global _warned_no_swipl
    if not clauses:
        return []
    if _SWIPL is None:
        if not _warned_no_swipl:
            print("prolog.reader_check: swipl not found; clauses are not reader-checked",
                  file=sys.stderr)
            _warned_no_swipl = True
        return [None] * len(clauses)

    starts: list[int] = []
    buf: list[str] = []
    pos = 0
    for c in clauses:
        starts.append(pos)
        chunk = c.rstrip() + "\n\n"
        buf.append(chunk)
        pos += len(chunk)

    with tempfile.TemporaryDirectory() as td:
        src = Path(td) / "clauses.txt"   # not .pl: swipl would consult it as a script
        chk = Path(td) / "check.pl"
        src.write_text("".join(buf), encoding="utf-8")
        chk.write_text(_READER_CHECK, encoding="utf-8")
        proc = subprocess.run([_SWIPL, "-q", str(chk), "--", str(src)],
                              capture_output=True, text=True, timeout=120)

    # The reader is sequential: a bad term begins at the first clause not yet read,
    # whatever offset the error itself is reported at. (An unterminated quote is
    # detected at end of file, far from the clause that opened it.) So blame goes to
    # the cursor. A later error whose offset still falls inside an already-blamed
    # clause is the reader resynchronising within that same clause -- the splitter
    # can fuse two source lines into one clause when it mis-tracks a quote -- and is
    # not a second clause's fault. Clauses the reader never reached are dropped as
    # swallowed by the loop below.
    reasons: list[str | None] = [None] * len(clauses)
    read_ok: set[int] = set()
    cursor = 0
    n = len(clauses)
    for line in proc.stdout.splitlines():
        parts = line.split(" ", 2)
        if len(parts) < 2:
            continue
        kind, off = parts[0], int(parts[1])
        idx = bisect.bisect_right(starts, off) - 1 if off >= 0 else cursor
        if idx < cursor:
            continue                       # inside a clause already settled
        if kind == "ok":
            if idx < n:
                read_ok.add(idx)
                cursor = idx + 1
        elif kind == "bad" and cursor < n:
            msg = parts[2] if len(parts) > 2 else "syntax error"
            reasons[cursor] = f"swipl: {msg}"
            cursor += 1
    for i in range(n):
        if reasons[i] is None and i not in read_ok:
            reasons[i] = "swipl: not read -- swallowed by a preceding syntax error"
    return reasons
