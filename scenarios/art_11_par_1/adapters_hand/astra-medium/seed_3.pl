% hand adapter: out_paragraphs/art_11_par_1/astra-medium/seed_3.pl  (Astra, reasoning medium)
artificial_intelligence_system(S) :- high_risk_ai_system(S).
high_risk(S) :- high_risk_ai_system(S).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).
small_or_medium_sized_enterprise(E) :- sme(E).
commission(commission).
opts_for_simplified_provision(E, information(technical_documentation(S), annex(4))) :- opts_for_simplified(E, S).

obligation(_P, draw_up(S), before(entry)) :- required_preparation(preparation(technical_documentation(S), _)).
obligation(_P, keep_up_to_date(S), ongoing) :- required_up_to_date_documentation(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), ongoing) :- required_demonstration(demonstration(technical_documentation(S), _)).
obligation(_P, provide_information(S, R), ongoing) :- required_information(provision(technical_documentation(S), R, _)).
obligation(_P, include_annex_iv(S), at_minimum) :- required_minimum_content(content(technical_documentation(S), _)).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, technical_documentation(S), _)).
obligation(commission, establish(F), unconditional) :- must_establish(_C, F).
obligation(E, use_form(S, F), when_opted) :- must_use(E, form_for(F, technical_documentation(S))).
obligation(B, accept(_Doc, F), in_assessment) :- must_accept(B, form_for(F, _)).
