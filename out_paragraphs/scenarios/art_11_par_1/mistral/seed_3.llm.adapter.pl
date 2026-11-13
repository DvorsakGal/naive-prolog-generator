% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
provider(P, S) :- provider(P, S).
time_of(E, T) :- happens(E, T).
technical_documentation(S, D) :- technical_documentation(S, D).
contains_elements(D, annex_iv) :- contains(D, annex_iv_elements).
sme(P) :- sme(P).
start_up(P) :- start_up(P).
opts_for_simplified_manner(P) :- opts_for_simplified(P, _).
notified_body(N) :- notified_body(N).

% QUERY clauses
obligation(P, draw_up(S), _) :- must_draw_up_technical_documentation(P, S).
obligation(_P, include_annex_iv(S), _) :- technical_documentation_contains_elements(S, _).
obligation(_P, demonstrate_compliance(S), _) :- technical_documentation_demonstrates_compliance(S, _).
obligation(_P, provide_information(S, R), _) :- technical_documentation_provides_information(S, _, R).
obligation(P, use_form(_S, article_11_1_form), _) :- must_use_simplified_form(P).
obligation(C, establish(_F), _) :- must_establish_simplified_form(C).
obligation(N, accept(_D, F), _) :- must_accept_simplified_form(N, F).

permission(P, simplify_annex_iv(_S)) :- may_provide_simplified_documentation(P).
