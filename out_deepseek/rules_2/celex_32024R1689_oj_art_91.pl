% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 3e487bb33630308b0740277233e8d58ff39773dc454b569c8903909b729393f8
% cached     : False
% title      : Power to request documentation and information
:- pred must_supply_requested_information/2, gloss('entity must supply information requested by Commission'), source('celex:32024R1689/oj#art_91').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_91').
:- pred may_request_information_from_provider/2, gloss('Commission may request information from provider'), source('celex:32024R1689/oj#art_91').
:- pred may_request_information_for_scientific_panel/2, gloss('Commission may request information for scientific panel'), source('celex:32024R1689/oj#art_91').
:- pred request_for_information/1, gloss('request for information under Article 91'), source('celex:32024R1689/oj#art_91').
:- pred request_states_legal_basis/1, gloss('request states legal basis and purpose'), source('celex:32024R1689/oj#art_91').
:- pred request_specifies_information_required/1, gloss('request specifies what information is required'), source('celex:32024R1689/oj#art_91').
:- pred request_sets_period/1, gloss('request sets period for providing information'), source('celex:32024R1689/oj#art_91').
:- pred request_indicates_fines/1, gloss('request indicates fines for incorrect or misleading information'), source('celex:32024R1689/oj#art_91').
:- pred authorised_to_represent/2, gloss('person authorised to represent legal person'), source('celex:32024R1689/oj#art_91').
:- pred lawyer_duly_authorised/1, gloss('lawyer duly authorised to act'), source('celex:32024R1689/oj#art_91').

% Article 91(1) – Commission may request documentation or additional information
may_request_information_from_provider(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_for_information(Request),
    (   documentation_drawn_up_under(Request, 'celex:32024R1689/oj#art_53')
    ;   documentation_drawn_up_under(Request, 'celex:32024R1689/oj#art_55')
    ;   additional_information_necessary_for_compliance_assessment(Request, 'celex:32024R1689/oj')
    ).

% Article 91(2) – AI Office may initiate structured dialogue before request
may_initiate_structured_dialogue(AI_Office, Provider) :-
    ai_office(AI_Office),
    provider(Provider),
    general_purpose_ai_model(Provider).

% Article 91(3) – Commission may issue request upon substantiated request from scientific panel
may_request_information_for_scientific_panel(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_from_scientific_panel(Request),
    access_necessary_and_proportionate(Request, 'celex:32024R1689/oj#art_68/par_2').

% Article 91(4) – Requirements for the request for information
request_states_legal_basis(Request) :-
    request_for_information(Request).

request_specifies_information_required(Request) :-
    request_for_information(Request).

request_sets_period(Request) :-
    request_for_information(Request).

request_indicates_fines(Request) :-
    request_for_information(Request),
    fines_provided_for_in('celex:32024R1689/oj#art_101').

% Article 91(5) – Obligation to supply information
must_supply_requested_information(Provider, Request) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_for_information(Request).

must_supply_requested_information(Representative, Request) :-
    authorised_representative(Representative),
    request_for_information(Request).

must_supply_requested_information(Person, Request) :-
    authorised_to_represent(Person, Provider),
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_for_information(Request).

must_supply_requested_information(Lawyer, Request) :-
    lawyer_duly_authorised(Lawyer),
    request_for_information(Request).

% Provenance
provenance(may_request_information_from_provider/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information_for_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(request_states_legal_basis/1, 'celex:32024R1689/oj#art_91').
provenance(request_specifies_information_required/1, 'celex:32024R1689/oj#art_91').
provenance(request_sets_period/1, 'celex:32024R1689/oj#art_91').
provenance(request_indicates_fines/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_91').

% References
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
