"""Prolog clauses -> first-order logic -> Z3. The logic half of consensus scoring.

WHAT IS BEING COMPARED
----------------------
Consensus scoring (consensus_scoring.md) asks whether two translations of the same
text are logically equivalent. Our translations are Prolog programs, and the natural
"sentence" in them is one predicate's definition inside one provision: the clauses
for `prohibited_social_scoring/1` that Article 5 produced, say.

A set of Prolog clauses for one predicate reads, under the completion semantics
[Clark 1978], as one biconditional:

    p(X1..Xn)  <->  OR over clauses:  EXISTS Vars. (X1 = t1 AND .. AND Xn = tn AND Body)

where t1..tn are the clause's head arguments and Vars are the clause's own variables.
Negation-as-failure `\\+ G` becomes classical negation of G (with G's private variables
existentially quantified inside it). That is the standard reading, it is what makes two
definitions comparable as formulas, and it is the one place this file commits to an
interpretation rather than a translation.

Two definitions D1 and D2 of the same predicate are EQUIVALENT when

    FORALL X. D1(X) <-> D2(X)

is valid. Z3 is asked for a model of its negation; `unsat` means equivalent. Every
body predicate, functor and atom is uninterpreted -- `provider(P)` is an opaque
relation, `years(10)` an opaque term -- so equivalence means "the same logical shape
over the same named parts", never "the same legal meaning". Alignment of names across
programs happens before this file is called (align.py); here a rename map is simply
applied to the second definition's predicate symbols.

WHAT IS AND IS NOT ENCODED
--------------------------
Encoded: conjunction, disjunction, if-then-else, negation-as-failure, unification and
its negation, term equality, comparison operators (as uninterpreted relations), lists
(as `'[|]'/2` and `[]`), compound terms, atoms, numbers, strings.

Not encoded, reported as UNSUPPORTED rather than guessed: `is/2`, `findall/3`,
`forall/2`, `aggregate_all/3`, the cut. They are rare in this corpus (a few dozen
goals in 33,000 rules) and have no first-order reading that would be honest.

VERDICTS
--------
    equiv        Z3 proved the two definitions equivalent
    implies      not equivalent, but Da -> Db is valid: a is STRICTER than b (every case
                 a covers, b covers too). Reported as texture; counts as non-equivalent.
    implied_by   the other direction: b is stricter than a.
    different    neither direction holds
    unknown      Z3 gave up (quantifiers + timeout). Reported, never counted as equiv.
    unsupported  one side uses a construct this file does not encode

Only `equiv` is agreement under the scoring rule. The two implication verdicts exist
because on this corpus most non-equivalent pairs are one model adding conditions the
other left out, and "stricter" is a more useful thing to know than "different".
"""
from __future__ import annotations

import re
from dataclasses import dataclass, field
from typing import Callable

import z3

# ============================================================================ terms


@dataclass(frozen=True)
class Var:
    name: str


@dataclass(frozen=True)
class Atom:
    name: str


@dataclass(frozen=True)
class Num:
    value: str          # kept as text: 10 and 10.0 are different constants, fine


@dataclass(frozen=True)
class Compound:
    functor: str
    args: tuple          # of terms


Term = Var | Atom | Num | Compound


class ParseError(Exception):
    pass


# ======================================================================== tokenizer

_TOKEN_RE = re.compile(r"""
    (?P<ws>\s+)
  | (?P<qatom>'(?:[^'\\]|''|\\.)*')
  | (?P<string>"(?:[^"\\]|\\.)*")
  | (?P<var>[A-Z_][A-Za-z0-9_]*)
  | (?P<num>\d+(?:\.\d+)?(?:[eE][+-]?\d+)?)
  | (?P<atom>[a-z][A-Za-z0-9_]*)
  | (?P<sym>:-|-->|\\==|\\=|=\\=|=:=|=<|>=|==|->|\\\+|=|<|>|,|;|\||\(|\)|\[|\]|\{|\}|\+|-|\*|/|\^|:|!|\.)
""", re.VERBOSE)


