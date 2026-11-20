% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
artificial_intelligence_system(S) :- high_risk_ai_system(S).
technical_documentation_of(D, S) :- technical_documentation(S, D).
small_or_medium_enterprise(E) :- sme(E).
provides_documentation(E, D) :- provider(E, S), technical_documentation(S, D).
opts_for_simplified_provision(E, provision(D, information_required(annex(iv)))) :- opts_for_simplified(E, S), technical_documentation(S, D).
commission(commission).
notified_body(NB) :- notified_body(NB).
national_competent_authority(A) :- national_competent_authority(A).

% required_technical_documentation/1 only states that a high-risk system needs technical documentation (a precondition for the specific duties); it is not itself a duty matching one canonical action, so it has no query clause.

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_drawing_up(before(_Doc, placing_on_market(S))).
obligation(_P, draw_up(S), _D) :- required_drawing_up(before(_Doc, putting_into_service(S))).
obligation(_P, keep_up_to_date(_S), _D) :- required_updating(keeping_up_to_date(_Doc)).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(documentation(_Doc, compliance(S, requirement(chapter(3))))).
obligation(_P, provide_information(S, R), _D) :- required_information(documentation(_Doc, recipient(R), necessary_information(assessment(compliance(S, requirement(chapter(3)))), clear_and_comprehensive_form))).
obligation(_P, include_annex_iv(_S), _D) :- required_content(documentation(_Doc, minimum(element_set(annex(iv))))).
permission(E, simplify_annex_iv(_S)) :- permitted_simplified_provision(provision(E, _Doc, element_set(annex(iv)))).
obligation(E, use_form(_S, _F), _D) :- must_use(E, form(reference(article(11, 1)), provision(_Doc, information_required(annex(iv))))).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(B, accept(_Doc, _F), _D) :- must_accept(B, form(reference(article(11, 1)), purpose(conformity_assessment))).
