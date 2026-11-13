% hand adapter: out_paragraphs/art_11_par_1/astra/seed_1.pl  (Astra, reasoning minimal)
% Inputs follow the mapping used in art_11_par_1/raw/adhoc/batchcmp.pl (b1s1).
ai_system_applies(S) :- high_risk_ai_system(S).
high_risk(S) :- high_risk_ai_system(S).
documents_system(D, S) :- technical_documentation(S, D).
small_or_medium_enterprise_applies(E) :- sme(E).
start_up_applies(E) :- start_up(E).
provides_documentation(E, D) :- provider(E, S), technical_documentation(S, D).
opts_for(E, provision(D, information_required(annex_iv), simplified_manner)) :-
    opts_for_simplified(E, S), technical_documentation(S, D).
commission_applies(commission).
national_competent_authority_applies(A) :- national_competent_authority(A).
notified_body_applies(B) :- notified_body(B).

% The module has no bearer: _P stays unbound. Several heads carry the documentation,
% not the system; where the system is not recoverable the query keeps _S unbound.
obligation(_P, draw_up(S), before(entry)) :-
    required_preparation(before(technical_documentation(_D), placing_on_market(S))).
obligation(_P, keep_up_to_date(_S), ongoing) :-
    required_updating(technical_documentation(_D, kept_up_to_date)).
obligation(_P, demonstrate_compliance(S), ongoing) :-
    required_demonstration(compliance(_D, S, _)).
obligation(_P, provide_information(S, R), ongoing) :-
    required_information(provision(_D, R, necessary_information(assess_compliance(S, _), _))).
obligation(_P, include_annex_iv(_S), at_minimum) :-
    required_minimum_content(technical_documentation(_D, element_set(annex_iv))).
permission(E, simplify_annex_iv(_S)) :-
    permitted_simplified_provision(provision(E, _D, element_set(annex_iv), simplified_manner)).
obligation(commission, establish(F), unconditional) :- must_establish(_C, F).
obligation(E, use_form(_S, F), when_opted) :- must_use(E, F).
obligation(B, accept(_Doc, F), in_assessment) :- must_accept(B, F).