@dataclass
class Tok:
    kind: str
    text: str
    # True when the token is immediately followed by '(' with no whitespace, which is
    # what makes `foo(` a compound and `foo (` not. Models mostly get this right.
    func_paren: bool = False


def tokenize(text: str) -> list[Tok]:
    toks: list[Tok] = []
    i = 0
    while i < len(text):
        m = _TOKEN_RE.match(text, i)
        if not m:
            raise ParseError(f"cannot tokenize at {text[i:i+20]!r}")
        i = m.end()
        kind = m.lastgroup
        if kind == "ws":
            continue
        toks.append(Tok(kind, m.group(kind)))
    for k in range(len(toks) - 1):
        if toks[k].kind in ("atom", "qatom") and toks[k + 1].text == "(":
            toks[k].func_paren = True
    return toks


def _unquote(q: str) -> str:
    body = q[1:-1]
    body = body.replace("''", "'")
    body = re.sub(r"\\(.)", r"\1", body)
    return body


# ============================================================================ parser

# Standard operator table, the subset the corpus uses. (priority, type)
_INFIX = {
    ":-": (1200, "xfx"), "-->": (1200, "xfx"),
    ";": (1100, "xfy"), "|": (1100, "xfy"),
    "->": (1050, "xfy"),
    ",": (1000, "xfy"),
    "=": (700, "xfx"), "\\=": (700, "xfx"), "==": (700, "xfx"), "\\==": (700, "xfx"),
    "<": (700, "xfx"), ">": (700, "xfx"), "=<": (700, "xfx"), ">=": (700, "xfx"),
    "=:=": (700, "xfx"), "=\\=": (700, "xfx"), "is": (700, "xfx"),
    "+": (500, "yfx"), "-": (500, "yfx"),
    "*": (400, "yfx"), "/": (400, "yfx"),
    "^": (200, "xfy"), ":": (200, "xfy"),
}
_PREFIX = {"\\+": (900, "fy"), "-": (200, "fy")}


class _Parser:
    def __init__(self, toks: list[Tok]):
        self.toks = toks
        self.i = 0

    def peek(self) -> Tok | None:
        return self.toks[self.i] if self.i < len(self.toks) else None

    def next(self) -> Tok:
        t = self.toks[self.i]
        self.i += 1
        return t

    def expect(self, text: str) -> None:
        t = self.peek()
        if t is None or t.text != text:
            raise ParseError(f"expected {text!r}, got {t.text if t else 'EOF'!r}")
        self.i += 1

    def _is_infix_here(self, t: Tok) -> bool:
        if t.kind == "sym" and t.text in _INFIX:
            return True
        return t.kind == "atom" and t.text == "is"

    def parse(self, max_prec: int = 1200, arg: bool = False) -> Term:
        """`arg=True` parses one argument of a compound or list: priority 1200 like
        SWI-Prolog allows (so `f(a ; b)` is read), but a bare comma ends it."""
        left, left_prec = self._primary(max_prec)
        while True:
            t = self.peek()
            if t is None or not self._is_infix_here(t):
                break
            if arg and t.text in (",", "|"):
                break
            prec, typ = _INFIX[t.text]
            if prec > max_prec:
                break
            left_max = prec - 1 if typ in ("xfx", "xfy") else prec
            if left_prec > left_max:
                break
            self.next()
            right_max = prec if typ == "xfy" else prec - 1
            right = self.parse(right_max, arg)
            left = Compound(t.text, (left, right))
            left_prec = prec
        return left

    def _primary(self, max_prec: int) -> tuple[Term, int]:
        t = self.next()
        if t.kind == "var":
            return Var(t.text), 0
        if t.kind == "num":
            return Num(t.text), 0
        if t.kind == "string":
            return Atom(t.text[1:-1]), 0
        if t.kind in ("atom", "qatom"):
            name = _unquote(t.text) if t.kind == "qatom" else t.text
            if t.func_paren:
                self.next()                         # '('
                args = [self.parse(1200, arg=True)]
                while self.peek() and self.peek().text == ",":
                    self.next()
                    args.append(self.parse(1200, arg=True))
                self.expect(")")
                return Compound(name, tuple(args)), 0
            if t.kind == "atom" and name in _PREFIX and self.peek() is not None \
                    and self.peek().text not in (",", ")", ";", "|", "]", "."):
                prec, _ = _PREFIX[name]
                arg = self.parse(prec)
                return Compound(name, (arg,)), prec
            return Atom(name), 0
        if t.kind == "sym":
            if t.text == "(":
                inner = self.parse(1200)
                self.expect(")")
                return inner, 0
            if t.text == "[":
                return self._list(), 0
            if t.text == "{":
                inner = self.parse(1200)
                self.expect("}")
                return Compound("{}", (inner,)), 0
            if t.text in _PREFIX:
                prec, _ = _PREFIX[t.text]
                nxt = self.peek()
                if t.text == "-" and nxt is not None and nxt.kind == "num":
                    self.next()
                    return Num("-" + nxt.text), 0
                arg = self.parse(prec)
                return Compound(t.text, (arg,)), prec
            if t.text == "!":
                return Atom("!"), 0
        raise ParseError(f"unexpected token {t.text!r}")

    def _list(self) -> Term:
        if self.peek() and self.peek().text == "]":
            self.next()
            return Atom("[]")
        items = [self.parse(1200, arg=True)]
        while self.peek() and self.peek().text == ",":
            self.next()
            items.append(self.parse(1200, arg=True))
        tail: Term = Atom("[]")
        if self.peek() and self.peek().text == "|":
            self.next()
            tail = self.parse(1200, arg=True)
        self.expect("]")
        for it in reversed(items):
            tail = Compound("[|]", (it, tail))
        return tail


