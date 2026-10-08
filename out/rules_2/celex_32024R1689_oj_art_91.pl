% unit       : celex:32024R1689/oj#art_91
% title      : Power to request documentation and information
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : gpt-oss:120b-cloud
% prompt sha : 4f4f2f5a2d1b92b115c755f664b4f26e66d5ce3aa8dd13fcf56f94c2ce60f337
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_91').
:- pred provider_of_general_purpose_ai_model/1, gloss('provider that offers a general‑purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred permitted_request_information/2, gloss('permission for an actor to request documentation and information from a provider'), source('celex:32024R1689/oj#art_91').
:- pred permitted_initiate_structured_dialogue/2, gloss('permission for the AI Office to start a structured dialogue with a provider'), source('celex:32024R1689/oj#art_91').
:- pred permitted_issue_request_information/2, gloss('permission for the Commission to issue a request for information after a scientific panel request'), source('celex:32024R1689/oj#art_91').
:- pred request_information/1, gloss('formal request for documentation or information issued by the Commission'), source('celex:32024R1689/oj#art_91').
:- pred must_state_legal_basis_and_purpose/1, gloss('obligation that a request states its legal basis and purpose'), source('celex:32024R1689/oj#art_91').
:- pred must_specify_required_information/1, gloss('obligation that a request specifies the information required'), source('celex:32024R1689/oj#art_91').
:- pred must_set_provision_period/1, gloss('obligation that a request sets a deadline for provision'), source('celex:32024R1689/oj#art_91').
:- pred must_indicate_fines/1, gloss('obligation that a request indicates applicable fines for incorrect information'), source('celex:32024R1689/oj#art_91').
:- pred must_supply_requested_information/2, gloss('obligation for a provider or its representative to supply the requested information'), source('celex:32024R1689/oj#art_91').
:- pred representative_of_provider/2, gloss('person authorised to act on behalf of a provider'), source('celex:32024R1689/oj#art_91').
:- pred scientific_panel_request/1, gloss('substantiated request made by the scientific panel'), source('celex:32024R1689/oj#art_91').
:- pred necessary_and_proportionate/1, gloss('condition that access to information is necessary and proportionate'), source('celex:32024R1689/oj#art_91').

provider_of_general_purpose_ai_model(P) :-
    provider(P),
    general_purpose_ai_model(_M).

permitted_request_information(C, P) :-
    commission(C),
    provider_of_general_purpose_ai_model(P).

permitted_initiate_structured_dialogue(AO, P) :-
    ai_office(AO),
    provider_of_general_purpose_ai_model(P).

permitted_issue_request_information(C, P) :-
    commission(C),
    provider_of_general_purpose_ai_model(P),
    scientific_panel_request(_R),
    necessary_and_proportionate(P).

must_state_legal_basis_and_purpose(R) :-
    request_information(R).

must_specify_required_information(R) :-
    request_information(R).

must_set_provision_period(R) :-
    request_information(R).

must_indicate_fines(R) :-
    request_information(R).

must_supply_requested_information(P, R) :-
    provider_of_general_purpose_ai_model(P),
    request_information(R).

must_supply_requested_information(Rep, R) :-
    representative_of_provider(Rep, P),
    provider_of_general_purpose_ai_model(P),
    request_information(R).

provenance(permitted_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_issue_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(must_state_legal_basis_and_purpose/1, 'celex:32024R1689/oj#art_91').
provenance(must_specify_required_information/1, 'celex:32024R1689/oj#art_91').
provenance(must_set_provision_period/1, 'celex:32024R1689/oj#art_91').
provenance(must_indicate_fines/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_91').

references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
