% hand adapter: out_paragraphs/art_11_par_1/astra/seed_2.pl  (Astra, reasoning minimal)
high_risk(S) :- high_risk_ai_system(S).
artificial_intelligence_system(S) :- high_risk_ai_system(S).
small_or_medium_enterprise(E) :- sme(E).
start_up(E) :- start_up(E).
provides_documentation(E, S) :- provider(E, S).
opts_for_simplified_submission(E, information(technical_documentation(S), annex_iv)) :-
    opts_for_simplified(E, S).
commission(commission).
notified_body(B) :- notified_body(B).
national_competent_authority(A) :- national_competent_authority(A).

obligation(_P, draw_up(S), before(entry)) :-
    required_drawing_up(before(technical_documentation(S), placing_on_market(S))).
obligation(_P, keep_up_to_date(S), ongoing) :- required_updating(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), ongoing) :-
    required_demonstration(technical_documentation(S, compliance(S, _))).
obligation(_P, provide_information(S, R), ongoing) :-
    required_information(provision(technical_documentation(S), R, _)).
obligation(_P, include_annex_iv(S), at_minimum) :-
    required_content(technical_documentation(S, minimum_element_set(annex_iv))).
permission(E, simplify_annex_iv(S)) :-
    permitted_simplified_submission(submission(E, technical_documentation(S), _)).
obligation(commission, establish(F), unconditional) :- must_establish(_C, F).
obligation(E, use_form(S, F), when_opted) :- must_use(E, F), F = form(_, technical_documentation(S)).
obligation(B, accept(_Doc, F), in_assessment) :- must_accept(B, F).
