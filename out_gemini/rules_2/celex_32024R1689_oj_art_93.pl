% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 0ae0f7e73c6468f2a3963b3ef589159dd68839d5e37c9ed58be8031f3c658935
% cached     : False
% title      : Power to request measures
:- pred permitted_request_measures/2, gloss('Commission may request provider to take measures'), source('celex:32024R1689/oj#art_93').
:- pred necessary_and_appropriate/1, gloss('action or measure is necessary and appropriate'), source('celex:32024R1689/oj#art_93').
:- pred evaluation_art_92_systemic_risk_concern/1, gloss('evaluation under Article 92 has given rise to serious and substantiated concern of systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model presents systemic risk'), source('celex:32024R1689/oj#art_93').
:- pred offers_commitments/2, gloss('provider offers commitments to implement mitigation measures to address systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred during_structured_dialogue/2, gloss('action occurs during structured dialogue between AI Office and provider'), source('celex:32024R1689/oj#art_93').
:- pred permitted_make_commitments_binding/2, gloss('Commission may by decision make commitments binding and declare no further grounds for action'), source('celex:32024R1689/oj#art_93').

% Paragraph 1(a): Request appropriate measures to comply with obligations in Art 53 and Art 54
permitted_request_measures(Commission, request(Provider, comply_obligations_art_53_54)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    necessary_and_appropriate(request(Provider, comply_obligations_art_53_54)).

% Paragraph 1(b): Request mitigation measures where evaluation under Art 92 gave rise to serious concern of systemic risk
permitted_request_measures(Commission, request(Provider, implement_mitigation_measures(Model))) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    evaluation_art_92_systemic_risk_concern(Model),
    necessary_and_appropriate(request(Provider, implement_mitigation_measures(Model))).

% Paragraph 1(c): Request restrict making available, withdraw or recall the model
permitted_request_measures(Commission, request(Provider, restrict_making_available(Model))) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, restrict_making_available(Model))).

permitted_request_measures(Commission, request(Provider, withdraw(Model))) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, withdraw(Model))).

permitted_request_measures(Commission, request(Provider, recall(Model))) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, recall(Model))).

% Paragraph 2: AI Office may initiate structured dialogue with provider before measure is requested
permitted_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider_of_general_purpose_ai_model(Provider).

% Paragraph 3: Commission may make commitments binding and declare no further grounds for action
permitted_make_commitments_binding(Commission, commitments(Provider, Commitments)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model_with_systemic_risk(Model),
    during_structured_dialogue(Provider, dialogue),
    offers_commitments(Provider, Commitments).

% Provenance
provenance(permitted_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').

% References
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
