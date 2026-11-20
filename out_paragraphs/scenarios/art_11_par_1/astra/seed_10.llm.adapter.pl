% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
ai_system(S) :- high_risk_ai_system(S).
documents_system(D, S) :- technical_documentation(S, D).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(N) :- notified_body(N).
small_or_medium_sized_enterprise(E) :- sme(E).
provides_documentation(E, D) :- opts_for_simplified(E, S), technical_documentation(S, D).
opts_for_simplified_provision(E, information(D, annex(iv))) :- opts_for_simplified(E, S), technical_documentation(S, D).

% QUERY clauses
obligation(_P, include_annex_iv(_S), _D) :- required_minimum_content(technical_documentation(_Doc, element_set(annex(iv)))).

permission(E, simplify_annex_iv(_S)) :- permitted_simplified_provision(provision(E, _Doc, element_set(annex(iv)))).

obligation(_P, establish(_F), _D) :- must_establish(commission, _X).

obligation(_P, use_form(_S, _F), _D) :- must_use(_E, _X).

obligation(B, accept(_Doc, _F), _D) :- must_accept(B, _X).

obligation(_P, draw_up(S), _D) :- required_preparation(technical_documentation(_Doc, before(placing_on_market(S)))).

obligation(_P, draw_up(S), _D) :- required_preparation(technical_documentation(_Doc, before(putting_into_service(S)))).

obligation(_P, demonstrate_compliance(S), _D) :- required_compliance_demonstration(technical_documentation(_Doc, compliance(S, _R))).

obligation(_P, provide_information(_S, R), _D) :- must_provide(_Doc, information(R, _N, _F)).

% keep_up_to_date: the module's required_updating carries the documentation only, so the system is left unbound.
obligation(_P, keep_up_to_date(_S), _D) :- required_updating(_Doc).

% required_technical_documentation(System): only states that documentation is required for the system; it is not a specific canonical action (draw_up is covered by required_preparation), so no clause.
