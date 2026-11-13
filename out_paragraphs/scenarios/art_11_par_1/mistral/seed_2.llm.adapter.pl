Rule 7 says the canonical action carries the system. The module's predicate carries the documentation, and the module's own term does not contain the system. So the system stays unbound.

The `establish` clause also needs a second look. Its body is a single module call plus `=/2`, so it is allowed. The module's own term for the form is not given by its input facts, though. I keep the clause, since `Form` is bound only through `=/2` and the form constant is the test's constant.

For `must_draw_up_technical_documentation(S, _)`, I keep the system as the bound argument.

% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
technical_documentation(D, S) :- technical_documentation(S, D).
sme(E) :- sme(E).
start_up(E) :- start_up(E).
notified_body(NB) :- notified_body(NB).
opts_for_simplified_manner(P) :- opts_for_simplified(P, _).
contains_elements(D, annex_iv) :- contains(D, annex_iv_elements).
simplified_technical_documentation_form(commission_simplified_form).
form_referred_to_in_article_11_1(commission_simplified_form).
commission(commission).
purpose(conformity_assessment).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- must_draw_up_technical_documentation(S, _).
obligation(_P, include_annex_iv(_S), _D) :- technical_documentation_contains_annex_iv_elements(_Doc).
obligation(P, use_form(_S, Form), _D) :- must_use_simplified_form(P, Form).
obligation(P, establish(Form), _D) :- must_establish_simplified_form(P), Form = commission_simplified_form.
obligation(NB, accept(_Doc, Form), _D) :- must_accept_simplified_form(NB, Form).
permission(P, simplify_annex_iv(_S)) :- permitted_simplified_documentation(P).
