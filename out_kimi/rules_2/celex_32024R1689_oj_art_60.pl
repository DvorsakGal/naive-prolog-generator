% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : d44533efd5aece658d64d3c024dd6c2fe51a96eb8db6f605635d1be32ff5a6b8
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
:- pred permitted_testing_in_real_world_conditions/1, gloss('testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes is permitted'), source('celex:32024R1689/oj#art_60').
:- pred must_adopt_implementing_acts/2, gloss('Commission shall adopt implementing acts specifying detailed elements'), source('celex:32024R1689/oj#art_60/par_1').
:- pred condition_for_testing/2, gloss('condition that must be met for testing in real world conditions'), source('celex:32024R1689/oj#art_60/par_4').
:- pred tacit_approval_applies/1, gloss('testing approved after 30 days without response'), source('celex:32024R1689/oj#art_60/par_4').
:- pred authorisation_required/1, gloss('testing remains subject to authorisation where national law does not provide tacit approval'), source('celex:32024R1689/oj#art_60/par_4').
:- pred must_register_testing/2, gloss('provider must register testing in real world conditions'), source('celex:32024R1689/oj#art_60/par_4').
:- pred testing_duration_limit/2, gloss('maximum duration of testing with possible extension'), source('celex:32024R1689/oj#art_60/par_4').
:- pred must_notify_extension/2, gloss('provider must notify market surveillance authority of extension'), source('celex:32024R1689/oj#art_60/par_4').
:- pred vulnerable_subjects_protected/1, gloss('subjects from vulnerable groups are appropriately protected'), source('celex:32024R1689/oj#art_60/par_4').
:- pred deployer_informed/2, gloss('deployer has been informed of relevant aspects of testing'), source('celex:32024R1689/oj#art_60/par_4').
:- pred testing_agreement_concluded/2, gloss('provider and deployer have concluded agreement specifying roles and responsibilities'), source('celex:32024R1689/oj#art_60/par_4').
:- pred informed_consent_obtained/1, gloss('subjects have given informed consent for testing'), source('celex:32024R1689/oj#art_60/par_4').
:- pred law_enforcement_testing_no_negative_effect/1, gloss('law enforcement testing has no negative effect on subjects and personal data deleted after test'), source('celex:32024R1689/oj#art_60/par_4').
:- pred effectively_overseen/1, gloss('testing is effectively overseen by qualified persons'), source('celex:32024R1689/oj#art_60/par_4').
:- pred predictions_reversible/1, gloss('predictions, recommendations or decisions of AI system can be effectively reversed and disregarded'), source('celex:32024R1689/oj#art_60/par_4').
:- pred may_withdraw_consent/1, gloss('subject may withdraw from testing and request deletion of personal data'), source('celex:32024R1689/oj#art_60/par_5').
:- provenance_withdrawal_no_detriment/0, gloss('withdrawal does not cause detriment or require justification'), source('celex:32024R1689/oj#art_60/par_5').
:- pred must_report_serious_incident/2, gloss('serious incident must be reported to national market surveillance authority'), source('celex:32024R1689/oj#art_60/par_7').
:- pred must_adopt_mitigation_measures/2, gloss('provider must adopt immediate mitigation measures or suspend/terminate testing'), source('celex:32024R1689/oj#art_60/par_7').
:- pred must_establish_recall_procedure/2, gloss('provider must establish procedure for prompt recall of AI system upon termination'), source('celex:32024R1689/oj#art_60/par_7').
:- pred must_notify_outcomes/2, gloss('provider must notify market surveillance authority of suspension, termination and final outcomes'), source('celex:32024R1689/oj#art_60/par_8').
:- pred liable_for_testing_damage/2, gloss('provider is liable for damage caused in course of testing'), source('celex:32024R1689/oj#art_60/par_9').

permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S),
    (provider(P); prospective_provider(P)),
    listed_in_annex_3(S),
    \+ prohibited_practice(S).

must_adopt_implementing_acts(commission, detailed_elements_of_real_world_testing_plan).