def parse_term(text: str) -> Term:
    toks = tokenize(text.strip())
    if toks and toks[-1].text == ".":
        toks.pop()
    p = _Parser(toks)
    term = p.parse(1200)
    if p.peek() is not None:
        raise ParseError(f"trailing tokens from {p.peek().text!r}")
    return term


def parse_clause(text: str) -> tuple[Term, Term | None]:
    """(head, body) -- body None for a fact."""
    t = parse_term(text)
    if isinstance(t, Compound) and t.functor == ":-" and len(t.args) == 2:
        return t.args[0], t.args[1]
    if isinstance(t, Compound) and t.functor == ":-" and len(t.args) == 1:
        raise ParseError("directive, not a clause")
    return t, None


def indicator(head: Term) -> tuple[str, int]:
    if isinstance(head, Atom):
        return head.name, 0
    if isinstance(head, Compound):
        return head.functor, len(head.args)
    raise ParseError(f"head is not callable: {head!r}")


def term_vars(t: Term, acc: list[str] | None = None) -> list[str]:
    """Variable names in first-occurrence order; `_` is anonymous and never shared."""
    if acc is None:
        acc = []
    if isinstance(t, Var):
        if t.name != "_" and t.name not in acc:
            acc.append(t.name)
    elif isinstance(t, Compound):
        for a in t.args:
            term_vars(a, acc)
    return acc


# ===================================================================== Z3 encoding

class Unsupported(Exception):
    pass


UNSUPPORTED_GOALS = {("is", 2), ("findall", 3), ("findall", 4), ("forall", 2),
                     ("aggregate_all", 3), ("aggregate_all", 4), ("!", 0),
                     ("call", 1), ("call", 2), ("assert", 1), ("asserta", 1),
                     ("assertz", 1), ("retract", 1), ("format", 1), ("format", 2),
                     ("write", 1), ("nl", 0), ("between", 3), ("length", 2),
                     ("nth0", 3), ("nth1", 3), ("msort", 2), ("sort", 2),
                     ("sum_list", 2), ("max_list", 2), ("min_list", 2),
                     ("atom", 1), ("number", 1), ("var", 1), ("nonvar", 1),
                     ("ground", 1), ("copy_term", 2), ("functor", 3), ("arg", 3)}

# Comparisons become uninterpreted relations. `>` is `<` with swapped arguments so the
# two spellings of one test encode identically.
_CMP = {"<": ("lt", False), ">": ("lt", True), "=<": ("le", False), ">=": ("le", True)}

