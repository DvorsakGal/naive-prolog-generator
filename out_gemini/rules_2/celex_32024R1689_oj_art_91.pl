% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : de00dc388ac0bd866b04a72022654dd45201b73896eb13c014f00923f66663fa
% cached     : False
% title      : Power to request documentation and information
:- pred permitted_request_documentation(Actor, Target)
   , gloss('Actor is permitted to request documentation or additional information from Target')
   , source('celex:32024R1689/oj#art_91').

:- pred permitted_request_information_for_scientific_panel(Actor, Target)
   , gloss('Actor may issue a request for information to Target upon request from scientific panel')
   , source('celex:32024R1689/oj#art_91').

:- pred substantiated_request_from_scientific_panel(Actor, Target)
   , gloss('A duly substantiated request has been received from the scientific panel regarding Target')
   , source('celex:32024R1689/oj#art_91').

:- pred necessary_and_proportionate_for_scientific_panel_tasks(Target)
   , gloss('Access to information from Target is necessary and proportionate for scientific panel tasks')
   , source('celex:32024R1689/oj#art_91').

:- pred request_for_information_states_required_elements(Request)
   , gloss('Request for information states legal basis, purpose, required info, period, and potential fines')
   , source('celex:32024R1689/oj#art_91').

:- pred must_supply_requested_information(Actor, Request)
   , gloss('Actor must supply the information requested by the Commission')
   , source('celex:32024R1689/oj#art_91').

:- pred representative_of_provider(Rep, Provider)
   , gloss('Rep is an authorised representative, legal representative, or authorised lawyer of Provider')
   , source('celex:32024R1689/oj#art_91').

% Paragraph 1: The Commission may request documentation or additional info to assess compliance.
permitted_request_documentation(Commission, Provider) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider).

% Paragraph 2: AI Office may initiate structured dialogue before sending request.
permitted_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider_of_general_purpose_ai_model(Provider).

% Paragraph 3: Commission may request info upon substantiated request from scientific panel.
permitted_request_information_for_scientific_panel(Commission, Provider) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    substantiated_request_from_scientific_panel(Commission, Provider),
    necessary_and_proportionate_for_scientific_panel_tasks(Provider).

% Paragraph 5: Provider or its representative shall supply the requested information.
must_supply_requested_information(Provider, Request) :-
    provider_of_general_purpose_ai_model(Provider),
    request_for_information_states_required_elements(Request).

must_supply_requested_information(Rep, Request) :-
    representative_of_provider(Rep, Provider),
    provider_of_general_purpose_ai_model(Provider),
    request_for_information_states_required_elements(Request).

% Provenance
provenance(permitted_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_request_information_for_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_91').

% References
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
