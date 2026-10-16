% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : c6cdd0399456bc7235894e15f85cb9de607723631f290aba3ad446dce4fc0a6b
% cached     : False
% title      : Power to conduct evaluations
:- pred permitted_conduct_evaluation/2, gloss('AI Office may conduct evaluation of general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred consulted_board/1, gloss('AI Office has consulted the Board regarding evaluation of a model'), source('celex:32024R1689/oj#art_92').
:- pred insufficient_information_under_art_91/1, gloss('Information gathered under Article 91 is insufficient'), source('celex:32024R1689/oj#art_92').
:- pred systemic_risk_model/1, gloss('General-purpose AI model presents systemic risk'), source('celex:32024R1689/oj#art_92').
:- pred permitted_appoint_expert/2, gloss('Commission may decide to appoint independent expert to evaluate'), source('celex:32024R1689/oj#art_92').
:- pred meets_criteria_art_68_par_2/1, gloss('Expert meets the criteria outlined in Article 68(2)'), source('celex:32024R1689/oj#art_92').
:- pred permitted_request_access/2, gloss('Commission may request access to model through APIs or technical means'), source('celex:32024R1689/oj#art_92').
:- pred valid_access_request/1, gloss('Access request complies with Article 92(4) requirements'), source('celex:32024R1689/oj#art_92').
:- pred must_provide_access/2, gloss('Provider or representative must provide requested access'), source('celex:32024R1689/oj#art_92').
:- pred must_adopt_implementing_acts/2, gloss('Commission must adopt implementing acts setting out arrangements and conditions for evaluations'), source('celex:32024R1689/oj#art_92').

% Paragraph 1(a): evaluation to assess compliance where Art 91 info is insufficient
permitted_conduct_evaluation(Office, evaluate(Model, assess_compliance)) :-
    ai_office(Office),
    general_purpose_ai_model(Model),
    consulted_board(Model),
    insufficient_information_under_art_91(Model).

% Paragraph 1(b): evaluation to investigate systemic risks of models with systemic risk
permitted_conduct_evaluation(Office, evaluate(Model, investigate_systemic_risk)) :-
    ai_office(Office),
    general_purpose_ai_model(Model),
    consulted_board(Model),
    systemic_risk_model(Model).

% Paragraph 2: appointment of independent experts meeting Art 68(2)
permitted_appoint_expert(Comm, expert(Expert, Model)) :-
    commission(Comm),
    general_purpose_ai_model(Model),
    meets_criteria_art_68_par_2(Expert).

% Paragraph 3: Commission may request access through APIs, technical means or source code
permitted_request_access(Comm, request_access(Model, Means)) :-
    commission(Comm),
    general_purpose_ai_model(Model),
    member(Means, [apis, technical_tools, source_code]).

% Paragraph 5: obligation to supply access/information
must_provide_access(Provider, AccessRequest) :-
    provider_of_general_purpose_ai_model(Provider),
    valid_access_request(AccessRequest).

must_provide_access(Rep, AccessRequest) :-
    authorised_representative_of(Rep, Provider),
    provider_of_general_purpose_ai_model(Provider),
    valid_access_request(AccessRequest).

% Paragraph 6: Commission must adopt implementing acts
must_adopt_implementing_acts(Comm, implementing_acts(evaluations)) :-
    commission(Comm).

% Paragraph 7: AI Office may initiate structured dialogue prior to requesting access
permitted_initiate_structured_dialogue(Office, Provider) :-
    ai_office(Office),
    provider_of_general_purpose_ai_model(Provider).

% Provenance
provenance(permitted_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_expert/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').

% Cross-references
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
