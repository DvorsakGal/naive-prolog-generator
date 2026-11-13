% Inputs the module reads (dynamic or called but undefined)
high_risk_ai_system(S) :- high_risk_ai_system(S).
sme(E) :- sme(E).
start_up(E) :- start_up(E).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(NB) :- notified_body(NB).

% placed_on_market and put_into_service take a system; the tests supply happens/2 events
placed_on_market(S) :- happens(placed_on_market(S), _).
put_into_service(S) :- happens(put_into_service(S), _).

% Query clauses
obligation(P, draw_up(S), _D) :- must_draw_up(P, technical_documentation(S)).
obligation(_P, draw_up(S), _D) :- required_technical_documentation(technical_documentation(S)).
obligation(P, keep_up_to_date(S), _D) :- must_keep_up_to_date(P, technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- must_demonstrate_compliance(technical_documentation(S), _).
obligation(_P, provide_information(S, R), _D) :- must_provide_information(technical_documentation(S), R, _).
obligation(_P, include_annex_iv(S), _D) :- must_contain(technical_documentation(S), _).
obligation(P, use_form(_S, F), _D) :- must_use_form(P, F).
obligation(P, establish(F), _D) :- must_establish(P, F).
obligation(P, accept(_Doc, F), _D) :- must_accept_form(P, F).

permission(_E, simplify_annex_iv(S)) :- permitted_simplified_technical_documentation(technical_documentation(S)).
