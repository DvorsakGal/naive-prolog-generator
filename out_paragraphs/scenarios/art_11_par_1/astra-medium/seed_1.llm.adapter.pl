% INPUT clauses
high_risk_artificial_intelligence_system(S) :- high_risk_ai_system(S).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(N) :- notified_body(N).
small_or_medium_sized_enterprise(E) :- sme(E).
start_up(E) :- start_up(E).
opts_for_simplified_documentation(E, technical_documentation(S)) :- opts_for_simplified(E, S).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_pre_market_documentation(drawing_up(technical_documentation(S), _)).
obligation(_P, draw_up(S), _D) :- required_pre_service_documentation(drawing_up(technical_documentation(S), _)).
obligation(_P, keep_up_to_date(S), _D) :- required_up_to_date_documentation(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- required_compliance_demonstration(drawing_up(technical_documentation(S), _)).
obligation(_P, provide_information(S, R), _D) :- required_information_provision(provision(technical_documentation(S), R, _, _)).
obligation(_P, include_annex_iv(S), _D) :- required_minimum_content(content(technical_documentation(S), _)).
obligation(P, establish(F), _D) :- must_establish(P, F).
obligation(P, use_form(S, F), _D) :- must_use(P, form_for(F, provision(technical_documentation(S), _, _))).
obligation(P, accept(_Doc, F), _D) :- must_accept(P, F).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_documentation(provision(E, technical_documentation(S), _, _)).

% required_needs_alignment/1: states a purpose/property of the Commission's form (aligned with the needs of
% small and microenterprises); no canonical action term corresponds to it, so no query clause.
