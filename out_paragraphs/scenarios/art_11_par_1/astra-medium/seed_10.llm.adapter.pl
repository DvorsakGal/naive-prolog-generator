% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).
small_or_medium_sized(E) :- sme(E).
opts_for_simplified_provision(E, element_set(annex(4), technical_documentation(S))) :- opts_for_simplified(E, S).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_preparation(preparation(technical_documentation(S), _)).
obligation(_P, keep_up_to_date(S), _D) :- required_updating(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- required_compliance_demonstration(demonstration(technical_documentation(S), _)).
obligation(_P, provide_information(S, R), _D) :- required_information_provision(provision(technical_documentation(S), R, _)).
obligation(_P, include_annex_iv(S), _D) :- required_inclusion(minimum_content(technical_documentation(S), _)).
obligation(E, use_form(S, simplified_technical_documentation_form), _D) :- must_use(E, form(simplified_technical_documentation_form, provision(element_set(annex(4), technical_documentation(S))))).
obligation(P, establish(F), _D) :- must_establish(P, F).
obligation(B, accept(_Doc, simplified_technical_documentation_form), _D) :- must_accept(B, form(simplified_technical_documentation_form, _)).

% required_clarity/1 and required_comprehensiveness/1: the clarity and
% comprehensiveness of the provision are aspects of provide_information; the
% canonical actions have no separate term for them, and the same provision is
% already covered by required_information_provision, so no further clause.

permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, element_set(annex(4), technical_documentation(S)))).
