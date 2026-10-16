% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 532b6fbf18f371cf2368c8418de671513bc525085cd24eca871dd22b2d221b0b
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
:- pred testing_in_real_world_conditions_outside_sandbox/1, gloss('testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes'), source('celex:32024R1689/oj#art_60').
:- pred real_world_testing_plan_submitted/2, gloss('provider submitted real-world testing plan to authority'), source('celex:32024R1689/oj#art_60/par_4/pnt_a').
:- pred real_world_testing_approved/2, gloss('authority approved testing and plan'), source('celex:32024R1689/oj#art_60/par_4/pnt_b').
:- pred real_world_testing_registered/2, gloss('testing registered with unique identification number'), source('celex:32024R1689/oj#art_60/par_4/pnt_c').
:- pred established_in_union_or_has_legal_rep/1, gloss('provider established in Union or has appointed legal representative'), source('celex:32024R1689/oj#art_60/par_4/pnt_d').
:- pred data_transfer_safeguards_implemented/1, gloss('appropriate safeguards for third-country data transfer'), source('celex:32024R1689/oj#art_60/par_4/pnt_e').
:- pred testing_duration_within_limits/1, gloss('testing does not exceed permitted duration'), source('celex:32024R1689/oj#art_60/par_4/pnt_f').
:- pred vulnerable_subjects_protected/1, gloss('subjects from vulnerable groups appropriately protected'), source('celex:32024R1689/oj#art_60/par_4/pnt_g').
:- pred deployer_informed_and_agreement_concluded/2, gloss('deployer informed and agreement concluded'), source('celex:32024R1689/oj#art_60/par_4/pnt_h').
:- pred subjects_gave_informed_consent_or_law_enforcement_exception/1, gloss('informed consent given or law enforcement exception applies'), source('celex:32024R1689/oj#art_60/par_4/pnt_i').
:- pred testing_effectively_overseen/1, gloss('testing overseen by qualified persons'), source('celex:32024R1689/oj#art_60/par_4/pnt_j').
:- pred outputs_reversible_and_disregardable/1, gloss('predictions, recommendations or decisions can be reversed and disregarded'), source('celex:32024R1689/oj#art_60/par_4/pnt_k').
:- pred must_report_serious_incident/2, gloss('provider must report serious incident to market surveillance authority'), source('celex:32024R1689/oj#art_60/par_7').
:- pred must_adopt_mitigation_or_suspend/2, gloss('provider must adopt mitigation or suspend testing'), source('celex:32024R1689/oj#art_60/par_7').
:- pred must_establish_recall_procedure/2, gloss('provider must establish procedure for prompt recall'), source('celex:32024R1689/oj#art_60/par_7').
:- pred must_notify_suspension_termination_outcomes/2, gloss('provider must notify suspension, termination and final outcomes'), source('celex:32024R1689/oj#art_60/par_8').

% Paragraph 1: who may conduct testing
may_conduct_testing_in_real_world_conditions(P, S) :-
    ( provider(P) ; prospective_provider(P) ),
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    testing_in_real_world_conditions_outside_sandbox(S),
    real_world_testing_plan_submitted(P, S),
    real_world_testing_approved(P, S),
    \+ prohibited_under_art_5(S).

% Paragraph 2: timing and partnership
may_conduct_testing_in_real_world_conditions(P, S) :-
    ( provider(P) ; prospective_provider(P) ),
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).

may_conduct_testing_in_real_world_conditions(P, S) :-
    ( provider(P) ; prospective_provider(P) ),
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    in_partnership_with_deployer(P, S).

% Paragraph 4: cumulative conditions
permitted_testing_in_real_world_conditions(P, S) :-
    may_conduct_testing_in_real_world_conditions(P, S),
    real_world_testing_plan_submitted(P, S),
    real_world_testing_approved(P, S),
    real_world_testing_registered(P, S),
    established_in_union_or_has_legal_rep(P),
    data_transfer_safeguards_implemented(S),
    testing_duration_within_limits(S),
    vulnerable_subjects_protected(S),
    deployer_informed_and_agreement_concluded(P, S),
    subjects_gave_informed_consent_or_law_enforcement_exception(S),
    testing_effectively_overseen(S),
    outputs_reversible_and_disregardable(S).

