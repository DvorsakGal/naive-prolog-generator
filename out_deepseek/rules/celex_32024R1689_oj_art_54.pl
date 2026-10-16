% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 00653fb86957a6e924d408d64f86e1025d77c8e935a9ba9a5207e159b9b48c9b
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred must_appoint_authorised_representative/2, gloss('provider must appoint authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred must_enable_authorised_representative/2, gloss('provider must enable authorised representative to perform tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_perform_mandate_tasks/2, gloss('authorised representative must perform mandate tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide mandate copy to AI Office'), source('celex:32024R1689/oj#art_54').
:- pred must_verify_documentation/2, gloss('authorised representative must verify technical documentation and obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_keep_documentation/2, gloss('authorised representative must keep technical documentation and contact details'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_information/2, gloss('authorised representative must provide information and documentation'), source('celex:32024R1689/oj#art_54').
:- pred must_cooperate/2, gloss('authorised representative must cooperate with authorities'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_inform_termination/2, gloss('authorised representative must inform AI Office of mandate termination'), source('celex:32024R1689/oj#art_54').
:- pred exempt_open_source_model/1, gloss('general-purpose AI model exempt from authorised representative obligation'), source('celex:32024R1689/oj#art_54').

% Paragraph 1
must_appoint_authorised_representative(Provider, authorised_representative(Representative)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    placing_on_market(Model),
    established_in_third_country(Provider),
    authorised_representative(Representative),
    established_in_union(Representative),
    \+ exempt_open_source_model(Model).

% Paragraph 2
must_enable_authorised_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    appointed_by(Representative, Provider).

% Paragraph 3
must_perform_mandate_tasks(Representative, mandate_tasks(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider).

must_provide_mandate_copy(Representative, mandate_copy(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    ai_office(AO).

must_verify_documentation(Representative, verification(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider).

must_keep_documentation(Representative, keep(documentation(Provider))) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    general_purpose_ai_model(Model),
    placed_on_market(Model).

must_provide_information(Representative, provide(information(Provider))) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    ai_office(AO).

must_cooperate(Representative, cooperate(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    ai_office(AO).

% Paragraph 4
must_be_addressable(Representative, addressable(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider).

% Paragraph 5
must_terminate_mandate(Representative, terminate(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    acting_contrary_to_obligations(Provider).

must_inform_termination(Representative, inform_termination(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    terminated_mandate(Representative, Provider),
    ai_office(AO).

% Paragraph 6
exempt_open_source_model(Model) :-
    general_purpose_ai_model(Model),
    released_under_free_open_source_licence(Model),
    parameters_publicly_available(Model),
    \+ presents_systemic_risks(Model).

% Provenance
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandate_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_54').
provenance(must_be_addressable/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_open_source_model/1, 'celex:32024R1689/oj#art_54').

% References
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
