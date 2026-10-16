% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 7e06da3069527bb32185826ea40b7c755b870ea2d26dc62df0f5df21f743aab8
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred must_appoint_authorised_representative/2, gloss('provider must appoint authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred must_enable_representative/2, gloss('provider must enable authorised representative to perform tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_perform_mandate_tasks/1, gloss('authorised representative must perform tasks in mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide mandate copy upon request'), source('celex:32024R1689/oj#art_54').
:- pred must_verify_documentation/2, gloss('authorised representative must verify technical documentation and obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_keep_documentation/2, gloss('authorised representative must keep documentation and contact details'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_information/2, gloss('authorised representative must provide information upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred must_cooperate/2, gloss('authorised representative must cooperate with authorities'), source('celex:32024R1689/oj#art_54').
:- pred must_accept_address/1, gloss('authorised representative must accept being addressed by authorities'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate mandate if provider acts contrary'), source('celex:32024R1689/oj#art_54').
:- pred must_inform_termination/2, gloss('authorised representative must inform AI Office of termination'), source('celex:32024R1689/oj#art_54').
:- pred open_source_exception_art_54_applies/1, gloss('exception for open-source models without systemic risk'), source('celex:32024R1689/oj#art_54').

must_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    established_in_third_country(Provider),
    authorised_representative(Representative),
    placing_on_market(Model).

must_enable_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    must_appoint_authorised_representative(Provider, Representative).

must_perform_mandate_tasks(Representative) :-
    authorised_representative(Representative).

must_provide_mandate_copy(Representative, ai_office) :-
    authorised_representative(Representative),
    ai_office(AO).

must_verify_documentation(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider).

must_keep_documentation(Representative, Model) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model),
    placing_on_market(Model).

must_provide_information(Representative, ai_office) :-
    authorised_representative(Representative),
    ai_office(AO).

must_cooperate(Representative, Authority) :-
    authorised_representative(Representative),
    (ai_office(Authority); national_competent_authority(Authority)).

must_accept_address(Representative) :-
    authorised_representative(Representative).

must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider).

must_inform_termination(Representative, ai_office) :-
    authorised_representative(Representative),
    ai_office(AO).

open_source_exception_art_54_applies(Model) :-
    general_purpose_ai_model(Model),
    free_and_open_source_licence(Model),
    parameters_publicly_available(Model),
    \+ systemic_risk_classification_applies(Model).

provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandate_tasks/1, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_54').
provenance(must_accept_address/1, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(open_source_exception_art_54_applies/1, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
