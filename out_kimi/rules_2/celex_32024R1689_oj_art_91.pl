% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 0bbfc11fc1c1a1c5ba7cb8ee6e8a2f112fd5d273d6f96597c6f7eda0a994ec7d
% cached     : False
% title      : Power to request documentation and information
:- pred may_request_documentation/2, gloss('Commission may request documentation drawn up by provider'), source('celex:32024R1689/oj#art_91').
:- pred may_request_additional_information/2, gloss('Commission may request additional information for compliance assessment'), source('celex:32024R1689/oj#art_91').
:- pred may_initiate_structured_dialogue_before_request/2, gloss('AI Office may initiate structured dialogue before sending request for information'), source('celex:32024R1689/oj#art_91').
:- pred may_issue_request_for_information/2, gloss('Commission may issue request for information upon substantiated request from scientific panel'), source('celex:32024R1689/oj#art_91').
:- pred request_for_information_specified/1, gloss('request for information contains required elements'), source('celex:32024R1689/oj#art_91').
:- pred must_supply_information/2, gloss('provider or representative must supply requested information'), source('celex:32024R1689/oj#art_91').
:- pred representative_of_provider/2, gloss('representative of the provider'), source('celex:32024R1689/oj#art_91').
:- pred authorised_representative_by_law_or_statutes/2, gloss('person authorised to represent by law or statutes'), source('celex:32024R1689/oj#art_91').
:- pred lawyer_duly_authorised/2, gloss('lawyer duly authorised to act on behalf of client'), source('celex:32024R1689/oj#art_91').
:- pred remains_fully_responsible/2, gloss('client remains fully responsible for incomplete incorrect or misleading information'), source('celex:32024R1689/oj#art_91').

may_request_documentation(commission, provider_of_general_purpose_ai_model(P)) :-
    general_purpose_ai_model_provider(P).

may_request_additional_information(commission, provider_of_general_purpose_ai_model(P)) :-
    general_purpose_ai_model_provider(P).

may_initiate_dialogue(ai_office, provider_of_general_purpose_ai_model(P)) :-
    general_purpose_ai_model_provider(P).

may_issue_request_for_information(commission, provider_of_general_purpose_ai_model(P)) :-
    general_purpose_ai_model_provider(P),
    duly_substantiated_request(scientific_panel),
    access_necessary_and_proportionate_for_tasks(scientific_panel, art_68_par_2).

request_for_information_specified(request(R)) :-
    states_legal_basis(R),
    states_purpose(R),
    specifies_information_required(R),
    sets_period_for_provision(R, _Period),
    indicates_fines_for_incorrect_incomplete_misleading_information(R, art_101).

must_supply_information(Provider, request(R)) :-
    (provider_of_general_purpose_ai_model(Provider) ; representative_of_provider(Representative, Provider)),
    request_for_information_specified(R).

must_supply_information(AuthorisedPerson, request(R)) :-
    legal_person_or_company_or_firm_or_no_legal_personality(Provider),
    authorised_representative_by_law_or_statutes(AuthorisedPerson, Provider),
    request_for_information_specified(R).

must_supply_information(Lawyer, request(R)) :-
    lawyer_duly_authorised(Lawyer, Client),
    request_for_information_specified(R).

remains_fully_responsible(Client, information_supplied) :-
    lawyer_duly_authorised(_Lawyer, Client),
    (incomplete(information_supplied) ; incorrect(information_supplied) ; misleading(information_supplied)).

provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_additional_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_for_information/2, 'celex:32024R1689/oj#art_91').
provenance(request_for_information_specified/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(representative_of_provider/2, 'celex:32024R1689/oj#art_91').
provenance(authorised_representative_by_law_or_statutes/2, 'celex:32024R1689/oj#art_91').
provenance(lawyer_duly_authorised/2, 'celex:32024R1689/oj#art_91').
provenance(remains_fully_responsible/2, 'celex:32024R1689/oj#art_91').

references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
