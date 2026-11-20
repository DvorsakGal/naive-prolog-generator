% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
artificial_intelligence_system_applies(S) :- high_risk_ai_system(S).
small_and_medium_sized_enterprise_applies(E) :- sme(E).
national_competent_authority_applies(A) :- national_competent_authority(A).
notified_body_applies(B) :- notified_body(B).
opts_for(E, provision(annex_iv_element_set(technical_documentation(S)), simplified_manner)) :- opts_for_simplified(E, S).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(technical_documentation(S), before(placing_on_market(S)))).
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(technical_documentation(S), before(putting_into_service(S)))).
obligation(_P, keep_up_to_date(S), _D) :- required_updating(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- required_compliance_demonstration(demonstration(technical_documentation(S), compliance(S, requirement_set(chp_3)))).
obligation(_P, provide_information(S, R), _D) :- required_information_provision(provision(technical_documentation(S), R, necessary_information(assessment(compliance(S, requirement_set(chp_3)))), form(clear, comprehensive))).
obligation(_P, include_annex_iv(S), _D) :- required_minimum_content(content(technical_documentation(S), element_set(annex_iv))).
obligation(_P, establish(F), _D) :- must_establish(_, F).
obligation(E, use_form(S, F), _D) :- must_use(E, form(F, provision(annex_iv_element_set(technical_documentation(S)), simplified_manner))).
obligation(B, accept(_Doc, F), _D) :- must_accept(B, form(F, purpose(conformity_assessment))).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, annex_iv_element_set(technical_documentation(S)), simplified_manner)).
