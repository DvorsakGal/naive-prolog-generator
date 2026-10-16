% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dad3b790065c2298c6bf4c21e067ddad4c6e19bd2f54520a32698205174f4147
% cached     : False
% title      : Power to request documentation and information
:- pred must_supply_information/2, gloss('provider or representative obliged to supply requested information'), source('celex:32024R1689/oj#art_91').
:- pred may_request_documentation/2, gloss('Commission may request documentation from provider of general-purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred may_request_information/2, gloss('Commission may request information from provider of general-purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider before sending request'), source('celex:32024R1689/oj#art_91').
:- pred may_issue_request_for_information/2, gloss('Commission may issue request for information to provider upon substantiated request from scientific panel'), source('celex:32024R1689/oj#art_91').
:- pred request_states_legal_basis/1, gloss('request for information states legal basis'), source('celex:32024R1689/oj#art_91').
:- pred request_states_purpose/1, gloss('request for information states purpose'), source('celex:32024R1689/oj#art_91').
:- pred request_specifies_information_required/1, gloss('request for information specifies what information is required'), source('celex:32024R1689/oj#art_91').
:- pred request_sets_period/1, gloss('request for information sets period within which information is to be provided'), source('celex:32024R1689/oj#art_91').
:- pred request_indicates_fines/1, gloss('request for information indicates fines for incorrect, incomplete or misleading information'), source('celex:32024R1689/oj#art_91').
:- pred authorised_representative_may_supply_information/2, gloss('persons authorised to represent provider may supply information on behalf of provider'), source('celex:32024R1689/oj#art_91').
:- pred lawyer_may_supply_information/2, gloss('lawyers duly authorised to act may supply information on behalf of clients'), source('celex:32024R1689/oj#art_91').
:- pred client_remains_responsible/2, gloss('client remains fully responsible if information supplied is incomplete, incorrect or misleading'), source('celex:32024R1689/oj#art_91').

may_request_documentation(commission, P) :-
    provider(P),
    general_purpose_ai_model(P).

may_request_information(commission, P) :-
    provider(P),
    general_purpose_ai_model(P),
    necessary_for_assessing_compliance(P).

may_initiate_structured_dialogue(ai_office, P) :-
    provider(P),
    general_purpose_ai_model(P).

may_issue_request_for_information(commission, P) :-
    provider(P),
    general_purpose_ai_model(P),
    duly_substantiated_request(scientific_panel),
    necessary_and_proportionate_for_scientific_panel_tasks(P).

must_supply_information(P, information(requested)) :-
    provider(P),
    general_purpose_ai_model(P).

must_supply_information(R, information(requested)) :-
    authorised_representative(R),
    represents(R, P),
    provider(P),
    general_purpose_ai_model(P).

authorised_representative_may_supply_information(R, P) :-
    authorised_representative(R),
    represents(R, P),
    provider(P),
    general_purpose_ai_model(P).

lawyer_may_supply_information(L, P) :-
    lawyer(L),
    duly_authorised_to_act(L),
    client(L, P),
    provider(P),
    general_purpose_ai_model(P).

client_remains_responsible(P, information(supplied)) :-
    provider(P),
    general_purpose_ai_model(P),
    supplied_by_lawyer(P),
    incomplete_or_incorrect_or_misleading(information(supplied)).

request_states_legal_basis(request(R)) :-
    request_for_information(R).

request_states_purpose(request(R)) :-
    request_for_information(R).

request_specifies_information_required(request(R)) :-
    request_for_information(R).

request_sets_period(request(R)) :-
    request_for_information(R).

request_indicates_fines(request(R)) :-
    request_for_information(R).

provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_for_information/2, 'celex:32024R1689/oj#art_91').
provenance(request_states_legal_basis/1, 'celex:32024R1689/oj#art_91').
provenance(request_states_purpose/1, 'celex:32024R1689/oj#art_91').
provenance(request_specifies_information_required/1, 'celex:32024R1689/oj#art_91').
provenance(request_sets_period/1, 'celex:32024R1689/oj#art_91').
provenance(request_indicates_fines/1, 'celex:32024R1689/oj#art_91').
provenance(authorised_representative_may_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(lawyer_may_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(client_remains_responsible/2, 'celex:32024R1689/oj#art_91').

references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
