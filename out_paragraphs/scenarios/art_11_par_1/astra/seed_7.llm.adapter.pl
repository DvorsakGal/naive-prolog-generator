% INPUT clauses
technical_documentation_applies(documentation(D, S)) :- technical_documentation(S, D).
high_risk_artificial_intelligence_system_applies(S) :- high_risk_ai_system(S).
small_or_medium_enterprise(E) :- sme(E).
start_up(E) :- start_up(E).
provides_documentation(E, D) :- provider(E, S), technical_documentation(S, D).
opts_for_simplified_provision(E, provision(D, required_information(annex_iv))) :- opts_for_simplified(E, S), technical_documentation(S, D).
notified_body(NB) :- notified_body(NB).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(_, before(placement_on_market(S)))).
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(_, before(putting_into_service(S)))).
% required_updating carries only the documentation, so the system is left unbound
obligation(_P, keep_up_to_date(_S), _D) :- required_updating(_Doc).
obligation(_P, include_annex_iv(_S), _D) :- required_minimum_content(content(_, element_set(annex_iv))).
obligation(_P, demonstrate_compliance(S), _D) :- required_compliance_demonstration(preparation(_, demonstrating(compliance(S, requirement(chp_3))))).
obligation(_P, provide_information(S, national_competent_authority), _D) :- required_information_provision(preparation(_, providing(national_competent_authority, necessary_information(assessment(compliance(S, requirement(chp_3))), clear_and_comprehensive_form)))).
obligation(_P, provide_information(S, notified_body), _D) :- required_information_provision(preparation(_, providing(notified_body, necessary_information(assessment(compliance(S, requirement(chp_3))), clear_and_comprehensive_form)))).
obligation(commission, establish(F), _D) :- must_establish(commission, F).
obligation(E, use_form(_S, F), _D) :- must_use(E, form_for(F, provision(_, required_information(annex_iv)))).
obligation(B, accept(_Doc, F), _D) :- must_accept(B, form_for(F, conformity_assessment)).
permission(E, simplify_annex_iv(_S)) :- permitted_simplified_provision(provision(E, _, element_set(annex_iv))).
