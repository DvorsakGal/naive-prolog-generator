% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : f2a10eea31eaee3a7fc7732348a0c4dd6dfef039d26d3ea3c2ae6d147b5e7512
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred must_appoint_authorised_representative/2, gloss('provider established in third country must appoint authorised representative in Union before placing general-purpose AI model on market'), source('celex:32024R1689/oj#art_54').
:- pred must_enable_tasks/2, gloss('provider must enable authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_perform_tasks/2, gloss('authorised representative must perform tasks specified in mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide copy of mandate to AI Office upon request'), source('celex:32024R1689/oj#art_54').
:- pred must_verify_technical_documentation/2, gloss('authorised representative must verify technical documentation drawn up and obligations fulfilled'), source('celex:32024R1689/oj#art_54').
:- pred must_keep_technical_documentation/2, gloss('authorised representative must keep copy of technical documentation for 10 years'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_information/2, gloss('authorised representative must provide information and documentation upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred must_cooperate_with_authorities/2, gloss('authorised representative must cooperate with AI Office and competent authorities upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers_addressed/1, gloss('mandate empowers authorised representative to be addressed by AI Office or competent authorities'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_inform_termination/2, gloss('authorised representative must inform AI Office of termination and reasons'), source('celex:32024R1689/oj#art_54').
:- pred exempt_free_open_source/1, gloss('general-purpose AI model released under free and open-source licence with publicly available parameters exempt from authorised representative obligation'), source('celex:32024R1689/oj#art_54').

established_in_third_country(P) :-
    provider(P),
    \+ established_in_union(P).

general_purpose_ai_model_provider(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

must_appoint_authorised_representative(P, R) :-
    general_purpose_ai_model_provider(P, M),
    established_in_third_country(P),
    \+ exempt_free_open_source(M),
    before_placing_on_market(M),
    authorised_representative(R),
    established_in_union(R).

must_enable_tasks(P, R) :-
    general_purpose_ai_model_provider(P, M),
    authorised_representative(R),
    \+ exempt_free_open_source(M).

must_perform_tasks(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M).

must_provide_mandate_copy(R, ai_office) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M).

must_verify_technical_documentation(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M),
    technical_documentation(M),
    drawn_up(M).

must_keep_technical_documentation(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M),
    technical_documentation(M),
    retention_period(years(10), after(placing_on_market(M))).

must_provide_information(R, information_and_documentation(M)) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M),
    reasoned_request(_, M).

must_cooperate_with_authorities(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M),
    reasoned_request(_, M).

mandate_empowers_addressed(R) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M).

must_terminate_mandate(R, P) :-
    authorised_representative(R),
    general_purpose_ai_model_provider(P, M),
    \+ exempt_free_open_source(M),
    acts_contrary_to_obligations(P).

must_inform_termination(R, ai_office) :-
    authorised_representative(R),
    general_purpose_ai_model_provider(P, M),
    \+ exempt_free_open_source(M),
    acts_contrary_to_obligations(P).

exempt_free_open_source(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    publicly_available(parameters(M)),
    \+ systemic_risk_present(M).

acts_contrary_to_obligations(P) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ meets_requirements(P, M).

provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_addressed/1, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_free_open_source/1, 'celex:32024R1689/oj#art_54').
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_54').
provenance(general_purpose_ai_model_provider/2, 'celex:32024R1689/oj#art_54').
provenance(acts_contrary_to_obligations/1, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').
