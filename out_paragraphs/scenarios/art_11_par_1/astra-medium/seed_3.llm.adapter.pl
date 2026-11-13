% INPUT clauses
artificial_intelligence_system(S) :- high_risk_ai_system(S).
high_risk(S) :- high_risk_ai_system(S).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(NB) :- notified_body(NB).
small_or_medium_sized_enterprise(E) :- sme(E).
commission(commission).
opts_for_simplified_provision(E, information(technical_documentation(S), annex(4))) :- opts_for_simplified(E, S).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(technical_documentation(S), _)).
obligation(_P, keep_up_to_date(S), _D) :- required_up_to_date_documentation(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(demonstration(technical_documentation(S), _)).
obligation(_P, provide_information(S, R), _D) :- required_information(provision(technical_documentation(S), R, _)).
obligation(_P, include_annex_iv(S), _D) :- required_minimum_content(content(technical_documentation(S), _)).
obligation(E, use_form(S, F), _D) :- must_use(E, form_for(F, technical_documentation(S))).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(B, accept(_Doc, F), _D) :- must_accept(B, form_for(F, _)).

permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, technical_documentation(S), _)).

% required_clarity/1 and required_comprehensiveness/1: they qualify the provide_information duty
% (same provision term) and have no canonical action of their own; provide_information is covered
% via required_information/1.
% required_technical_documentation/1: a precondition (the system needs documentation) with no
% canonical action; the duties it grounds are covered by draw_up and the other clauses.
