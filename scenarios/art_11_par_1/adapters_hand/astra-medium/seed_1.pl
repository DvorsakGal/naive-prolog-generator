% hand adapter: out_paragraphs/art_11_par_1/astra-medium/seed_1.pl  (Astra, reasoning medium)
high_risk_artificial_intelligence_system(S) :- high_risk_ai_system(S).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).
small_or_medium_sized_enterprise(E) :- sme(E).
start_up(E) :- start_up(E).
opts_for_simplified_documentation(E, technical_documentation(S)) :- opts_for_simplified(E, S).

obligation(_P, draw_up(S), before(entry)) :-
    required_pre_market_documentation(drawing_up(technical_documentation(S), _)).
obligation(_P, keep_up_to_date(S), ongoing) :- required_up_to_date_documentation(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), ongoing) :-
    required_compliance_demonstration(drawing_up(technical_documentation(S), _)).
obligation(_P, provide_information(S, R), ongoing) :-
    required_information_provision(provision(technical_documentation(S), R, _, _)).
obligation(_P, include_annex_iv(S), at_minimum) :-
    required_minimum_content(content(technical_documentation(S), element_set(annex_iv))).
permission(E, simplify_annex_iv(S)) :-
    permitted_simplified_documentation(provision(E, technical_documentation(S), _, _)).
obligation(commission, establish(F), unconditional) :- must_establish(_C, F).
% form_for(Form, What): the inner term is the form as named in must_establish.
obligation(E, use_form(S, F), when_opted) :- must_use(E, form_for(F, provision(technical_documentation(S), _, _))).
obligation(B, accept(_Doc, F), in_assessment) :- must_accept(B, form_for(F, _)).
