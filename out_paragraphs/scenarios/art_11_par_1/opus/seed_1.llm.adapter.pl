% Inputs
high_risk_ai_system(S) :- high_risk_ai_system(S).
technical_documentation_of(D, S) :- technical_documentation(S, D).
provider_of(P, S) :- provider(P, S).
sme(P) :- sme(P).
opts_simplified_provision(P, S) :- opts_for_simplified(P, S).
commission(commission).
notified_body(B) :- notified_body(B).
conformity_assessment_of(B, S) :- assesses(B, S).

% Queries
obligation(P, draw_up(S), _D) :- must_draw_up(P, technical_documentation(S, _)).
obligation(_P, draw_up(S), _D) :- required_technical_documentation(S).
obligation(P, keep_up_to_date(S), _D) :- must_keep_up_to_date(P, technical_documentation(S)).
obligation(_P, include_annex_iv(_S), _D) :- must_contain(_Doc, minimum(elements(annex_iv))).
permission(P, simplify_annex_iv(_S)) :- permitted_simplified_technical_documentation(P).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(P, use_form(S, _F), _D) :- must_use(P, simplified_technical_documentation_form(S)).
obligation(B, accept(_Doc, _F), _D) :- must_accept(B, _X).

% objective_demonstrate_compliance/1 and objective_provide_assessment_information/1
% only label purposes of the documentation, so they are not mapped to obligation.
