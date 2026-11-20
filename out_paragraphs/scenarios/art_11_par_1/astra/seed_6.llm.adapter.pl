% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
ai_system(S) :- high_risk_ai_system(S).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).
small_and_medium_sized_enterprise(E) :- sme(E).
opts_for_simplified_provision(E, technical_documentation(S, information_required(annex(iv)))) :- opts_for_simplified(E, S).
technical_documentation_applies(enterprise_system(E, S)) :- provider(E, S).
commission(commission).

% QUERY clauses
% required_technical_documentation/1 is only the applicability condition (system is a high-risk AI system)
% shared by the other duties; it names no canonical action, so it gets no query clause of its own.
obligation(_P, draw_up(S), _D) :- required_drawing_up(technical_documentation(S, _, _)).
obligation(_P, keep_up_to_date(S), _D) :- required_updating(technical_documentation(S, kept_up_to_date)).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(technical_documentation(S, _)).
obligation(_P, provide_information(S, R), _D) :- required_provision(information(technical_documentation(S), recipient(R), _, _)).
obligation(_P, include_annex_iv(S), _D) :- required_inclusion(technical_documentation(S, _)).
obligation(E, use_form(S, _F), _D) :- must_use(E, form(_, provision(technical_documentation(S, _)))).
obligation(C, establish(_F), _D) :- must_establish(C, _).
obligation(B, accept(_Doc, _F), _D) :- must_accept(B, _).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, technical_documentation(S, _), _)).
