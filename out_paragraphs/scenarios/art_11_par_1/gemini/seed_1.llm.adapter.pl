% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
technical_documentation(D) :- technical_documentation(_, D).
documentation_of(D, S) :- technical_documentation(S, D).
small_medium_enterprise(E) :- sme(E).
start_up(E) :- start_up(E).
notified_body(N) :- notified_body(N).
opts_simplified_manner(E) :- opts_for_simplified(E, _).
commission(commission).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_drawn_up(before(_, placed_on_market_or_put_into_service(S))).
obligation(_P, keep_up_to_date(_S), _D) :- required_up_to_date(_X).
obligation(_P, demonstrate_compliance(_S), _D) :- required_demonstrate_compliance(_X).
obligation(_P, provide_information(_S, _R), _D) :- required_provide_assessment_information(_X).
obligation(_P, include_annex_iv(_S), _D) :- required_contain_elements(_X).
permission(E, simplify_annex_iv(_S)) :- permitted_simplified_manner(E).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(E, use_form(_S, F), _D) :- must_use(E, F).
obligation(B, accept(_Doc, F), _D) :- must_accept(B, F).
