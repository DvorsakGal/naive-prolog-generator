% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1b0af5bad9844878f66952e9a023fa27717ad7bd7ff238892edeb03325acd2f3
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred must_undertake_action/2, gloss('Member State must undertake a specific action'), source('celex:32024R1689/oj#art_62').
:- pred must_undertake_action/2, gloss('AI Office must undertake a specific action'), source('celex:32024R1689/oj#art_62').
:- pred must_take_into_account/2, gloss('interests and needs must be taken into account when setting fees'), source('celex:32024R1689/oj#art_62').
:- pred sme/1, gloss('small or medium-sized enterprise'), source('celex:32024R1689/oj#art_62').
:- pred start_up/1, gloss('start-up enterprise'), source('celex:32024R1689/oj#art_62').
:- pred local_public_authority/1, gloss('local public authority'), source('celex:32024R1689/oj#art_62').
:- pred fulfils_eligibility_conditions/1, gloss('entity fulfils eligibility conditions for AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred fulfils_selection_criteria/1, gloss('entity fulfils selection criteria for AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred priority_access_to_sandbox/1, gloss('entity has priority access to AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred access_to_sandbox/1, gloss('entity has access to AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred awareness_raising_activities/1, gloss('awareness raising activities on the application of the regulation'), source('celex:32024R1689/oj#art_62').
:- pred training_activities/1, gloss('training activities on the application of the regulation'), source('celex:32024R1689/oj#art_62').
:- pred dedicated_communication_channel/1, gloss('dedicated channel for communication about the regulation'), source('celex:32024R1689/oj#art_62').
:- pred standardisation_development_process/1, gloss('standardisation development process'), source('celex:32024R1689/oj#art_62').
:- pred conformity_assessment_fee/1, gloss('fee for conformity assessment'), source('celex:32024R1689/oj#art_62').
:- pred standardised_template/1, gloss('standardised template for areas covered by the regulation'), source('celex:32024R1689/oj#art_62').
:- pred single_information_platform/1, gloss('single information platform for operators'), source('celex:32024R1689/oj#art_62').
:- pred communication_campaign/1, gloss('communication campaign about obligations'), source('celex:32024R1689/oj#art_62').
:- pred public_procurement_procedure/1, gloss('public procurement procedure in relation to AI systems'), source('celex:32024R1689/oj#art_62').

must_undertake_action(MS, provide_priority_access_to_sandbox) :-
    member_state(MS).

must_undertake_action(MS, organise_awareness_and_training) :-
    member_state(MS).

must_undertake_action(MS, utilise_dedicated_channels) :-
    member_state(MS).

must_undertake_action(MS, facilitate_participation_in_standardisation) :-
    member_state(MS).

must_undertake_action(AIO, provide_standardised_templates) :-
    ai_office(AIO).

must_undertake_action(AIO, develop_single_information_platform) :-
    ai_office(AIO).

must_undertake_action(AIO, organise_communication_campaigns) :-
    ai_office(AIO).

must_undertake_action(AIO, evaluate_best_practices_in_procurement) :-
    ai_office(AIO).

must_take_into_account(sme_provider_interests, conformity_assessment_fee) :-
    provider(P),
    sme(P).

priority_access_to_sandbox(E) :-
    sme(E),
    start_up(E),
    fulfils_eligibility_conditions(E),
    fulfils_selection_criteria(E).

access_to_sandbox(E) :-
    sme(E),
    start_up(E),
    fulfils_eligibility_conditions(E),
    fulfils_selection_criteria(E),
    \+ priority_access_to_sandbox(E).

provenance(must_undertake_action/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_62').
provenance(priority_access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(access_to_sandbox/1, 'celex:32024R1689/oj#art_62').

references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').
