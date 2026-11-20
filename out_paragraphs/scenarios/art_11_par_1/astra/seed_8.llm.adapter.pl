% INPUT clauses
ai_system_applies(S) :- high_risk_ai_system(S).
high_risk(S) :- high_risk_ai_system(S).
small_and_medium_enterprise_applies(E) :- sme(E).
start_up(E) :- start_up(E).
commission_applies(commission).
notified_body_applies(NB) :- notified_body(NB).
opts_for(E, simplified_submission(technical_documentation(S), information_required(annex_iv))) :- opts_for_simplified(E, S).

% required_technical_documentation/1 only states the precondition that a high-risk AI system needs
% technical documentation; it is not itself a canonical action (the specific duties are covered
% by required_preparation, required_updating, etc.), so no query clause is written for it.

% QUERY clauses
obligation(_P, draw_up(S), _D) :- required_preparation(technical_documentation(S, _)).
obligation(_P, keep_up_to_date(S), _D) :- required_updating(technical_documentation(S, _)).
obligation(_P, demonstrate_compliance(S), _D) :- required_demonstration(technical_documentation(S, _)).
obligation(_P, provide_information(S, national_competent_authority), _D) :- required_information(technical_documentation(S, information(recipient(national_competent_authority), _, _))).
obligation(_P, provide_information(S, notified_body), _D) :- required_information(technical_documentation(S, information(recipient(notified_body), _, _))).
obligation(_P, include_annex_iv(S), _D) :- required_content(technical_documentation(S, _)).
obligation(E, use_form(S, article_11_1), _D) :- must_use(E, form(article_11_1, simplified_submission(technical_documentation(S), _))).
obligation(C, establish(F), _D) :- must_establish(C, F).
obligation(NB, accept(_Doc, F), _D) :- must_accept(NB, F).
permission(E, simplify_annex_iv(S)) :- permitted_simplified_submission(submission(E, technical_documentation(S), _)).
