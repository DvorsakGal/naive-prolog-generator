% Input clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
sme(E) :- sme(E).
startup(E) :- start_up(E).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(N) :- notified_body(N).
placed_on_market(S) :- happens(placed_on_market(S), _).
put_into_service(S) :- happens(put_into_service(S), _).
opts_for_simplified_manner(E) :- opts_for_simplified(E, _).

% Query clauses
obligation(_P, keep_up_to_date(S), _D) :- must_keep_technical_documentation_up_to_date(S).
obligation(_P, demonstrate_compliance(S), _D) :- must_demonstrate_compliance_with_chapter_3(S).
obligation(_P, include_annex_iv(S), _D) :- must_contain_annex_iv_elements(S).
obligation(_P, draw_up(S), _D) :- must_draw_up_technical_documentation_before(S, _).
obligation(_P, provide_information(S, _R), _D) :- must_provide_information_to_authorities(S).
obligation(_P, accept(_Doc, Form), _D) :- must_accept_simplified_form(_, Form).
obligation(_P, establish(Form), _D) :- must_establish_simplified_form(_, Form).
obligation(_P, use_form(_S, Form), _D) :- must_use_simplified_form(_, Form).

permission(E, simplify_annex_iv(_S)) :- permitted_simplified_documentation(E).
