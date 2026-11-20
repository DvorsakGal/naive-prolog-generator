% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
ai_system(S) :- high_risk_ai_system(S).
technical_documentation_of(D, S) :- technical_documentation(S, D).
small_and_medium_sized_enterprise(E) :- sme(E).
provides_documentation(E, D) :- opts_for_simplified(E, S), technical_documentation(S, D).
opts_for_simplified_provision(E, information(D, annex_iv)) :- opts_for_simplified(E, S), technical_documentation(S, D).
commission(commission).
notified_body(NB) :- notified_body(NB).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_technical_documentation(S).
obligation(_P, draw_up(S), _D) :- required_drawing_up(before(technical_documentation(S), _)).
obligation(_P, keep_up_to_date(S), _D) :- required_updating(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(documentation(_, compliance(S, _))).
obligation(_P, provide_information(S, national_competent_authority), _D) :- required_information(documentation(_, recipient(national_competent_authority), necessary_information(assess(compliance(S, _))), _)).
obligation(_P, provide_information(S, notified_body), _D) :- required_information(documentation(_, recipient(notified_body), necessary_information(assess(compliance(S, _))), _)).
% required_minimum_content carries the documentation, not the system: system left unbound
obligation(_P, include_annex_iv(_S), _D) :- required_minimum_content(documentation(_, element_set(annex_iv))).
obligation(Commission, establish(Form), _D) :- must_establish(Commission, Form).
obligation(E, use_form(_, Form), _D) :- must_use(E, form_for(Form, _)).
obligation(NB, accept(_, Form), _D) :- must_accept(NB, form_for(Form, _)).

permission(E, simplify_annex_iv(_)) :- permitted_simplified_provision(provision(E, _, _)).
