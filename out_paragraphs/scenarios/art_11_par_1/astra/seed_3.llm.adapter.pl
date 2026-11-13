% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
ai_system(S) :- high_risk_ai_system(S).
documents_system(D, S) :- technical_documentation(S, D).
small_or_medium_sized_enterprise(E) :- sme(E).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).
opts_for_simplified_provision(E, annex_iv_information(D)) :- opts_for_simplified(E, S), technical_documentation(S, D).

% QUERY clauses
obligation(_P, draw_up(_S), _D) :- required_drawing_up(before(_Doc, placing_on_market(_Sys))).
obligation(_P, draw_up(_S), _D) :- required_drawing_up(before(_Doc, putting_into_service(_Sys))).
obligation(_P, keep_up_to_date(_S), _D) :- required_updating(_Doc).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(drawing_up(_Doc, compliance(S, _R))).
obligation(_P, provide_information(S, Recipient), _D) :- required_information(documentation_information(_Doc, recipient(Recipient), necessary_for(assessment(compliance(S, _R))), _F)).
obligation(_P, include_annex_iv(_S), _D) :- required_inclusion(documentation_content(_Doc, _M)).
permission(E, simplify_annex_iv(_S)) :- permitted_simplified_provision(provision(E, _Elems, _M)).
obligation(E, use_form(_S, F), _D) :- must_use(E, form(F, _P)).
obligation(P, establish(F), _D) :- must_establish(P, F).
obligation(B, accept(_Doc, F), _D) :- must_accept(B, form(F, _P)).
