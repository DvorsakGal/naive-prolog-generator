% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
provider(P) :- provider(P, _).
small_medium_enterprise(P) :- sme(P).
start_up(P) :- start_up(P).
notified_body(N) :- notified_body(N).
national_competent_authority(A) :- national_competent_authority(A).
opts_simplified_manner(P, technical_documentation(S)) :- opts_for_simplified(P, S).
conformity_assessment(S) :- assesses(_, S).
commission(commission).

% QUERY clauses
obligation(P, draw_up(S), _D) :- must_draw_up(P, technical_documentation(S)).
obligation(P, keep_up_to_date(S), _D) :- must_keep_up_to_date(P, technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- demonstrates_compliance(technical_documentation(S), _).
obligation(_P, provide_information(S, R), _D) :- provides_assessment_information(technical_documentation(S), recipient(R)).
obligation(_P, include_annex_iv(S), _D) :- contains_elements(technical_documentation(S), _).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(P, use_form(_S, F), _D) :- must_use(P, F).
obligation(B, accept(_Doc, F), _D) :- must_accept(B, F).

permission(_E, simplify_annex_iv(S)) :- permitted_simplified_manner(technical_documentation(S)).

% required_technical_documentation/1: only states that documentation exists/is required for a
% high-risk system; it has no bearer and no canonical action (draw_up etc. are covered by
% must_draw_up/2), so it is not mapped.
