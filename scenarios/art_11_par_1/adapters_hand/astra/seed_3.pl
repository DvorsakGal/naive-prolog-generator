% hand adapter: out_paragraphs/art_11_par_1/astra/seed_3.pl  (Astra, reasoning minimal)
high_risk(S) :- high_risk_ai_system(S).
ai_system(S) :- high_risk_ai_system(S).
documents_system(D, S) :- technical_documentation(S, D).
small_or_medium_sized_enterprise(E) :- sme(E).
national_competent_authority(A) :- national_competent_authority(A).
notified_body(B) :- notified_body(B).
opts_for_simplified_provision(E, annex_iv_information(D)) :-
    opts_for_simplified(E, S), technical_documentation(S, D).

obligation(_P, draw_up(S), before(entry)) :- required_drawing_up(before(_D, placing_on_market(S))).
obligation(_P, keep_up_to_date(_S), ongoing) :- required_updating(_D).
obligation(_P, demonstrate_compliance(S), ongoing) :-
    required_demonstration(drawing_up(_D, compliance(S, _))).
obligation(_P, provide_information(S, R), ongoing) :-
    required_information(documentation_information(_D, recipient(R), necessary_for(assessment(compliance(S, _))), _)).
obligation(_P, include_annex_iv(_S), at_minimum) :-
    required_inclusion(documentation_content(_D, minimum(element_set(annex_iv)))).
permission(E, simplify_annex_iv(_S)) :-
    permitted_simplified_provision(provision(E, annex_iv_element_set(_D), simplified_manner)).
obligation(commission, establish(F), unconditional) :- must_establish(_C, F).
% use and accept both name the form as the inner term of form(Form, What); establish does not.
obligation(E, use_form(_S, F), when_opted) :- must_use(E, form(F, _)).
obligation(B, accept(_Doc, F), in_assessment) :- must_accept(B, form(F, _)).
