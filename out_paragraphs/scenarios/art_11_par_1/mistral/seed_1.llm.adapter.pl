% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
provider(P, S) :- provider(P, S).
technical_documentation(S, D) :- technical_documentation(S, D).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(N) :- notified_body(N).
sme(P) :- sme(P).
start_up(P) :- start_up(P).
opts_to_provide_simplified(P, information(annex_iv)) :- opts_for_simplified(P, _).

% QUERY clauses
obligation(P, draw_up(S), _D) :- must_draw_up_technical_documentation(P, S).
obligation(_P, keep_up_to_date(S), _D) :- technical_documentation_up_to_date(S).
obligation(_P, demonstrate_compliance(S), _D) :- technical_documentation_demonstrates_compliance(S, _).
obligation(_P, provide_information(S, R), _D) :- technical_documentation_provides_information(S, R, _).
obligation(_P, include_annex_iv(S), _D) :- technical_documentation_contains_elements(S, _).
obligation(P, establish(F), _D) :- must_establish_simplified_form(P), F = F.
obligation(P, use_form(_S, F), _D) :- must_use_simplified_form(P, F).
obligation(B, accept(_Doc, F), _D) :- must_accept_simplified_form(B, F).
permission(P, simplify_annex_iv(_S)) :- may_provide_simplified_documentation(P).