condition_for_testing(drawn_up_plan_submitted(P, S, A), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    real_world_testing_plan(Plan),
    drawn_up(Plan),
    market_surveillance_authority(A),
    submitted_to(Plan, A).

condition_for_testing(approved_by_authority_or_tacit(S, A), S) :-
    market_surveillance_authority(A),
    (approved_testing(S, A); tacit_approval_applies(S)).

tacit_approval_applies(S) :-
    testing_in_real_world_conditions(S),
    \+ response_received_within_days(S, 30),
    \+ national_law_provides_otherwise(tacit_approval).

authorisation_required(S) :-
    testing_in_real_world_conditions(S),
    national_law_provides_otherwise(tacit_approval).

condition_for_testing(registered_testing(P, S), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    \+ exempt_from_standard_registration(S),
    registered_with_information_specified(S),
    union_wide_unique_single_identification_number(S).

condition_for_testing(registered_testing_secure(P, S), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    (annex_3_point_1_applies(S); annex_3_point_6_applies(S); annex_3_point_7_applies(S)),
    law_enforcement_migration_asylum_border_control_area(S),
    registered_in_secure_non_public_section(S),
    union_wide_unique_single_identification_number(S).

condition_for_testing(registered_testing_art_49_5(P, S), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system_referred_in_annex_3_point_2(S),
    registered_under_article_49_par_5(S).

exempt_from_standard_registration(S) :-
    (annex_3_point_1_applies(S); annex_3_point_6_applies(S); annex_3_point_7_applies(S)),
    law_enforcement_migration_asylum_border_control_area(S).
exempt_from_standard_registration(S) :-
    high_risk_ai_system_referred_in_annex_3_point_2(S).

condition_for_testing(established_or_represented_in_union(P), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    (established_in_union(P); has_legal_representative_established_in_union(P)).

condition_for_testing(data_transfer_safeguards(S), S) :-
    testing_in_real_world_conditions(S),
    appropriate_safeguards(data_transfer_to_third_countries).

condition_for_testing(duration_limit(S), S) :-
    testing_in_real_world_conditions(S),
    testing_duration_limit(S, Duration),
    Duration = months(6, possible_extension(months(6))).

testing_duration_limit(S, months(6, possible_extension(months(6)))) :-
    testing_in_real_world_conditions(S),
    \+ extension_approved(S).

must_notify_extension(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    extension_requested(S),
    notified(P, market_surveillance_authority),
    explanation_of_need_provided(S).

condition_for_testing(vulnerable_groups_protected(S), S) :-
    testing_in_real_world_conditions(S),
    subject(Belonging),
    vulnerable_group(Belonging),
    appropriately_protected(Belonging).

vulnerable_group(age).
vulnerable_group(disability).

condition_for_testing(deployer_cooperation_agreement(P, D, S), S) :-
    (provider(P); prospective_provider(P)),
    (deployer(D); prospective_deployer(D)),
    testing_in_real_world_conditions(S),
    deployer_informed(D, relevant_aspects_of_testing(S)),
    instructions_for_use_applicable(S),
    testing_agreement_concluded(P, D),
    roles_and_responsibilities_specified(P, D).

condition_for_testing(informed_consent_or_law_enforcement_safeguard(S), S) :-
    testing_in_real_world_conditions(S),
    (informed_consent_obtained(S); law_enforcement_testing_no_negative_effect(S)).

law_enforcement_testing_no_negative_effect(S) :-
    testing_in_real_world_conditions(S),
    law_enforcement(S),
    seeking_consent_would_prevent_testing(S),
    \+ negative_effect_on_subjects(S),
    personal_data_deleted_after_test(S).

condition_for_testing(effective_oversight(S), S) :-
    testing_in_real_world_conditions(S),
    effectively_overseen(S),
    overseer_qualified(S),
    overseer_has_capacity_training_authority(S).

condition_for_testing(predictions_reversible(S), S) :-
    testing_in_real_world_conditions(S),
    predictions_reversible(S).

may_withdraw_consent(Subject) :-
    subject(Subject),
    testing_in_real_world_conditions(S),
    participates_in(Subject, S),
    \+ resulting_detriment(withdrawal(Subject)),
    \+ justification_required(withdrawal(Subject)),
    may_revoke_informed_consent(Subject, S),
    may_request_deletion(Subject, personal_data).

withdrawal_does_not_affect_activities_already_carried_out(S) :-
    testing_in_real_world_conditions(S),
    withdrawal_occurred(Subject, S).

must_report_serious_incident(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    identified_in_course_of_testing(I, S),
    reported_to(I, national_market_surveillance_authority).

must_adopt_mitigation_measures(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    identified_in_course_of_testing(I, S),
    (adopts_immediate_mitigation_measures(P, S); suspends_testing(P, S); terminates_testing(P, S)).

must_establish_recall_procedure(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    termination_of_testing(S),
    procedure_for_prompt_recall(S).

must_notify_outcomes(P, A) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    market_surveillance_authority(A),
    (suspension_of_testing(S); termination_of_testing(S)),
    final_outcomes(S),
    notified(P, A).

liable_for_testing_damage(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    damage_caused(D),
    in_course_of_testing(D, S).

provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_60').
provenance(condition_for_testing/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(tacit_approval_applies/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(authorisation_required/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(must_register_testing/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(testing_duration_limit/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(must_notify_extension/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(deployer_informed/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(testing_agreement_concluded/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(informed_consent_obtained/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(law_enforcement_testing_no_negative_effect/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(effectively_overseen/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(predictions_reversible/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(may_withdraw_consent/1, 'celex:32024R1689/oj#art_60/par_5').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_adopt_mitigation_measures/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_notify_outcomes/2, 'celex:32024R1689/oj#art_60/par_8').
provenance(liable_for_testing_damage/2, 'celex:32024R1689/oj#art_60/par_9').

references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60/par_1', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60/par_1', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_71/par_4').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_49/par_5').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60/par_6', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60/par_7', 'celex:32024R1689/oj#art_73').
