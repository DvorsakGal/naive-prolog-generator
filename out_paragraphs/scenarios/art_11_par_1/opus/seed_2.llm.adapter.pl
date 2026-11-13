% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
technical_documentation_of(D, S) :- technical_documentation(S, D).
provider_of(P, S) :- provider(P, S).
sme(P) :- sme(P).
opts_for_simplified_documentation(P) :- opts_for_simplified(P, _).
notified_body(B) :- notified_body(B).
simplified_technical_documentation_form(F) :- submitted_using(_, F).
commission(commission).

% QUERY clauses
obligation(P, draw_up(S), _D) :- must_draw_up(P, technical_documentation(S, _)).
obligation(P, keep_up_to_date(S), _D) :- must_keep_up_to_date(P, technical_documentation(S)).
obligation(P, use_form(_S, _F), _D) :- must_use(P, simplified_technical_documentation_form).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(B, accept(_Doc, F), _D) :- must_accept(B, form(F, _)).
% must_contain carries the documentation, not the system; system and bearer left unbound
obligation(_P, include_annex_iv(_S), _D) :- must_contain(_Doc, elements(annex_iv)).

permission(P, simplify_annex_iv(_S)) :- permitted_simplified_technical_documentation(P).

% required_technical_documentation/1: only states that documentation is required for a
% high-risk system, with no bearer; the draw-up duty is already covered by must_draw_up/2.
