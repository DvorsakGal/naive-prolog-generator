% hand adapter: out_paragraphs/art_11_par_1/astra-medium/seed_2.pl  (Astra, reasoning medium)
artificial_intelligence_system(S) :- high_risk_ai_system(S).
high_risk(S) :- high_risk_ai_system(S).
technical_documentation(D) :- technical_documentation(_S, D).
documents_system(D, S) :- technical_documentation(S, D).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).
small_and_medium_sized_enterprise(E) :- sme(E).
start_up(E) :- start_up(E).
provides_documentation(E, D) :- provider(E, S), technical_documentation(S, D).
opts_for_simplified_provision(E, required_information(D, annex_iv)) :-
    opts_for_simplified(E, S), technical_documentation(S, D).

obligation(_P, draw_up(S), before(entry)) :- required_drafting(drafting(_D, before(placing_on_market(S)))).
obligation(_P, keep_up_to_date(_S), ongoing) :- required_updating(keeping_up_to_date(_D)).
obligation(_P, demonstrate_compliance(S), ongoing) :-
    required_compliance_demonstration(drafting(_D, demonstrates(compliance(S, _)))).
obligation(_P, provide_information(S, R), ongoing) :-
    required_information_provision(provision(_D, R, necessary_information(assessment(compliance(S, _))), _)).
obligation(_P, include_annex_iv(_S), at_minimum) :- required_minimum_content(content(_D, element_set(annex_iv))).
permission(E, simplify_annex_iv(_S)) :- permitted_simplified_provision(provision(E, _D, _)).
obligation(commission, establish(F), unconditional) :- must_establish(_C, F).
obligation(E, use_form(_S, F), when_opted) :- must_use(E, F).
obligation(B, accept(_Doc, F), in_assessment) :- must_accept(B, use(F, _)).
