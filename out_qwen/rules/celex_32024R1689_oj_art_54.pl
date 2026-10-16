% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0d172c6f01722a1608f410dcc97f5228dce25d2b7c8cafea72178bc3bedff92d
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred must_appoint_authorised_representative(Provider, Model), gloss('provider established in third country must appoint EU authorised representative before placing model on market'), source('celex:32024R1689/oj#art_54').
:- pred must_enable_authorised_representative(Provider, Representative), gloss('provider must enable authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_perform_mandated_tasks(Representative, Provider), gloss('authorised representative must perform tasks specified in mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_mandate_copy(Representative, Office), gloss('authorised representative must provide copy of mandate to AI Office upon request'), source('celex:32024R1689/oj#art_54').
:- pred must_verify_compliance(Representative, Model), gloss('authorised representative must verify technical documentation and obligations fulfilled'), source('celex:32024R1689/oj#art_54').
:- pred must_keep_technical_documentation(Representative, Model), gloss('authorised representative must keep technical documentation at disposal of authorities for 10 years'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_compliance_information(Representative, Office), gloss('authorised representative must provide information to demonstrate compliance upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred must_cooperate_with_authorities(Representative, Authority), gloss('authorised representative must cooperate with AI Office and competent authorities upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers_addressing(Representative, Model), gloss('mandate empowers authorised representative to be addressed by authorities on compliance issues'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate_mandate(Representative, Provider), gloss('authorised representative must terminate mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_inform_termination(Representative, Office), gloss('authorised representative must inform AI Office immediately about mandate termination and reasons'), source('celex:32024R1689/oj#art_54').
:- pred exempt_authorised_representative_obligation(Model), gloss('obligation to appoint authorised representative does not apply to open-source models without systemic risk'), source('celex:32024R1689/oj#art_54').
:- pred free_and_open_source_licence(Model), gloss('model released under licence allowing access, usage, modification and distribution'), source('celex:32024R1689/oj#art_54').
:- pred parameters_publicly_available(Model), gloss('parameters, weights, architecture and usage information are made publicly available'), source('celex:32024R1689/oj#art_54').
:- pred established_in_third_country(Provider), gloss('provider is established outside the Union'), source('celex:32024R1689/oj#art_54').

must_appoint_authorised_representative(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    established_in_third_country(P),
    \+ exempt_authorised_representative_obligation(M),
    before_placing_on_market(M).

must_enable_authorised_representative(P, R) :-
    provider(P),
    authorised_representative(R),
    general_purpose_ai_model(_M).

must_perform_mandated_tasks(R, P) :-
    authorised_representative(R),
    provider(P).

must_provide_mandate_copy(R, O) :-
    authorised_representative(R),
    ai_office(O).

must_verify_compliance(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M).

must_keep_technical_documentation(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    after_placing_on_market(M, years(10)).

must_provide_compliance_information(R, O) :-
    authorised_representative(R),
    ai_office(O).

must_cooperate_with_authorities(R, A) :-
    authorised_representative(R),
    national_competent_authority(A).

must_cooperate_with_authorities(R, A) :-
    authorised_representative(R),
    ai_office(A).

mandate_empowers_addressing(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M).

must_terminate_mandate(R, P) :-
    authorised_representative(R),
    provider(P),
    acts_contrary_to_obligations(P).

must_inform_termination(R, O) :-
    authorised_representative(R),
    ai_office(O).

exempt_authorised_representative_obligation(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    parameters_publicly_available(M),
    \+ systemic_risk(M).

provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandated_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_compliance_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_addressing/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_54').
provenance(parameters_publicly_available/1, 'celex:32024R1689/oj#art_54').
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
