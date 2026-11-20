% Inputs
artificial_intelligence_system_applies(S) :- high_risk_ai_system(S).
high_risk(S) :- high_risk_ai_system(S).
small_or_medium_sized_enterprise_applies(E) :- sme(E).
opts_for_provision(E, provision(annex_element_set(annex(iv), technical_documentation(S)), simplified_manner)) :- opts_for_simplified(E, S).
notified_body_applies(B) :- notified_body(B).

% Queries
obligation(_P, draw_up(S), _D) :- required_drawing_up(drawing_up(technical_documentation(S), before(placing_on_market(S)))).
obligation(_P, draw_up(S), _D) :- required_drawing_up(drawing_up(technical_documentation(S), before(putting_into_service(S)))).
obligation(_P, keep_up_to_date(S), _D) :- required_up_to_date(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- required_compliance_demonstration(X), X = demonstration(technical_documentation(S), _C).
obligation(_P, include_annex_iv(S), _D) :- must_contain(Doc, _E), Doc = technical_documentation(S).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(Pr), Pr = provision(E, annex_element_set(annex(iv), technical_documentation(S)), _M).
obligation(P, establish(F), _D) :- must_establish(P, F).

% required_technical_documentation/1: states only that documentation is required to exist; no canonical action
% distinct from draw_up/keep_up_to_date, which are covered by required_drawing_up/1 and required_up_to_date/1.
