% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 893ea0dd066a7984e09e7449cc53cd6f8fb634bb14c7bebc85afbfc2520e8f7b
% cached     : False
% title      : Power to request documentation and information
:- pred permitted_request_documentation(Actor, Target), gloss('Actor is permitted to request documentation or additional information from Target'), source('celex:32024R1689/oj#art_91').
:- pred permitted_initiate_structured_dialogue(Actor, Target), gloss('Actor is permitted to initiate a structured dialogue with Target'), source('celex:32024R1689/oj#art_91').
:- pred permitted_request_information_scientific_panel(Actor, Target), gloss('Actor is permitted to issue a request for information upon substantiated request of the scientific panel to Target'), source('celex:32024R1689/oj#art_91').
:- pred required_request_specification(Request), gloss('Request for information satisfies the required specifications'), source('celex:32024R1689/oj#art_91').
:- pred must_supply_information(Actor, Request), gloss('Actor must supply the requested information'), source('celex:32024R1689/oj#art_91').
:- pred commission(Actor), gloss('The European Commission'), source('celex:32024R1689/oj#art_91').
:- pred provider_of_general_purpose_ai_model(Provider, Model), gloss('Entity is provider of the general-purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred substantiated_request_scientific_panel(Request), gloss('A duly substantiated request from the scientific panel exists'), source('celex:32024R1689/oj#art_91').
:- pred necessary_and_proportionate_for_scientific_panel_tasks(Model, Request), gloss('Access to information is necessary and proportionate for the scientific panel tasks'), source('celex:32024R1689/oj#art_91').
:- pred states_legal_basis(Request), gloss('Request states its legal basis'), source('celex:32024R1689/oj#art_91').
:- pred states_purpose(Request), gloss('Request states its purpose'), source('celex:32024R1689/oj#art_91').
:- pred specifies_information(Request), gloss('Request specifies what information is required'), source('celex:32024R1689/oj#art_91').
:- pred sets_period(Request), gloss('Request sets a period within which information is to be provided'), source('celex:32024R1689/oj#art_91').
:- pred indicates_fines(Request), gloss('Request indicates fines for supplying incorrect, incomplete or misleading information'), source('celex:32024R1689/oj#art_91').
:- pred authorised_representative_of_provider(Rep, Provider), gloss('Entity is an authorised representative of provider'), source('celex:32024R1689/oj#art_91').

% Paragraph 1: Commission power to request documentation and information
permitted_request_documentation(commission, provider(Provider, Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model).

% Paragraph 2: AI Office structured dialogue
permitted_initiate_structured_dialogue(Office, provider(Provider, Model)) :-
    ai_office(Office),
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model).

% Paragraph 3: Request upon substantiated request from the scientific panel
permitted_request_information_scientific_panel(commission, provider(Provider, Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model),
    substantiated_request_scientific_panel(req(Model)),
    necessary_and_proportionate_for_scientific_panel_tasks(Model, req(Model)).

% Paragraph 4: Required content of a request for information
required_request_specification(Request) :-
    states_legal_basis(Request),
    states_purpose(Request),
    specifies_information(Request),
    sets_period(Request),
    indicates_fines(Request).

% Paragraph 5: Obligation on provider or representative to supply information
must_supply_information(Provider, request_info(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model).

must_supply_information(Rep, request_info(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model),
    authorised_representative_of_provider(Rep, Provider).

% Provenance
provenance(permitted_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_request_information_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(required_request_specification/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').

% References
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
