% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 71c7295d030766154057b39725bd65c5f35aa876c2021d9a34a40ad61d5709fc
% cached     : False
% title      : Power to conduct evaluations
:- pred ai_office/1, gloss('Commission function for AI governance'), source('47').
:- pred general_purpose_ai_model/1, gloss('AI model capable of a wide range of tasks'), source('63').
:- pred general_purpose_ai_model_provider/1, gloss('provider of a general-purpose AI model'), source('reconciled').
:- pred systemic_risk/1, gloss('risk specific to high-impact capabilities of general-purpose AI models'), source('65').
:- pred scientific_panel_expert/1, gloss('expert selected to serve on the scientific panel'), source('reconciled').
:- pred qualified_alert_scientific_panel/1, gloss('qualified alert from the scientific panel'), source('reconciled').
:- pred member_state/1, gloss('a Member State of the European Union'), source('reconciled').

:- pred may_conduct_evaluation/2, gloss('AI Office may conduct evaluation of general-purpose AI model for purpose'), source('celex:32024R1689/oj#art_92').
:- pred evaluation_purpose_assess_compliance/1, gloss('evaluation purpose is to assess compliance of provider with obligations'), source('celex:32024R1689/oj#art_92').
:- pred evaluation_purpose_investigate_systemic_risk/1, gloss('evaluation purpose is to investigate systemic risks at Union level'), source('celex:32024R1689/oj#art_92').
:- pred information_insufficient/1, gloss('information gathered pursuant to Article 91 is insufficient'), source('celex:32024R1689/oj#art_92').
:- pred consulted_board/1, gloss('AI Office consulted the Board before conducting evaluation'), source('celex:32024R1689/oj#art_92').
:- pred appointed_independent_expert/1, gloss('independent expert appointed by Commission to carry out evaluation'), source('celex:32024R1689/oj#art_92').
:- pred meets_expert_criteria/1, gloss('independent expert meets criteria outlined in Article 68(2)'), source('celex:32024R1689/oj#art_92').
:- pred may_request_access/2, gloss('Commission may request access to general-purpose AI model through means'), source('celex:32024R1689/oj#art_92').
:- pred access_request_states/2, gloss('access request states legal basis, purpose, reasons, period and fines'), source('celex:32024R1689/oj#art_92').
:- pred must_supply_requested_information/2, gloss('provider or representative must supply information requested'), source('celex:32024R1689/oj#art_92').
:- pred authorised_representative_provides_access/2, gloss('authorised representative provides access on behalf of provider'), source('celex:32024R1689/oj#art_92').
:- pred structured_dialogue_initiated/2, gloss('AI Office initiated structured dialogue with provider before requesting access'), source('celex:32024R1689/oj#art_92').
:- pred implementing_act_adopted/1, gloss('Commission adopted implementing act setting out detailed arrangements for evaluations'), source('celex:32024R1689/oj#art_92').

may_conduct_evaluation(M, evaluation(assess_compliance(P))) :-
    ai_office(ai_office),
    general_purpose_ai_model(M),
    general_purpose_ai_model_provider(P),
    consulted_board(ai_office),
    information_insufficient(art_91_information(P, M)).

may_conduct_evaluation(M, evaluation(investigate_systemic_risk)) :-
    ai_office(ai_office),
    general_purpose_ai_model(M),
    systemic_risk(M),
    consulted_board(ai_office),
    qualified_alert_scientific_panel(alert(M)).

appointed_independent_expert(E) :-
    scientific_panel_expert(E),
    meets_expert_criteria(E).

appointed_independent_expert(E) :-
    \+ scientific_panel_expert(E),
    meets_expert_criteria(E).

may_request_access(M, access(api)) :-
    general_purpose_ai_model(M).

may_request_access(M, access(source_code)) :-
    general_purpose_ai_model(M).

may_request_access(M, access(further_technical_means)) :-
    general_purpose_ai_model(M).

access_request_states(M, request(legal_basis, purpose, reasons, period, fines)) :-
    may_request_access(M, _Means).

must_supply_requested_information(P, information(M)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

must_supply_requested_information(R, access(M)) :-
    authorised_representative(R),
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    authorised_representative_provides_access(R, P, M).

authorised_representative_provides_access(R, P, M) :-
    authorised_representative(R),
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

structured_dialogue_initiated(ai_office, P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    may_request_access(M, _Means).

implementing_act_adopted(act(evaluations, detailed_arrangements, independent_experts, selection_procedure)).

provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose_assess_compliance/1, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose_investigate_systemic_risk/1, 'celex:32024R1689/oj#art_92').
provenance(information_insufficient/1, 'celex:32024R1689/oj#art_92').
provenance(consulted_board/1, 'celex:32024R1689/oj#art_92').
provenance(appointed_independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(meets_expert_criteria/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(access_request_states/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(authorised_representative_provides_access/2, 'celex:32024R1689/oj#art_92').
provenance(structured_dialogue_initiated/2, 'celex:32024R1689/oj#art_92').
provenance(implementing_act_adopted/1, 'celex:32024R1689/oj#art_92').

references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
