% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
sme(E) :- sme(E).
startup(E) :- start_up(E).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).

% QUERY clauses
obligation(_P, draw_up(S), _D) :- must_draw_up_technical_documentation_before(S, _E).
obligation(_P, keep_up_to_date(S), _D) :- must_keep_technical_documentation_up_to_date(S).
obligation(_P, demonstrate_compliance(S), _D) :- must_demonstrate_compliance_with_chapter_3(S).
obligation(_P, provide_information(S, _R), _D) :- must_provide_information_to_authorities_and_bodies(S).
obligation(_P, include_annex_iv(S), _D) :- must_contain_annex_iv_elements(S).
obligation(E, use_form(_S, Form), _D) :- must_use_simplified_form(E, Form).
obligation(C, establish(Form), _D) :- must_establish_simplified_form(C, Form).
obligation(B, accept(_Doc, Form), _D) :- must_accept_simplified_form(B, Form).

permission(E, simplify_annex_iv(_S)) :- permitted_simplified_documentation(E).
