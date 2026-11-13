% INPUT clauses
ai_system_applies(S) :- high_risk_ai_system(S).
high_risk(S) :- high_risk_ai_system(S).
documents_system(D, S) :- technical_documentation(S, D).
small_or_medium_enterprise_applies(E) :- sme(E).
start_up_applies(E) :- start_up(E).
provides_documentation(E, D) :- opts_for_simplified(E, S), technical_documentation(S, D).
opts_for(E, provision(D, information_required(annex_iv), simplified_manner)) :- opts_for_simplified(E, S), technical_documentation(S, D).
commission_applies(commission).
national_competent_authority_applies(A) :- national_competent_authority(A).
notified_body_applies(B) :- notified_body(B).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_preparation(before(technical_documentation(_Doc), placing_on_market(S))).
obligation(_P, draw_up(S), _D) :- required_preparation(before(technical_documentation(_Doc), putting_into_service(S))).
% the module's updating duty carries only the documentation, not the system: system left unbound
obligation(_P, keep_up_to_date(_S), _D) :- required_updating(technical_documentation(_Doc, kept_up_to_date)).
obligation(_P, include_annex_iv(_S), _D) :- required_minimum_content(technical_documentation(_Doc, element_set(annex_iv))).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(compliance(_Doc, S, requirement(chp_3))).
obligation(_P, provide_information(S, R), _D) :- required_information(provision(_Doc, R, necessary_information(assess_compliance(S, requirement(chp_3)), form(clear, comprehensive)))).
obligation(E, use_form(_S, article_11(1)), _D) :- must_use(E, form(article_11(1), provision(_Doc, information_required(annex_iv)))).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(B, accept(_Doc, article_11(1)), _D) :- must_accept(B, form(article_11(1), purpose(conformity_assessment))).
permission(E, simplify_annex_iv(_S)) :- permitted_simplified_provision(provision(E, _Doc, element_set(annex_iv), simplified_manner)).
