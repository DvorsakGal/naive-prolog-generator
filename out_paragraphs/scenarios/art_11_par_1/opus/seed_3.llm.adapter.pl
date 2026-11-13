% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
provider_of(P, S) :- provider(P, S).
technical_documentation(Doc, S) :- technical_documentation(S, Doc).
start_up(X) :- start_up(X).
small_or_medium_enterprise(X) :- sme(X).
notified_body(B) :- notified_body(B).
opts_simplified_provision(P, elements(annex_iv)) :- opts_for_simplified(P, _).
commission(commission).
simplified_technical_documentation_form(commission_simplified_form).

% QUERY clauses
obligation(P, draw_up(S), before(Doc, placing_on_market_or_putting_into_service(S))) :- must_draw_up(P, before(Doc, placing_on_market_or_putting_into_service(S))).
obligation(P, keep_up_to_date(_), _) :- must_keep_up_to_date(P, _).
obligation(_P, include_annex_iv(_), _) :- must_contain(_, elements(annex_iv)).
obligation(P, use_form(_, Form), _) :- must_use(P, Form).
obligation(C, establish(Form), _) :- must_establish(C, Form).
obligation(B, accept(_, Form), _) :- must_accept(B, for_conformity_assessment(Form)).
permission(P, simplify_annex_iv(_)) :- permitted_simplified_technical_documentation(P).