Rename = Callable[[str, int], tuple[str, int]]


def identity(name: str, arity: int) -> tuple[str, int]:
    return name, arity


class Encoder:
    """Shares one universe sort and one symbol table across both definitions, so that
    `provider/1` on the two sides is the same Z3 function and atoms are the same
    constants. Distinctness of atoms and numbers is asserted on the solver."""

    def __init__(self):
        self.U = z3.DeclareSort("U")
        self.preds: dict[tuple[str, int], z3.FuncDeclRef] = {}
        self.funcs: dict[tuple[str, int], z3.FuncDeclRef] = {}
        self.consts: dict[str, z3.ExprRef] = {}
        self._fresh = 0

    def fresh(self, hint: str = "x") -> z3.ExprRef:
        self._fresh += 1
        return z3.Const(f"{hint}!{self._fresh}", self.U)

    def pred(self, name: str, arity: int) -> z3.FuncDeclRef:
        key = (name, arity)
        if key not in self.preds:
            self.preds[key] = z3.Function(f"p:{name}/{arity}",
                                          *([self.U] * arity), z3.BoolSort())
        return self.preds[key]

    def func(self, name: str, arity: int) -> z3.FuncDeclRef:
        key = (name, arity)
        if key not in self.funcs:
            self.funcs[key] = z3.Function(f"f:{name}/{arity}",
                                          *([self.U] * arity), self.U)
        return self.funcs[key]

    def const(self, name: str) -> z3.ExprRef:
        if name not in self.consts:
            self.consts[name] = z3.Const(f"c:{name}", self.U)
        return self.consts[name]

    # --- terms -----------------------------------------------------------------

    def term(self, t: Term, env: dict[str, z3.ExprRef]) -> z3.ExprRef:
        if isinstance(t, Var):
            if t.name == "_":
                return self.fresh("_")
            return env[t.name]
        if isinstance(t, Atom):
            return self.const(t.name)
        if isinstance(t, Num):
            return self.const(f"#{t.value}")
        if isinstance(t, Compound):
            return self.func(t.functor, len(t.args))(
                *[self.term(a, env) for a in t.args])
        raise TypeError(t)

    # --- bodies ----------------------------------------------------------------

    def body(self, g: Term, env: dict[str, z3.ExprRef], outer_vars: set[str],
             rename: Rename) -> z3.BoolRef:
        """Formula for goal `g`. `outer_vars` are the variables bound outside this
        goal (head, or sibling goals); a variable private to a negated goal is
        existentially quantified inside the negation."""
        if isinstance(g, Atom):
            if (g.name, 0) in UNSUPPORTED_GOALS:
                raise Unsupported(f"{g.name}/0")
            if g.name == "true":
                return z3.BoolVal(True)
            if g.name in ("fail", "false"):
                return z3.BoolVal(False)
            n, a = rename(g.name, 0)
            return self.pred(n, a)()
        if isinstance(g, Var):
            raise Unsupported("variable goal")
        if not isinstance(g, Compound):
            raise Unsupported(f"goal {g!r}")

        f, args = g.functor, g.args
        if f == "," and len(args) == 2:
            return z3.And(self.body(args[0], env, outer_vars, rename),
                          self.body(args[1], env, outer_vars, rename))
        if f in (";", "|") and len(args) == 2:
            left = args[0]
            if isinstance(left, Compound) and left.functor == "->" and len(left.args) == 2:
                c = self.body(left.args[0], env, outer_vars, rename)
                t = self.body(left.args[1], env, outer_vars, rename)
                e = self.body(args[1], env, outer_vars, rename)
                return z3.Or(z3.And(c, t), z3.And(z3.Not(c), e))
            return z3.Or(self.body(args[0], env, outer_vars, rename),
                         self.body(args[1], env, outer_vars, rename))
        if f == "->" and len(args) == 2:
            return z3.And(self.body(args[0], env, outer_vars, rename),
                          self.body(args[1], env, outer_vars, rename))
        if f == "\\+" and len(args) == 1:
            inner_vars = [v for v in term_vars(args[0]) if v not in outer_vars]
            inner_env = dict(env)
            bound = []
            for v in inner_vars:
                if v not in inner_env:
                    inner_env[v] = self.fresh(v)
                    bound.append(inner_env[v])
            inner = self.body(args[0], inner_env, outer_vars | set(inner_vars), rename)
            if bound:
                inner = z3.Exists(bound, inner)
            return z3.Not(inner)
        if f in ("=", "==", "=:=") and len(args) == 2:
            return self.term(args[0], env) == self.term(args[1], env)
        if f in ("\\=", "\\==", "=\\=") and len(args) == 2:
            return self.term(args[0], env) != self.term(args[1], env)
        if f in _CMP and len(args) == 2:
            rel, swap = _CMP[f]
            a, b = self.term(args[0], env), self.term(args[1], env)
            return self.pred(f"${rel}", 2)(b, a) if swap else self.pred(f"${rel}", 2)(a, b)
        if (f, len(args)) in UNSUPPORTED_GOALS:
            raise Unsupported(f"{f}/{len(args)}")
        n, a = rename(f, len(args))
        return self.pred(n, a)(*[self.term(x, env) for x in args])

    # --- completion ------------------------------------------------------------

    def completion(self, clauses: list[tuple[Term, Term | None]],
                   xs: list[z3.ExprRef], rename: Rename = identity) -> z3.BoolRef:
        """The right-hand side of the Clark completion for one predicate, as a
        formula over the head-argument constants `xs`."""
        disjuncts = []
        for head, body in clauses:
            hargs = head.args if isinstance(head, Compound) else ()
            if len(hargs) != len(xs):
                raise Unsupported("arity mismatch inside one definition")
            names = term_vars(head)
            if body is not None:
                term_vars(body, names)
            env = {v: self.fresh(v) for v in names}
            conj = [xs[k] == self.term(hargs[k], env) for k in range(len(xs))]
            if body is not None:
                conj.append(self.body(body, env, set(names), rename))
            formula = z3.And(*conj) if conj else z3.BoolVal(True)
            bound = list(env.values())
            disjuncts.append(z3.Exists(bound, formula) if bound else formula)
        if not disjuncts:
            return z3.BoolVal(False)
        return z3.Or(*disjuncts) if len(disjuncts) > 1 else disjuncts[0]


