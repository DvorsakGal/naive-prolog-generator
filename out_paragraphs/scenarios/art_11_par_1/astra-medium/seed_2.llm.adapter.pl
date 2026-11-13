% INPUT clauses
artificial_intelligence_system(S) :- high_risk_ai_system(S).
high_risk(S) :- high_risk_ai_system(S).
technical_documentation(D) :- technical_documentation(_, D).
documents_system(D, S) :- technical_documentation(S, D).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(N) :- notified_body(N).
small_and_medium_sized_enterprise(E) :- sme(E).
start_up(E) :- start_up(E).
provides_documentation(E, D) :- opts_for_simplified(E, S), technical_documentation(S, D).
opts_for_simplified_provision(E, required_information(D, annex_iv)) :- opts_for_simplified(E, S), technical_documentation(S, D).

% QUERY clauses
obligation(_P, draw_up(S), before(placing_on_market)) :- required_drafting(drafting(_D, before(placing_on_market(S)))).
obligation(_P, draw_up(S), before(putting_into_service)) :- required_drafting(drafting(_D, before(putting_into_service(S)))).
obligation(_P, keep_up_to_date(_S), _T) :- required_updating(keeping_up_to_date(_D)).
obligation(_P, demonstrate_compliance(S), _T) :- required_compliance_demonstration(drafting(_D, demonstrates(compliance(S, _)))).
obligation(_P, provide_information(S, R), _T) :- required_information_provision(provision(_D, R, necessary_information(assessment(compliance(S, _))), _)).
obligation(_P, include_annex_iv(_S), _T) :- required_minimum_content(content(_D, element_set(annex_iv))).
obligation(_P, establish(F), _T) :- must_establish(_, F).
obligation(E, use_form(_S, F), _T) :- must_use(E, F).
obligation(B, accept(_D, F), _T) :- must_accept(B, use(F, _)).
permission(E, simplify_annex_iv(_S)) :- permitted_simplified_provision(provision(E, _D, element_set(annex_iv))).

% required_technical_documentation/1 is only a scope condition (system is an AI system and high-risk); it is not itself a duty to perform a canonical action (draw_up is covered by required_drafting).
% required_targeting/1 states a design requirement on the form content (needs of small and microenterprises); no canonical action term corresponds to it.
