% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d84b3bd63efa937da6ffab6764c2dcf598a23d449925577c125a0a62b13e1426
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred must_appoint/2, gloss('provider must appoint an authorised representative by written mandate before placing on market'), source('celex:32024R1689/oj#art_54').
:- pred must_enable/2, gloss('provider must enable authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_perform_tasks/2, gloss('authorised representative must perform tasks specified in mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide copy of mandate upon request'), source('celex:32024R1689/oj#art_54').
:- pred must_verify_technical_documentation/2, gloss('authorised representative must verify technical documentation and obligations fulfilled'), source('celex:32024R1689/oj#art_54').
:- pred must_keep_documentation/2, gloss('authorised representative must keep copy of technical documentation for 10 years'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_information/2, gloss('authorised representative must provide information and documentation upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred must_cooperate/2, gloss('authorised representative must cooperate with authorities upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers_addressing/2, gloss('mandate empowers authorised representative to be addressed by authorities'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_inform_termination/2, gloss('authorised representative must inform AI Office of termination and reasons'), source('celex:32024R1689/oj#art_54').
:- pred exempt_from_authorised_representative/1, gloss('provider exempt from authorised representative obligation'), source('celex:32024R1689/oj#art_54').
:- pred free_and_open_source_licence/1, gloss('released under licence allowing access, usage, modification, and distribution'), source('celex:32024R1689/oj#art_54').
:- pred parameters_publicly_available/1, gloss('model parameters including weights, architecture, and usage information are publicly available'), source('celex:32024R1689/oj#art_54').

must_appoint(P, authorised_representative(R)) :-
    provider(P),
    general_purpose_ai_model(M),
    downstream_provider(P),  % provider integrating or placing the model
    \+ established_in_union(P),
    placing_on_market(M).

must_enable(P, authorised_representative(R)) :-
    provider(P),
    authorised_representative(R),
    mandated_by(R, P).

must_perform_tasks(R, tasks_from_mandate(P)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P).

must_provide_mandate_copy(R, ai_office(Office)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    ai_office(Office),
    request(Office, mandate_copy).

must_verify_technical_documentation(R, provider(P)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    technical_documentation_for_annex_11(D),
    obligations_fulfilled(P, art_53),
    obligations_fulfilled(P, art_55).

must_keep_documentation(R, documentation_for(M)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    general_purpose_ai_model(M),
    technical_documentation_for_annex_11(D),
    placing_on_market(M),
    period(years(10), after(placing_on_market(M))).

must_provide_information(R, ai_office(Office)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    ai_office(Office),
    reasoned_request(Office, information),
    compliance_demonstration(chapter_5).

must_cooperate(R, authorities(Authorities)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    general_purpose_ai_model(M),
    member(Authority, Authorities),
    (ai_office(Authority); national_competent_authority(Authority)),
    reasoned_request(Authority, cooperation),
    action_on_model(Authority, M).

mandate_empowers_addressing(R, authorities(Authorities)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    member(Authority, Authorities),
    (ai_office(Authority); national_competent_authority(Authority)),
    compliance_issue(compliance_with_regulation).

must_terminate_mandate(R, provider(P)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    (contrary_to_obligations(P); reason_to_consider_contrary(R, P)).

must_inform_termination(R, ai_office(Office)) :-
    authorised_representative(R),
    must_terminate_mandate(R, provider(P)),
    ai_office(Office),
    termination_reasons(R, P).

exempt_from_authorised_representative(P) :-
    provider(P),
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    parameters_publicly_available(M),
    \+ systemic_risk(M).

provenance(must_appoint/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_addressing/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_from_authorised_representative/1, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').
