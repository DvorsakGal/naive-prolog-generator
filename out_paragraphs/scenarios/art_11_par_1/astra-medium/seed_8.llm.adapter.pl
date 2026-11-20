% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
artificial_intelligence_system(S) :- high_risk_ai_system(S).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(NB) :- notified_body(NB).
small_or_medium_sized_enterprise(E) :- sme(E).
opts_for(E, provision(E, element_set(technical_documentation(S), annex_iv), manner(simplified))) :- opts_for_simplified(E, S).

% required_technical_documentation/1 is deliberately not mapped to a query clause.
% It is only the shared precondition (a high-risk AI system needs technical documentation).
% It names no action such as drawing up, keeping up to date or including content.
% Those actions are covered by required_prior_drawing_up/1, required_up_to_date_maintenance/1 and must_contain/2.

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_prior_drawing_up(drawing_up(technical_documentation(S), before(placing_on_market(S)))).
obligation(_P, draw_up(S), _D) :- required_prior_drawing_up(drawing_up(technical_documentation(S), before(putting_into_service(S)))).
obligation(_P, keep_up_to_date(S), _D) :- required_up_to_date_maintenance(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- must_demonstrate(technical_documentation(S), compliance(S, requirement_set(chp_3))).
obligation(_P, provide_information(S, R), _D) :- must_provide(technical_documentation(S), information(recipient(R), necessary_for(assessment(compliance(S, requirement_set(chp_3)))), form(clear, comprehensive))).
obligation(_P, include_annex_iv(S), _D) :- must_contain(technical_documentation(S), minimum_content(element_set(annex_iv))).
obligation(E, use_form(_S, simplified_technical_documentation_form(article_11_1)), _D) :- must_use(E, simplified_technical_documentation_form(article_11_1)).
obligation(B, establish(F), _D) :- must_establish(B, F).
obligation(B, accept(_Doc, F), _D) :- must_accept(B, use(F, purpose(conformity_assessment))).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, element_set(technical_documentation(S), annex_iv), manner(simplified))).