@dataclass
class Definition:
    """One predicate's clauses, parsed. `arity` is the head arity."""
    name: str
    arity: int
    clauses: list[tuple[Term, Term | None]] = field(default_factory=list)

    @classmethod
    def from_text(cls, name: str, arity: int, clause_texts: list[str]) -> "Definition":
        d = cls(name, arity)
        for c in clause_texts:
            d.clauses.append(parse_clause(c))
        return d


@dataclass
class Verdict:
    kind: str                # equiv | different | unknown | unsupported
    detail: str = ""


def equivalent(a: Definition, b: Definition, rename_b: Rename = identity,
               timeout_ms: int = 2000) -> Verdict:
    """Is FORALL X. Da(X) <-> Db(X) valid, with b's predicate symbols renamed?"""
    if a.arity != b.arity:
        return Verdict("different", "arity")
    enc = Encoder()
    xs = [enc.fresh(f"X{k}") for k in range(a.arity)]
    try:
        da = enc.completion(a.clauses, xs)
        db = enc.completion(b.clauses, xs, rename_b)
    except Unsupported as e:
        return Verdict("unsupported", str(e))
    consts = list(enc.consts.values())

    def valid(formula: z3.BoolRef) -> z3.CheckSatResult:
        s = z3.Solver()
        s.set("timeout", timeout_ms)
        if len(consts) > 1:
            s.add(z3.Distinct(*consts))
        s.add(z3.Not(formula))
        return s.check()

    r = valid(da == db)
    if r == z3.unsat:
        return Verdict("equiv")
    if r != z3.sat:
        return Verdict("unknown", "equivalence check")
    # Not equivalent. Is one side stricter than the other?
    ab = valid(z3.Implies(da, db))
    if ab == z3.unsat:
        return Verdict("implies", "a is stricter")
    ba = valid(z3.Implies(db, da))
    if ba == z3.unsat:
        return Verdict("implied_by", "b is stricter")
    if ab == z3.sat and ba == z3.sat:
        return Verdict("different")
    return Verdict("different", "implication check timed out")


