% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 7acb57f2b4c9b66c78246f7ff5d33762de42be20bd51fb4c58133523327c2c8f
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
:- pred permitted_testing_in_real_world_conditions/1, gloss('testing of high-risk AI systems in real world conditions outside sandboxes is permitted'), source('celex:32024R1689/oj#art_60').
:- pred must_submit_real_world_testing_plan/2, gloss('provider must submit real-world testing plan to market surveillance authority'), source('celex:32024R1689/oj#art_60').
:- pred real_world_testing_approved/2, gloss('market surveillance authority has approved testing and plan'), source('celex:32024R1689/oj#art_60').
:- pred must_register_real_world_testing/2, gloss('provider must register testing in real world conditions'), source('celex:32024R1689/oj#art_60').
:- pred established_or_represented_in_union/1, gloss('provider established in Union or has appointed legal representative in Union'), source('celex:32024R1689/oj#art_60').
:- pred data_transfer_safeguards_implemented/1, gloss('appropriate safeguards under Union law implemented for data transfer to third countries'), source('celex:32024R1689/oj#art_60').
:- pred real_world_testing_duration_compliant/1, gloss('testing duration does not exceed necessary time and limits'), source('celex:32024R1689/oj#art_60').
:- pred vulnerable_subjects_protected/1, gloss('subjects belonging to vulnerable groups are appropriately protected'), source('celex:32024R1689/oj#art_60').
:- pred deployer_informed_and_agreed/2, gloss('deployer informed of relevant aspects and agreement concluded specifying roles'), source('celex:32024R1689/oj#art_60').
:- pred informed_consent_or_law_enforcement_exception/1, gloss('subjects gave informed consent or law enforcement exception applies'), source('celex:32024R1689/oj#art_60').
:- pred effective_oversight_of_testing/1, gloss('testing effectively overseen by qualified persons with necessary capacity'), source('celex:32024R1689/oj#art_60').
:- pred predictions_reversible/1, gloss('predictions recommendations or decisions of AI system can be effectively reversed'), source('celex:32024R1689/oj#art_60').
:- pred must_report_serious_incident_during_testing/2, gloss('provider must report serious incident during testing to national market surveillance authority'), source('celex:32024R1689/oj#art_60').
:- pred must_mitigate_or_suspend_testing/2, gloss('provider must adopt mitigation measures or suspend testing upon serious incident'), source('celex:32024R1689/oj#art_60').
:- pred must_notify_testing_outcome/2, gloss('provider must notify authority of suspension termination and final outcomes'), source('celex:32024R1689/oj#art_60').

permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system_annex_iii(S),
    testing_in_real_world_conditions(S),
    \+ ai_regulatory_sandbox(S),
    must_submit_real_world_testing_plan(_P, S),
    real_world_testing_approved(_MSA, S),
    must_register_real_world_testing(_P, S),
    established_or_represented_in_union(_P),
    data_transfer_safeguards_implemented(S),
    real_world_testing_duration_compliant(S),
    vulnerable_subjects_protected(S),
    informed_consent_or_law_enforcement_exception(S),
    effective_oversight_of_testing(S),
    predictions_reversible(S).

must_submit_real_world_testing_plan(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    real_world_testing_plan(S).

real_world_testing_approved(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S).

must_register_real_world_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S).

established_or_represented_in_union(P) :-
    provider(P).

data_transfer_safeguards_implemented(S) :-
    testing_in_real_world_conditions(S).

real_world_testing_duration_compliant(S) :-
    testing_in_real_world_conditions(S).

vulnerable_subjects_protected(S) :-
    testing_in_real_world_conditions(S).

deployer_informed_and_agreed(D, S) :-
    deployer(D),
    testing_in_real_world_conditions(S),
    instructions_for_use(S).

informed_consent_or_law_enforcement_exception(S) :-
    testing_in_real_world_conditions(S),
    informed_consent(S).

informed_consent_or_law_enforcement_exception(S) :-
    testing_in_real_world_conditions(S),
    law_enforcement(S),
    \+ informed_consent_feasible(S),
    no_negative_effect_on_subjects(S),
    personal_data_deleted_after_test(S).

effective_oversight_of_testing(S) :-
    testing_in_real_world_conditions(S).

predictions_reversible(S) :-
    testing_in_real_world_conditions(S).

must_report_serious_incident_during_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(S).

must_mitigate_or_suspend_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(S).

must_notify_testing_outcome(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S).

provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60').
provenance(must_submit_real_world_testing_plan/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_approved/2, 'celex:32024R1689/oj#art_60').
provenance(must_register_real_world_testing/2, 'celex:32024R1689/oj#art_60').
provenance(established_or_represented_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguards_implemented/1, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_duration_compliant/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_informed_and_agreed/2, 'celex:32024R1689/oj#art_60').
provenance(informed_consent_or_law_enforcement_exception/1, 'celex:32024R1689/oj#art_60').
provenance(effective_oversight_of_testing/1, 'celex:32024R1689/oj#art_60').
provenance(predictions_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident_during_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_mitigate_or_suspend_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_testing_outcome/2, 'celex:32024R1689/oj#art_60').

references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_71/par_4').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').
