% hand adapter: out_paragraphs/art_11_par_1/opus/seed_3.pl  (Opus 5.5, reasoning minimal)
high_risk_ai_system(S) :- high_risk_ai_system(S).
provider_of(P, S) :- provider(P, S).
technical_documentation(D, S) :- technical_documentation(S, D).
start_up(E) :- start_up(E).
small_or_medium_enterprise(E) :- sme(E).
commission(commission).
notified_body(B) :- notified_body(B).
opts_simplified_provision(P, elements(annex_iv)) :- opts_for_simplified(P, _S).
simplified_technical_documentation_form(commission_simplified_form).

obligation(P, draw_up(S), before(entry)) :-
    must_draw_up(P, before(_D, placing_on_market_or_putting_into_service(S))).
obligation(P, keep_up_to_date(_S), ongoing) :- must_keep_up_to_date(P, _D).
obligation(_P, include_annex_iv(_S), at_minimum) :- must_contain(_D, elements(annex_iv)).
permission(P, simplify_annex_iv(_S)) :- permitted_simplified_technical_documentation(P).
obligation(commission, establish(F), unconditional) :- must_establish(_C, F).
obligation(P, use_form(_S, F), when_opted) :- must_use(P, F).
obligation(B, accept(_Doc, F), in_assessment) :- must_accept(B, for_conformity_assessment(F)).
