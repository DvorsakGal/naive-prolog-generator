% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 398c0bba71b9f1257292c5aaf5bfacbb70a4d53db5cac654f916da0c2297c538
% cached     : False
% title      : Power to conduct evaluations
:- pred permitted_conduct_evaluation(Actor, Model),
   gloss('Actor is permitted to conduct an evaluation of the general-purpose AI model'),
   source('celex:32024R1689/oj#art_92').

:- pred board_consulted(Actor, Model),
   gloss('The AI Board has been consulted by the actor regarding the evaluation'),
   source('celex:32024R1689/oj#art_92').

:- pred evaluation_purpose(Model, Purpose),
   gloss('The purpose of conducting an evaluation of the model'),
   source('celex:32024R1689/oj#art_92').

:- pred information_insufficient(Model),
   gloss('Information gathered pursuant to Article 91 is insufficient'),
   source('celex:32024R1689/oj#art_92').

:- pred systemic_risk_model(Model),
   gloss('The general-purpose AI model presents systemic risk'),
   source('celex:32024R1689/oj#art_92').

:- pred permitted_appoint_expert(Actor, Expert),
   gloss('Actor is permitted to appoint an independent expert to evaluate'),
   source('celex:32024R1689/oj#art_92').

:- pred meets_criteria_art_68_2(Expert),
   gloss('Expert meets the independence and expertise criteria of Article 68(2)'),
   source('celex:32024R1689/oj#art_92').

:- pred permitted_request_access(Actor, Request),
   gloss('Actor is permitted to request access to the model'),
   source('celex:32024R1689/oj#art_92').

:- pred valid_access_request(Request),
   gloss('The access request states legal basis, purpose, period, and potential fines'),
   source('celex:32024R1689/oj#art_92').

:- pred must_provide_access(Provider, Request),
   gloss('Provider or authorized representative must provide the requested access'),
   source('celex:32024R1689/oj#art_92').

:- pred must_adopt_implementing_acts(Commission, Subject),
   gloss('Commission must adopt implementing acts on evaluation arrangements'),
   source('celex:32024R1689/oj#art_92').

:- pred permitted_initiate_dialogue(Actor, Provider),
   gloss('Actor is permitted to initiate a structured dialogue with the provider'),
   source('celex:32024R1689/oj#art_92').

% Paragraph 1: AI Office may conduct evaluations of general-purpose AI model
permitted_conduct_evaluation(Actor, Model) :-
    ai_office(Actor),
    general_purpose_ai_model(Model),
    board_consulted(Actor, Model),
    evaluation_purpose(Model, assess_compliance),
    information_insufficient(Model).

permitted_conduct_evaluation(Actor, Model) :-
    ai_office(Actor),
    general_purpose_ai_model(Model),
    board_consulted(Actor, Model),
    evaluation_purpose(Model, investigate_systemic_risks),
    systemic_risk_model(Model).

% Paragraph 2: Commission appointment of independent experts
permitted_appoint_expert(commission, Expert) :-
    meets_criteria_art_68_2(Expert).

% Paragraph 3: Commission requesting access to model
permitted_request_access(commission, access_to(Model, Means)) :-
    general_purpose_ai_model(Model),
    permitted_conduct_evaluation(_Actor, Model),
    member(Means, [api, technical_tools, source_code]).

% Paragraph 5: Obligation to provide access / supply information
must_provide_access(Provider, Request) :-
    provider(Provider),
    valid_access_request(Request).

must_provide_access(Representative, Request) :-
    authorised_representative(Representative),
    valid_access_request(Request).

% Paragraph 6: Implementing acts by Commission
must_adopt_implementing_acts(commission, evaluation_arrangements_and_conditions).

% Paragraph 7: Structured dialogue prior to requesting access
permitted_initiate_dialogue(Actor, Provider) :-
    ai_office(Actor),
    provider(Provider).

% Provenance
provenance(permitted_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_expert/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_dialogue/2, 'celex:32024R1689/oj#art_92').

% References
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
