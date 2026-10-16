% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 645bde8b6140eda1586ad9874bef20fd7e9058cc3b55624b665ffe0b60a5061a
% cached     : False
% title      : Power to request documentation and information
:- pred must_supply_information/2, gloss('provider or representative obliged to supply requested information'), source('reconciled').
:- pred may_request_documentation/2, gloss('Commission may request documentation from provider of general-purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred may_request_information/2, gloss('Commission may request information from provider of general-purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider before sending request'), source('celex:32024R1689/oj#art_91').
:- pred may_issue_request_for_information/2, gloss('Commission may issue request for information to provider upon substantiated request from scientific panel'), source('celex:32024R1689/oj#art_91').
:- pred request_states_legal_basis/1, gloss('request for information states the legal basis'), source('celex:32024R1689/oj#art_91').
:- pred request_states_purpose/1, gloss('request for information states the purpose'), source('celex:32024R1689/oj#art_91').
:- pred request_specifies_information_required/1, gloss('request for information specifies what information is required'), source('celex:32024R1689/oj#art_91').
:- pred request_sets_period/1, gloss('request for information sets a period within which information is to be provided'), source('celex:32024R1689/oj#art_91').
:- pred request_indicates_fines/1, gloss('request for information indicates fines for supplying incorrect, incomplete or misleading information'), source('celex:32024R1689/oj#art_91').
:- pred authorised_representative_supplies_information/2, gloss('persons authorised to represent provider supply information on behalf of provider'), source('celex:32024R1689/oj#art_91').
:- pred lawyer_supplies_information/2, gloss('lawyer duly authorised to act may supply information on behalf of client'), source('celex:32024R1689/oj#art_91').
:- pred client_remains_responsible/1, gloss('client remains fully responsible if information supplied is incomplete, incorrect or misleading'), source('celex:32024R1689/oj#art_91').

may_request_documentation(commission, P) :-
    general_purpose_ai_model_provider(P).

may_request_information(commission, P) :-
    general_purpose_ai_model_provider(P),
    information_necessary_for_assessing_compliance(P).

may_initiate_structured_dialogue(ai_office, P) :-
    general_purpose_ai_model_provider(P).

may_issue_request_for_information(commission, P) :-
    general_purpose_ai_model_provider(P),
    duly_substantiated_request_from_scientific_panel,
    access_to_information_necessary_and_proportionate(P),
    fulfilment_of_tasks_of_scientific_panel.

request_states_legal_basis(R) :-
    request_for_information(R).

request_states_purpose(R) :-
    request_for_information(R).

request_specifies_information_required(R) :-
    request_for_information(R).

request_sets_period(R) :-
    request_for_information(R).

request_indicates_fines(R) :-
    request_for_information(R).

must_supply_information(P, requested_information) :-
    general_purpose_ai_model_provider(P).

must_supply_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    authorised_representative(P).

authorised_representative_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    legal_person(P).

authorised_representative_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    company(P).

authorised_representative_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    firm(P).

authorised_representative_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    \+ legal_personality(P).

lawyer_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    lawyer_duly_authorised_to_act(P).

client_remains_responsible(P) :-
    general_purpose_ai_model_provider(P),
    information_supplied_incomplete(P).

client_remains_responsible(P) :-
    general_purpose_ai_model_provider(P),
    information_supplied_incorrect(P).

client_remains_responsible(P) :-
    general_purpose_ai_model_provider(P),
    information_supplied_misleading(P).

provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_for_information/2, 'celex:32024R1689/oj#art_91').
provenance(request_states_legal_basis/1, 'celex:32024R1689/oj#art_91').
provenance(request_states_purpose/1, 'celex:32024R1689/oj#art_91').
provenance(request_specifies_information_required/1, 'celex:32024R1689/oj#art_91').
provenance(request_sets_period/1, 'celex:32024R1689/oj#art_91').
provenance(request_indicates_fines/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(authorised_representative_supplies_information/2, 'celex:32024R1689/oj#art_91').
provenance(lawyer_supplies_information/2, 'celex:32024R1689/oj#art_91').
provenance(client_remains_responsible/1, 'celex:32024R1689/oj#art_91').

references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
