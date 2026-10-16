% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : eb2c4ab1dfe74a7b76b0bf1925c59ffa4350363edaa1f935ca7083e4f74c0f25
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
:- pred testing_in_real_world_conditions_outside_sandbox/1, gloss('testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes'), source('celex:32024R1689/oj#art_60').
:- pred real_world_testing_plan_submitted/2, gloss('provider submitted real-world testing plan to market surveillance authority'), source('celex:32024R1689/oj#art_60').
:- pred real_world_testing_approved/2, gloss('market surveillance authority approved real-world testing and plan'), source('celex:32024R1689/oj#art_60').
:- pred real_world_testing_registered/2, gloss('provider registered real-world testing with unique identification number'), source('celex:32024R1689/oj#art_60').
:- pred legal_representative_in_union/1, gloss('provider has appointed a legal representative established in the Union'), source('celex:32024R1689/oj#art_60').
:- pred data_transfer_safeguards_implemented/1, gloss('appropriate and applicable safeguards under Union law are implemented for data transfer'), source('celex:32024R1689/oj#art_60').
:- pred testing_duration_within_limit/1, gloss('testing duration does not exceed six months or extended period with notification'), source('celex:32024R1689/oj#art_60').
:- pred vulnerable_subjects_protected/1, gloss('subjects belonging to vulnerable groups are appropriately protected'), source('celex:32024R1689/oj#art_60').
:- pred deployer_informed_and_agreement_concluded/2, gloss('deployer informed of all relevant aspects and agreement concluded'), source('celex:32024R1689/oj#art_60').
:- pred subjects_gave_informed_consent/1, gloss('subjects gave informed consent or law enforcement exception applies'), source('celex:32024R1689/oj#art_60').
:- pred testing_effectively_overseen/1, gloss('testing effectively overseen by suitably qualified persons'), source('celex:32024R1689/oj#art_60').
:- pred system_output_reversible/1, gloss('predictions, recommendations or decisions can be effectively reversed and disregarded'), source('celex:32024R1689/oj#art_60').
:- pred serious_incident_reported/2, gloss('serious incident reported to national market surveillance authority'), source('celex:32024R1689/oj#art_60').
:- pred mitigation_measures_adopted/1, gloss('immediate mitigation measures adopted or testing suspended'), source('celex:32024R1689/oj#art_60').
:- pred recall_procedure_established/1, gloss('procedure for prompt recall of AI system upon termination established'), source('celex:32024R1689/oj#art_60').
:- pred suspension_or_termination_notified/2, gloss('suspension or termination and final outcomes notified to market surveillance authority'), source('celex:32024R1689/oj#art_60').

% Paragraph 1: Testing may be conducted by providers or prospective providers of Annex III high-risk AI systems
permitted_testing_in_real_world_conditions_outside_sandbox(P, S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    testing_in_real_world_conditions_outside_sandbox(S),
    \+ prohibited_testing_in_real_world_conditions_outside_sandbox(P, S).

prohibited_testing_in_real_world_conditions_outside_sandbox(P, S) :-
    testing_in_real_world_conditions_outside_sandbox(S),
    prohibited_ai_practice(S).

% Paragraph 2: Testing may be conducted at any time before placing on market or putting into service
permitted_testing_timing(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).

% Paragraph 4: Conditions for conducting testing
permitted_testing_in_real_world_conditions_outside_sandbox(P, S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    testing_in_real_world_conditions_outside_sandbox(S),
    real_world_testing_plan_submitted(P, S),
    real_world_testing_approved(Authority, S),
    market_surveillance_authority(Authority),
    real_world_testing_registered(P, S),
    (established_in_union(P); legal_representative_in_union(P)),
    data_transfer_safeguards_implemented(S),
    testing_duration_within_limit(S),
    vulnerable_subjects_protected(S),
    deployer_informed_and_agreement_concluded(P, S),
    subjects_gave_informed_consent(S),
    testing_effectively_overseen(S),
    system_output_reversible(S).

established_in_union(P) :-
    provider(P),
    \+ established_in_third_country(P).

% Paragraph 4(c) registration exceptions
real_world_testing_registered(P, S) :-
    annex_3_point_1_a_system(S),
    law_enforcement_migration_asylum_border(S),
    registered_in_secure_non_public_database(P, S).

real_world_testing_registered(P, S) :-
    annex_3_point_2_system(S),
    registered_in_accordance_with_art_49_par_5(P, S).

real_world_testing_registered(P, S) :-
    high_risk_ai_system(S),
    \+ annex_3_point_1_a_system(S),
    \+ annex_3_point_2_system(S),
    \+ (law_enforcement_migration_asylum_border(S), (annex_3_point_1_a_system(S); annex_3_point_6_system(S); annex_3_point_7_system(S))),
    registered_in_accordance_with_art_71_par_4(P, S).

% Paragraph 4(f) duration
testing_duration_within_limit(S) :-
    testing_duration(S, months(M)),
    M =< 6.

testing_duration_within_limit(S) :-
    testing_duration(S, months(M)),
    M =< 12,
    extension_notified(P, S),
    extension_explanation_provided(P, S).

% Paragraph 4(i) informed consent or law enforcement exception
subjects_gave_informed_consent(S) :-
    informed_consent(subjects(S)).

subjects_gave_informed_consent(S) :-
    law_enforcement(S),
    \+ informed_consent(subjects(S)),
    no_negative_effect_on_subjects(S),
    personal_data_deleted_after_test(S).

% Paragraph 5: Withdrawal rights
must_permit_withdrawal(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    subjects_gave_informed_consent(S).

must_delete_personal_data_on_request(P, S) :-
    must_permit_withdrawal(P, S),
    withdrawal_requested(subjects(S)).

% Paragraph 7: Serious incident reporting and mitigation
must_report_serious_incident(P, Authority, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    serious_incident(Incident),
    identified_in_testing(Incident, S),
    market_surveillance_authority(Authority).

must_adopt_mitigation_or_suspend(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    serious_incident(Incident),
    identified_in_testing(Incident, S).

must_establish_recall_procedure(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S).

% Paragraph 8: Notification of suspension, termination and final outcomes
must_notify_suspension_or_termination(P, Authority, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    market_surveillance_authority(Authority).

% Paragraph 9: Liability
liable_for_damage(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    damage_caused_in_testing(P, S).

% Provenance
provenance(testing_in_real_world_conditions_outside_sandbox/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions_outside_sandbox/2, 'celex:32024R1689/oj#art_60').
provenance(prohibited_testing_in_real_world_conditions_outside_sandbox/2, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_timing/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_plan_submitted/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_approved/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_registered/2, 'celex:32024R1689/oj#art_60').
provenance(legal_representative_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguards_implemented/1, 'celex:32024R1689/oj#art_60').
provenance(testing_duration_within_limit/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_informed_and_agreement_concluded/2, 'celex:32024R1689/oj#art_60').
provenance(subjects_gave_informed_consent/1, 'celex:32024R1689/oj#art_60').
provenance(testing_effectively_overseen/1, 'celex:32024R1689/oj#art_60').
provenance(system_output_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(must_permit_withdrawal/2, 'celex:32024R1689/oj#art_60').
provenance(must_delete_personal_data_on_request/2, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident/3, 'celex:32024R1689/oj#art_60').
provenance(must_adopt_mitigation_or_suspend/2, 'celex:32024R1689/oj#art_60').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_suspension_or_termination/3, 'celex:32024R1689/oj#art_60').
provenance(liable_for_damage/2, 'celex:32024R1689/oj#art_60').

% References
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_71/par_4').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').
