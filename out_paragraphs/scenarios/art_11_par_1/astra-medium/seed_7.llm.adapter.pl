% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
artificial_intelligence_system_applies(S) :- high_risk_ai_system(S).
small_or_medium_sized_enterprise_applies(E) :- sme(E).
small_or_medium_sized_start_up_applies(E) :- start_up(E).
national_competent_authority_applies(A) :- national_competent_authority(A).
notified_body_applies(B) :- notified_body(B).
commission_applies(commission).
opts_to_provide(E, provision(technical_documentation(S), required_information(annex_iv), simplified_manner)) :- opts_for_simplified(E, S).

% QUERY clauses
% required_technical_documentation/1 is not mapped: it is only the shared precondition
% (a high-risk AI system) of the specific duties below, and corresponds to no canonical
% action by itself. Drawing up is covered via required_preparation/1.
% required_targeting/1 is not mapped: the targeting of the form at small and
% microenterprises corresponds to no canonical action term.
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(technical_documentation(S), before(placing_on_market(S)))).
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(technical_documentation(S), before(putting_into_service(S)))).
obligation(_P, keep_up_to_date(S), _D) :- required_updating(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(demonstration(technical_documentation(S), _)).
obligation(_P, provide_information(S, R), _D) :- required_information_provision(provision(technical_documentation(S), R, _, _)).
obligation(_P, include_annex_iv(S), _D) :- required_minimum_content(content(technical_documentation(S), _)).
obligation(E, use_form(S, simplified_technical_documentation_form(article(11, 1))), _D) :- must_use(E, use(simplified_technical_documentation_form(article(11, 1)), provision(technical_documentation(S), _, _))).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(B, accept(_Doc, _Form), _D) :- must_accept(B, _).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_documentation(provision(E, technical_documentation(S), _, _)).
