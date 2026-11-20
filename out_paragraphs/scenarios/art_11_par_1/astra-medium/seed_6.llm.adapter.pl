% INPUT clauses
artificial_intelligence_system_applies(S) :- high_risk_ai_system(S).
high_risk(S) :- high_risk_ai_system(S).
national_competent_authority_applies(A) :- national_competent_authority(A).
notified_body_applies(B) :- notified_body(B).
small_or_medium_sized_enterprise_applies(E) :- sme(E).
opts_to_provide_information(E, provision(element_set(annex_iv, technical_documentation(S)), simplified_manner)) :- opts_for_simplified(E, S).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_prior_drawing_up(drawing_up(technical_documentation(S), before(placing_on_market(S)))).
obligation(_P, draw_up(S), _D) :- required_prior_drawing_up(drawing_up(technical_documentation(S), before(putting_into_service(S)))).
obligation(_P, keep_up_to_date(S), _D) :- required_updating(keeping_up_to_date(technical_documentation(S))).
obligation(_P, demonstrate_compliance(S), _D) :- required_compliance_demonstration(demonstration(technical_documentation(S), compliance(S, requirement_set(chp_3)))).
obligation(_P, provide_information(S, R), _D) :- required_information_provision(provision(technical_documentation(S), R, necessary_information(assess_compliance(S, requirement_set(chp_3)), form(clear, comprehensive)))).
obligation(_P, include_annex_iv(S), _D) :- required_minimum_content(content(technical_documentation(S), element_set(annex_iv))).
obligation(E, use_form(S, commission_simplified_form), _D) :- must_use(E, documentation_form(technical_documentation_form(article(11, 1)), technical_documentation(S))).
obligation(P, establish(technical_documentation_form(article(11, 1))), _D) :- must_establish(P, technical_documentation_form(article(11, 1))).
obligation(B, accept(_Doc, commission_simplified_form), _D) :- must_accept(B, form_for_purpose(technical_documentation_form(article(11, 1)), conformity_assessment)).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, element_set(annex_iv, technical_documentation(S)), simplified_manner)).

% required_technical_documentation/1: a general precondition (documentation is required for a high-risk system), not a distinct canonical action; its duties are mapped through the specific required_* predicates.
