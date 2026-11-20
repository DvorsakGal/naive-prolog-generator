% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
artificial_intelligence_system(S) :- high_risk_ai_system(S).
technical_documentation_applies(documentation(D, S)) :- technical_documentation(S, D).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).
small_and_medium_sized_enterprise(E) :- sme(E).
provides_technical_documentation(E, D) :- sme(E), provider(E, S), technical_documentation(S, D).
opts_for(E, simplified_provision(D, element_set(annex_iv))) :- opts_for_simplified(E, S), technical_documentation(S, D).
commission(commission).

% required_technical_documentation/1 is only a classification of which systems
% are subject to the documentation duty (a helper for the other duties).
% It is not itself a canonical action, so no query clause is written for it.

% QUERY clauses
obligation(_P, draw_up(_S), _D) :- required_drawing_up(before(_Doc, placing_on_market(_Sys))).
obligation(_P, draw_up(_S), _D) :- required_drawing_up(before(_Doc, putting_into_service(_Sys))).
obligation(_P, keep_up_to_date(_S), _D) :- required_updating(_Doc).
obligation(_P, demonstrate_compliance(S), _D) :- required_compliance_demonstration(documentation(_Doc, compliance(S, requirement(chp_3)))).
obligation(_P, provide_information(S, R), _D) :- required_information_provision(documentation(_Doc, recipient(R), necessary_information(clear_and_comprehensive, assessment(compliance(S, requirement(chp_3)))))).
obligation(_P, include_annex_iv(_S), _D) :- required_minimum_content(documentation(_Doc, element_set(annex_iv))).
permission(E, simplify_annex_iv(_S)) :- permitted_simplified_provision(provision(E, _Doc, element_set(annex_iv))).
obligation(E, use_form(_S, _F), _D) :- must_use(E, form(article_11_1, _Doc)).
obligation(C, establish(_F), _D) :- must_establish(C, simplified_technical_documentation_form(article_11_1, targeted_at(need(small_enterprise), need(microenterprise)))).
obligation(B, accept(_Doc, _F), _D) :- must_accept(B, form(article_11_1, purpose(conformity_assessment))).
