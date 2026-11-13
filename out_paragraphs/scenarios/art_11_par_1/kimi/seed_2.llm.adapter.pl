% INPUT clauses
high_risk_ai_system(S) :- high_risk_ai_system(S).
sme(E) :- sme(E).
start_up(E) :- start_up(E).
notified_body(N) :- notified_body(N).
national_competent_authority(A) :- national_competent_authority(A).
placed_on_market(S) :- happens(placed_on_market(S), _).
put_into_service(S) :- happens(put_into_service(S), _).

% Ground facts for entities the module needs and the tests never supply
commission(commission).
chapter_3(chapter_3_requirements).
annex_iv(annex_iv).
conformity_assessment(conformity_assessment).
article_11_1_form(article_11_1_form).

% QUERY clauses
obligation(P, draw_up(S), _D) :- must_draw_up(P, technical_documentation(S)).
obligation(P, keep_up_to_date(S), _D) :- must_keep_up_to_date(P, technical_documentation(S)).
obligation(_P, include_annex_iv(S), _D) :- must_contain(technical_documentation(S), _).
obligation(P, establish(Form), _D) :- must_establish(P, Form).
obligation(P, use_form(_S, Form), _D) :- must_use(P, Form).
obligation(P, accept(_Doc, Form), _D) :- must_accept(P, Form).
permission(_E, simplify_annex_iv(S)) :- permitted_simplified_technical_documentation(S).

% demonstrates_compliance/2 and provides_information/3 are purpose labels, not duties: not mapped.