# ======================================================================== self-test

if __name__ == "__main__":
    import sys

    def D(name, arity, *clauses):
        return Definition.from_text(name, arity, list(clauses))

    cases = [
        ("same text", "equiv",
         D("p", 1, "p(S) :- a(S), b(S)."), D("p", 1, "p(S) :- a(S), b(S).")),
        ("reordered conjunction, renamed variable", "equiv",
         D("p", 1, "p(S) :- a(S), b(S)."), D("p", 1, "p(X) :- b(X), a(X).")),
        ("two clauses vs one disjunction", "equiv",
         D("p", 1, "p(S) :- a(S).", "p(S) :- b(S)."), D("p", 1, "p(S) :- (a(S) ; b(S)).")),
        ("missing condition (a stricter)", "implies",
         D("p", 1, "p(S) :- a(S), b(S)."), D("p", 1, "p(S) :- a(S).")),
        ("extra condition (b stricter)", "implied_by",
         D("p", 1, "p(S) :- a(S)."), D("p", 1, "p(S) :- a(S), b(S).")),
        ("negation vs positive", "different",
         D("p", 1, "p(S) :- a(S), \\+ b(S)."), D("p", 1, "p(S) :- a(S), b(S).")),
        ("double negation", "equiv",
         D("p", 1, "p(S) :- \\+ \\+ a(S)."), D("p", 1, "p(S) :- a(S).")),
        ("existential body variable, same shape", "equiv",
         D("p", 1, "p(S) :- deploys(D, S), authority(D)."),
         D("p", 1, "p(Sys) :- authority(Who), deploys(Who, Sys).")),
        ("different compound argument", "different",
         D("p", 2, "p(A, keep_for(years(10))) :- a(A)."),
         D("p", 2, "p(A, keep_for(years(5))) :- a(A).")),
        ("fact vs fact", "equiv",
         D("p", 2, "p(provider, high_risk_ai_system)."),
         D("p", 2, "p(provider, high_risk_ai_system).")),
        ("fact vs different fact", "different",
         D("p", 2, "p(provider, high_risk_ai_system)."), D("p", 2, "p(deployer, high_risk_ai_system).")),
        ("if-then-else vs its expansion", "equiv",
         D("p", 1, "p(S) :- ( a(S) -> b(S) ; c(S) )."),
         D("p", 1, "p(S) :- a(S), b(S).", "p(S) :- \\+ a(S), c(S).")),
        ("renamed body predicate via map", "equiv",
         D("p", 1, "p(S) :- real_time(S), remote(S)."),
         D("p", 1, "p(S) :- realtime(S), remote(S).")),
        ("unsupported goal", "unsupported",
         D("p", 1, "p(S) :- findall(X, a(X), L), length(L, N), N > 2."), D("p", 1, "p(S) :- a(S).")),
        ("list vs list", "equiv",
         D("p", 1, "p([a, b])."), D("p", 1, "p([a | [b]]).")),
        ("unification in body", "equiv",
         D("p", 1, "p(S) :- S = x, a(S)."), D("p", 1, "p(x) :- a(x).")),
    ]
    failed = 0
    for label, expected, a, b in cases:
        rn = (lambda n, k: ("real_time", 1) if (n, k) == ("realtime", 1) else (n, k)) \
            if "renamed" in label else identity
        v = equivalent(a, b, rn)
        ok = v.kind == expected
        failed += not ok
        print(f"  {'ok ' if ok else 'FAIL'}  {label:<44} expected {expected:<11} got {v.kind} {v.detail}")
    print(f"\n{len(cases) - failed}/{len(cases)} passed")
    sys.exit(1 if failed else 0)
