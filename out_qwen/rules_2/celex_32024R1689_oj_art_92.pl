% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 895b3882fa8d687c2eaecef7e6cc4adbf7686431ab12b2b2f6d1ee8050778b7a
% cached     : False
% title      : Power to conduct evaluations
:- pred may_conduct_evaluation/2, gloss('AI Office may conduct evaluation of general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred evaluation_purpose/2, gloss('purpose for which an evaluation is conducted'), source('celex:32024R1689/oj#art_92').
:- pred information_insufficient/1, gloss('information gathered pursuant to Article 91 is insufficient'), source('celex:32024R1689/oj#art_92').
:- pred qualified_alert_received/1, gloss('qualified alert received from scientific panel'), source('celex:32024R1689/oj#art_92').
:- pred may_appoint_independent_expert/1, gloss('Commission may appoint independent expert to carry out evaluation'), source('celex:32024R1689/oj#art_92').
:- pred meets_expert_criteria/1, gloss('independent expert meets criteria outlined in Article 68(2)'), source('celex:32024R1689/oj#art_92').
:- pred may_request_access_to_model/2, gloss('Commission may request access to general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred access_via_technical_means/2, gloss('access provided through APIs or other technical means including source code'), source('celex:32024R1689/oj#art_92').
:- pred must_supply_requested_information/2, gloss('provider or representative must supply information requested for evaluation'), source('celex:32024R1689/oj#art_92').
:- pred must_provide_access_on_behalf/2, gloss('authorised person must provide access on behalf of provider'), source('celex:32024R1689/oj#art_92').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider prior to requesting access'), source('celex:32024R1689/oj#art_92').

may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    evaluation_purpose(M, assess_compliance),
    information_insufficient(M).

may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    evaluation_purpose(M, investigate_systemic_risk).

evaluation_purpose(M, assess_compliance) :-
    general_purpose_ai_model(M),
    information_insufficient(M).

evaluation_purpose(M, investigate_systemic_risk) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    qualified_alert_received(M).

may_appoint_independent_expert(commission) :-
    true.

meets_expert_criteria(E) :-
    independent_expert(E).

may_request_access_to_model(commission, M) :-
    general_purpose_ai_model(M),
    may_conduct_evaluation(ai_office, M).

access_via_technical_means(M, api) :-
    general_purpose_ai_model(M).

access_via_technical_means(M, source_code) :-
    general_purpose_ai_model(M).

must_supply_requested_information(P, M) :-
    general_purpose_ai_model(M),
    provides_general_purpose_ai_model(P, M),
    may_request_access_to_model(commission, M).

must_supply_requested_information(R, M) :-
    general_purpose_ai_model(M),
    authorised_representative(R),
    may_request_access_to_model(commission, M).

must_provide_access_on_behalf(A, M) :-
    general_purpose_ai_model(M),
    may_request_access_to_model(commission, M),
    authorised_to_represent(A, M).

may_initiate_structured_dialogue(ai_office, P) :-
    general_purpose_ai_model(M),
    provides_general_purpose_ai_model(P, M),
    may_request_access_to_model(commission, M).

provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose/2, 'celex:32024R1689/oj#art_92').
provenance(information_insufficient/1, 'celex:32024R1689/oj#art_92').
provenance(qualified_alert_received/1, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(meets_expert_criteria/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access_to_model/2, 'celex:32024R1689/oj#art_92').
provenance(access_via_technical_means/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access_on_behalf/2, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').

references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
