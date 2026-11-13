% Inputs
high_risk(S) :- high_risk_ai_system(S).
ai_system(S) :- high_risk_ai_system(S).
provider(P) :- provider(P, _).
places_on_market(P, S) :- provider(P, S), happens(placed_on_market(S), _).
puts_into_service(P, S) :- provider(P, S), happens(put_into_service(S), _).
small_medium_enterprise(E) :- sme(E).
start_up(E) :- start_up(E).
commission(commission).
notified_body(NB) :- notified_body(NB).
opts_simplified_manner(E, technical_documentation(S)) :- opts_for_simplified(E, S).
form_referred_to_in_article_eleven_one(commission_simplified_form).

% Queries
% required_technical_documentation/1 is deliberately not mapped: it has no bearer
% and no action, it only states that a high-risk system requires documentation.
% The duty to draw it up is expressed with a bearer by must_draw_up/2.
obligation(P, draw_up(S), _D) :- must_draw_up(P, technical_documentation(S)).
obligation(P, keep_up_to_date(S), _D) :- must_keep_up_to_date(P, technical_documentation(S)).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_manner(E, technical_documentation(S)).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(E, use_form(_S, F), _D) :- must_use(E, F).
obligation(NB, accept(_Doc, F), _D) :- must_accept(NB, form_conformity_assessment(F)).
