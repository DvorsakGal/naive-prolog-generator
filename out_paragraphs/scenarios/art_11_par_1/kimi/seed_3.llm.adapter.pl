% INPUT clauses (module inputs: dynamic or called-but-undefined)
placed_on_market(S) :- happens(placed_on_market(S), _).
put_into_service(S) :- happens(put_into_service(S), _).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(NB) :- notified_body(NB).
sme(P) :- sme(P).
start_up(P) :- start_up(P).
high_risk_ai_system(S) :- high_risk_ai_system(S).
developed_by(P, S) :- provider(P, S).
chooses_simplified(P) :- opts_for_simplified(P, _).

% QUERY clauses
obligation(P, draw_up(S), _D) :- must_draw_up(P, technical_documentation(S)).
obligation(P, keep_up_to_date(S), _D) :- must_keep_up_to_date(P, technical_documentation(S)).
obligation(_P, include_annex_iv(S), _D) :- must_contain(technical_documentation(S), annex_iv_elements).
obligation(_P, demonstrate_compliance(S), _D) :- must_demonstrate_compliance(technical_documentation(S), requirements_chp_3).
obligation(_P, provide_information(S, R), _D) :- must_provide_information(technical_documentation(S), R, _).
obligation(P, use_form(_S, F), _D) :- must_use_form(P, F).
obligation(P, establish(F), _D) :- must_establish(P, F).
obligation(P, accept(_Doc, F), _D) :- must_accept_form(P, F).

permission(P, simplify_annex_iv(_S)) :- may_provide_simplified(P, annex_iv_elements).
