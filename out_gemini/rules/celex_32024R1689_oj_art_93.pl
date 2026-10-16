% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4db8558a0df994da3c4638370107f8878ba57316dcb86da80a35700a9fda2525
% cached     : False
% title      : Power to request measures
:- pred permitted_request_measures/2, gloss('Commission may request provider to take measures regarding general-purpose AI model'), source('celex:32024R1689/oj#art_93').
:- pred permitted_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider of general-purpose AI model'), source('celex:32024R1689/oj#art_93').
:- pred permitted_make_commitments_binding/2, gloss('Commission may make commitments binding and declare no further grounds for action'), source('celex:32024R1689/oj#art_93').
:- pred necessary_and_appropriate/1, gloss('measure or request is necessary and appropriate'), source('celex:32024R1689/oj#art_93').
:- pred substantiated_concern_systemic_risk/1, gloss('evaluation under Article 92 gave rise to serious and substantiated concern of systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred offers_commitments/3, gloss('provider offers commitments during structured dialogue to address systemic risk'), source('celex:32024R1689/oj#art_93').
:- pred provides_model/2, gloss('provider provides a general-purpose AI model'), source('celex:32024R1689/oj#art_93').

% Paragraph 1(a): Request appropriate measures to comply with obligations in Art 53 / 54
permitted_request_measures(commission, request(Provider, comply_obligations(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, comply_obligations(Model))).

% Paragraph 1(b): Request to implement mitigation measures after Art 92 evaluation
permitted_request_measures(commission, request(Provider, implement_mitigation_measures(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, implement_mitigation_measures(Model))),
    substantiated_concern_systemic_risk(Model).

% Paragraph 1(c): Request to restrict making available, withdraw, or recall the model
permitted_request_measures(commission, request(Provider, restrict_making_available(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, restrict_making_available(Model))).

permitted_request_measures(commission, request(Provider, withdraw(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, withdraw(Model))).

permitted_request_measures(commission, request(Provider, recall(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, recall(Model))).

% Paragraph 2: AI Office may initiate structured dialogue with provider
permitted_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model).

% Paragraph 3: Commission may make commitments binding and declare no grounds for action
permitted_make_commitments_binding(commission, decision(Provider, Commitments)) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    offers_commitments(Provider, Model, Commitments).

provenance(permitted_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
