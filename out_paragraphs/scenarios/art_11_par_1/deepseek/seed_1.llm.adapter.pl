% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
placed_on_market(S) :- happens(placed_on_market(S), _).
put_into_service(S) :- happens(put_into_service(S), _).
sme(E) :- sme(E).
start_up(E) :- start_up(E).
notified_body(NB) :- notified_body(NB).
conformity_assessment(S) :- assesses(_, S).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- must_draw_up_technical_documentation(S, _).
obligation(_P, keep_up_to_date(S), _D) :- must_keep_up_to_date(technical_documentation(S)).
obligation(_P, include_annex_iv(S), _D) :- must_contain(technical_documentation(S), annex_iv).
obligation(P, use_form(P, F), _D) :- must_use_form(P, F).
obligation(P, accept(_Doc, F), _D) :- must_accept_form(P, F).
obligation(C, establish(F), _D) :- must_establish(C, F).

permission(E, simplify_annex_iv(E)) :- may_provide_simplified(E, annex_iv).
