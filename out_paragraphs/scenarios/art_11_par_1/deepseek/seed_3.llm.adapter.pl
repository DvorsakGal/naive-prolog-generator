% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
placed_on_market(S) :- happens(placed_on_market(S), _).
put_into_service(S) :- happens(put_into_service(S), _).
sme(P) :- sme(P).
start_up(P) :- start_up(P).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).
commission(commission).
annex_iv_elements(E) :- contains(_, E).
provides_simplified(P) :- opts_for_simplified(P, _).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- must_draw_up_before(_E, technical_documentation(S)).
obligation(_P, keep_up_to_date(S), _D) :- must_keep_up_to_date(_E, technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- must_demonstrate_compliance(_Doc, S).
obligation(_P, include_annex_iv(S), _D) :- must_contain(technical_documentation(S), _El).
obligation(_P, provide_information(S, _R), _D) :- must_provide_information(_Doc, assessment_information(S, _C)).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(P, use_form(_S, F), _D) :- must_use_form(P, F).
obligation(B, accept(_Doc, F), _D) :- must_accept_form(B, F).
permission(_P, simplify_annex_iv(_S)) :- may_provide_simplified(_Sme, _El).
