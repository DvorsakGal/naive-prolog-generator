% hand adapter: out_paragraphs/art_11_par_1/opus/seed_2.pl  (Opus 5.5, reasoning minimal)
high_risk_ai_system(S) :- high_risk_ai_system(S).
technical_documentation_of(D, S) :- technical_documentation(S, D).
provider_of(P, S) :- provider(P, S).
sme(E) :- sme(E).
opts_for_simplified_documentation(P) :- opts_for_simplified(P, _S).
commission(commission).
notified_body(B) :- notified_body(B).
% the module expects the form to exist as a fact
simplified_technical_documentation_form(commission_simplified_form).

obligation(P, draw_up(S), before(entry)) :- must_draw_up(P, technical_documentation(S, _)).
obligation(P, keep_up_to_date(S), ongoing) :- must_keep_up_to_date(P, technical_documentation(S)).
obligation(_P, include_annex_iv(_S), at_minimum) :- must_contain(_D, elements(annex_iv)).
permission(P, simplify_annex_iv(_S)) :- permitted_simplified_technical_documentation(P).
obligation(commission, establish(F), unconditional) :- must_establish(_C, F).
obligation(P, use_form(_S, F), when_opted) :- must_use(P, F).
obligation(B, accept(_Doc, F), in_assessment) :- must_accept(B, form(F, _)).
