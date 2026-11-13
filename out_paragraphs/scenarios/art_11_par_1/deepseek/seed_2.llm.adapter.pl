% Input clauses for module inputs
high_risk_ai_system(S) :- high_risk_ai_system(S).
placed_on_market(S) :- happens(placed_on_market(S), _).
put_into_service(S) :- happens(put_into_service(S), _).
sme(E) :- sme(E).
start_up(E) :- start_up(E).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).

% Query clauses
obligation(_P, draw_up(S), _D) :- must_draw_up_technical_documentation(S, _).
obligation(_P, demonstrate_compliance(S), _D) :- must_demonstrate_compliance(_, S).

% must_keep_up_to_date/1 carries only the documentation, not the system: leave the system unbound.
obligation(_P, keep_up_to_date(_S), _D) :- must_keep_up_to_date(_).

% must_provide_information/2: second argument is the module's information term, not a recipient; system is not exposed.
obligation(_P, provide_information(_S, _R), _D) :- must_provide_information(_, _).

% must_contain_minimum_elements/1 carries only the documentation: system unbound.
obligation(_P, include_annex_iv(_S), _D) :- must_contain_minimum_elements(_).

% Commission duty to establish the form.
obligation(_P, establish(_F), _D) :- must_establish_simplified_form(_).

% must_use_simplified_form/1 carries the entity only: system and form unbound.
obligation(E, use_form(_S, _F), _D) :- must_use_simplified_form(E).

% Notified body duty to accept the form.
obligation(B, accept(_Doc, _F), _D) :- must_accept_simplified_form(B).

permission(E, simplify_annex_iv(_)) :- permitted_simplified_manner(E).
