% INPUT clauses
high_risk(S) :- high_risk_ai_system(S).
artificial_intelligence_system(S) :- high_risk_ai_system(S).
small_or_medium_enterprise(E) :- sme(E).
start_up(E) :- start_up(E).
provides_documentation(E, S) :- provider(E, S).
opts_for_simplified_submission(E, information(technical_documentation(S), annex_iv)) :- opts_for_simplified(E, S).
notified_body(B) :- notified_body(B).
national_competent_authority(A) :- national_competent_authority(A).
commission(commission).

% required_technical_documentation/1 is only a precondition (the system is a high-risk AI system
% for which documentation is required); it is not itself a duty with a canonical action, so no query clause.

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_drawing_up(before(technical_documentation(S), placing_on_market(S))).
obligation(_P, draw_up(S), _D) :- required_drawing_up(before(technical_documentation(S), putting_into_service(S))).
obligation(_P, keep_up_to_date(S), _D) :- required_updating(technical_documentation(S)).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(technical_documentation(S, _)).
obligation(_P, provide_information(S, R), _D) :- required_information(provision(technical_documentation(S), R, _)).
obligation(_P, include_annex_iv(S), _D) :- required_content(technical_documentation(S, _)).
obligation(E, use_form(S, article_11_1), _D) :- must_use(E, form(article_11_1, technical_documentation(S))).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(B, accept(_Doc, article_11_1), _D) :- must_accept(B, form(article_11_1, purpose(conformity_assessment))).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_submission(submission(E, technical_documentation(S), element_set(annex_iv))).
