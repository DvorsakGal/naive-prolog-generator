% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
small_or_medium_sized_enterprise_applies(E) :- sme(E).
small_or_medium_sized_start_up_applies(E) :- start_up(E).
opts_for_simplified_provision(E, annex_iv_information(technical_documentation(S))) :- opts_for_simplified(E, S).
notified_body_applies(B) :- notified_body(B).

% required_technical_documentation/1 is not mapped separately: it is the base
% condition for the specific duties below (draw up, update, etc.), which are mapped individually.

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(technical_documentation(S), before(placement_on_market(S)))).
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(technical_documentation(S), before(putting_into_service(S)))).
obligation(_P, keep_up_to_date(S), _D) :- required_updating(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(demonstration(technical_documentation(S), _)).
obligation(_P, provide_information(S, national_competent_authority), _D) :- required_information(information(technical_documentation(S), recipient(national_competent_authority), _, _)).
obligation(_P, provide_information(S, notified_body), _D) :- required_information(information(technical_documentation(S), recipient(notified_body), _, _)).
obligation(_P, include_annex_iv(S), _D) :- required_inclusion(inclusion(technical_documentation(S), _)).
obligation(E, use_form(S, F), _D) :- must_use(E, form_for(F, provision(annex_iv_information(technical_documentation(S))))).
obligation(E, establish(F), _D) :- must_establish(E, F).
obligation(E, accept(_Doc, F), _D) :- must_accept(E, F).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, annex_iv_element_set(technical_documentation(S)))).