% Paragraph 4(b): tacit approval after 30 days
real_world_testing_approved(P, S) :-
    market_surveillance_authority(A),
    submitted_to_authority(P, S, A),
    no_answer_within_days(A, 30).

real_world_testing_approved(P, S) :-
    market_surveillance_authority(A),
    submitted_to_authority(P, S, A),
    explicit_approval(A, S).

% Paragraph 4(c): registration obligations
real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, 1),
    law_enforcement_migration_asylum_border(S),
    registered_in_eu_database_secure_section(P, S).

real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, 6),
    law_enforcement_migration_asylum_border(S),
    registered_in_eu_database_secure_section(P, S).

real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, 7),
    law_enforcement_migration_asylum_border(S),
    registered_in_eu_database_secure_section(P, S).

real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, 2),
    registered_under_art_49_par_5(P, S).

real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, _),
    \+ law_enforcement_migration_asylum_border(S),
    \+ listed_in_annex_3_point(S, 2),
    registered_under_art_71_par_4(P, S).

% Paragraph 4(f): duration limits
testing_duration_within_limits(S) :-
    testing_duration(S, D),
    D =< months(6).

testing_duration_within_limits(S) :-
    testing_duration(S, D),
    D =< months(12),
    prior_notification_of_extension(P, S),
    explanation_of_need(P, S).

% Paragraph 4(i): informed consent or law enforcement exception
subjects_gave_informed_consent_or_law_enforcement_exception(S) :-
    subjects_gave_informed_consent(S).

subjects_gave_informed_consent_or_law_enforcement_exception(S) :-
    law_enforcement(S),
    seeking_consent_would_prevent_testing(S),
    no_negative_effect_on_subjects(S),
    personal_data_deleted_after_test(S).

% Paragraph 5: withdrawal rights
may_withdraw_from_testing(Subject, S) :-
    subject(Subject),
    testing_in_real_world_conditions_outside_sandbox(S),
    subjects_gave_informed_consent(S).

must_delete_personal_data_on_withdrawal(P, Subject, S) :-
    may_withdraw_from_testing(Subject, S),
    provider(P),
    withdrawal_requested(Subject, S).

% Paragraph 6: market surveillance powers
must_confer_powers_on_market_surveillance(MemberState, Authority) :-
    market_surveillance_authority(Authority),
    power_to_require_information(Authority),
    power_to_carry_out_inspections(Authority),
    power_to_perform_checks(Authority).

% Paragraph 7: serious incident obligations
must_report_serious_incident(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    serious_incident_identified(S).

must_adopt_mitigation_or_suspend(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    serious_incident_identified(S),
    \+ mitigation_measures_adopted(P, S).

must_establish_recall_procedure(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    testing_terminated(S).

% Paragraph 8: notification of suspension, termination, outcomes
must_notify_suspension_termination_outcomes(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    ( testing_suspended(S) ; testing_terminated(S) ; final_outcomes_available(S) ).

% Paragraph 9: liability
liable_for_damage(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    damage_caused_in_course_of_testing(P, S).

% Provenance
provenance(testing_in_real_world_conditions_outside_sandbox/1, 'celex:32024R1689/oj#art_60').
provenance(may_conduct_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60/par_1').
provenance(may_conduct_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60/par_2').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(real_world_testing_approved/2, 'celex:32024R1689/oj#art_60/par_4/pnt_b').
provenance(real_world_testing_registered/2, 'celex:32024R1689/oj#art_60/par_4/pnt_c').
provenance(testing_duration_within_limits/1, 'celex:32024R1689/oj#art_60/par_4/pnt_f').
provenance(subjects_gave_informed_consent_or_law_enforcement_exception/1, 'celex:32024R1689/oj#art_60/par_4/pnt_i').
provenance(may_withdraw_from_testing/2, 'celex:32024R1689/oj#art_60/par_5').
provenance(must_delete_personal_data_on_withdrawal/3, 'celex:32024R1689/oj#art_60/par_5').
provenance(must_confer_powers_on_market_surveillance/2, 'celex:32024R1689/oj#art_60/par_6').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_adopt_mitigation_or_suspend/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_notify_suspension_termination_outcomes/2, 'celex:32024R1689/oj#art_60/par_8').
provenance(liable_for_damage/2, 'celex:32024R1689/oj#art_60/par_9').

% References
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
