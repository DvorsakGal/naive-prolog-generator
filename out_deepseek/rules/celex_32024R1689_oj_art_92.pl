% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0c688ff378cb4e97229dfb1aefabf20339d8c47daf916c018b5abdd495761a81
% cached     : False
% title      : Power to conduct evaluations
:- pred may_conduct_evaluation/2, gloss('AI Office may conduct evaluation of general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred may_appoint_independent_experts/1, gloss('Commission may appoint independent experts for evaluations'), source('celex:32024R1689/oj#art_92').
:- pred may_request_access/2, gloss('Commission may request access to general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred must_supply_information/2, gloss('provider must supply information or access requested'), source('celex:32024R1689/oj#art_92').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_92').

may_conduct_evaluation(AI_Office, Model) :-
    ai_office(AI_Office),
    general_purpose_ai_model(Model),
    consulted_board(AI_Office),
    (   insufficient_information(Model)
    ;   systemic_risk(Model),
        qualified_alert_from_scientific_panel(Model)
    ).

insufficient_information(Model) :-
    general_purpose_ai_model(Model),
    information_gathered_under_art_91(Model, Info),
    insufficient(Info).

may_appoint_independent_experts(Commission) :-
    may_conduct_evaluation(ai_office, _Model).

may_request_access(Commission, Model) :-
    general_purpose_ai_model(Model),
    may_conduct_evaluation(ai_office, Model).

must_supply_information(Provider, request(access, Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    may_request_access(commission, Model).

must_supply_information(Representative, request(access, Model)) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model),
    may_request_access(commission, Model).

must_supply_information(AuthorisedPerson, request(access, Model)) :-
    general_purpose_ai_model(Model),
    may_request_access(commission, Model),
    provider_of_model(Provider, Model),
    \+ has_legal_personality(Provider),
    authorised_to_represent(AuthorisedPerson, Provider).

may_initiate_structured_dialogue(AI_Office, Provider) :-
    ai_office(AI_Office),
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_model(Provider, Model),
    \+ access_requested(commission, Model).

% Supporting predicates
:- pred consulted_board/1, gloss('AI Office has consulted the Board'), source('celex:32024R1689/oj#art_92').
:- pred insufficient_information/1, gloss('information gathered under Article 91 is insufficient'), source('celex:32024R1689/oj#art_92').
:- pred information_gathered_under_art_91/2, gloss('information gathered pursuant to Article 91'), source('celex:32024R1689/oj#art_92').
:- pred insufficient/1, gloss('information is insufficient'), source('celex:32024R1689/oj#art_92').
:- pred qualified_alert_from_scientific_panel/1, gloss('qualified alert from scientific panel under Article 90(1)(a)'), source('celex:32024R1689/oj#art_92').
:- pred provider_of_model/2, gloss('provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred has_legal_personality/1, gloss('entity has legal personality'), source('celex:32024R1689/oj#art_92').
:- pred authorised_to_represent/2, gloss('person authorised to represent a legal entity'), source('celex:32024R1689/oj#art_92').
:- pred access_requested/2, gloss('Commission has requested access to model'), source('celex:32024R1689/oj#art_92').

provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_experts/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').

references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
