% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7094f29ddaaebc64623b85e498c14770b16142adbc2469de6b98a437af913e2c
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
:- pred permitted_testing_in_real_world_conditions/1, gloss('testing of high-risk AI systems outside sandboxes is permitted'), source('celex:32024R1689/oj#art_60').
:- pred must_submit_real_world_testing_plan/2, gloss('provider must submit testing plan to authority'), source('celex:32024R1689/oj#art_60').
:- pred testing_approved_by_authority/2, gloss('authority has approved the testing and plan'), source('celex:32024R1689/oj#art_60').
:- pred must_register_testing/2, gloss('provider must register testing in database'), source('celex:32024R1689/oj#art_60').
:- pred established_or_represented_in_union/1, gloss('provider is established in Union or has representative'), source('celex:32024R1689/oj#art_60').
:- pred data_transfer_safeguards_implemented/1, gloss('safeguards for third country data transfer are in place'), source('celex:32024R1689/oj#art_60').
:- pred testing_duration_compliant/1, gloss('testing duration does not exceed limits'), source('celex:32024R1689/oj#art_60').
:- pred vulnerable_subjects_protected/1, gloss('vulnerable subjects are appropriately protected'), source('celex:32024R1689/oj#art_60').
:- pred deployer_informed_and_agreed/2, gloss('deployer informed and agreement concluded'), source('celex:32024R1689/oj#art_60').
:- pred subject_consent_or_law_enforcement_exception/2, gloss('informed consent obtained or law enforcement exception applies'), source('celex:32024R1689/oj#art_60').
:- pred testing_effectively_overseen/1, gloss('testing overseen by qualified persons'), source('celex:32024R1689/oj#art_60').
:- pred ai_output_reversible/1, gloss('predictions recommendations or decisions can be reversed'), source('celex:32024R1689/oj#art_60').
:- pred must_report_serious_incident/2, gloss('provider must report serious incident to authority'), source('celex:32024R1689/oj#art_60').
:- pred must_mitigate_or_suspend_testing/2, gloss('provider must mitigate or suspend testing after incident'), source('celex:32024R1689/oj#art_60').
:- pred must_notify_testing_outcome/2, gloss('provider must notify suspension termination or outcomes'), source('celex:32024R1689/oj#art_60').
:- pred liable_for_testing_damage/2, gloss('provider liable for damage caused during testing'), source('celex:32024R1689/oj#art_60').

permitted_testing_in_real_world_conditions(S) :-
    testing_in_real_world_conditions(S),
    \+ prohibited_ai_practice(S),
    must_submit_real_world_testing_plan(_P, S),
    testing_approved_by_authority(_A, S),
    must_register_testing(_P, S),
    established_or_represented_in_union(_P),
    data_transfer_safeguards_implemented(S),
    testing_duration_compliant(S),
    vulnerable_subjects_protected(S),
    subject_consent_or_law_enforcement_exception(S, _Subj),
    testing_effectively_overseen(S),
    ai_output_reversible(S).

must_submit_real_world_testing_plan(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    real_world_testing_plan(Plan),
    submitted_to_market_surveillance_authority(P, Plan, S).

testing_approved_by_authority(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    explicit_approval(A, S).
testing_approved_by_authority(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    tacit_approval_applies(A, S).

must_register_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    \+ exempt_from_public_registration(S),
    registered_in_eu_database(P, S).
must_register_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    exempt_from_public_registration(S),
    registered_in_secure_non_public_section(P, S).

established_or_represented_in_union(P) :-
    provider(P),
    established_in_union(P).
established_or_represented_in_union(P) :-
    provider(P),
    appointed_legal_representative_in_union(P).

data_transfer_safeguards_implemented(S) :-
    testing_in_real_world_conditions(S),
    appropriate_safeguards_for_third_country_transfer(S).

testing_duration_compliant(S) :-
    testing_in_real_world_conditions(S),
    duration_not_exceeding_necessary(S),
    duration_within_limit(S).

vulnerable_subjects_protected(S) :-
    testing_in_real_world_conditions(S),
    subject(S, Subj),
    vulnerable_group(Subj),
    appropriate_protection(Subj).

deployer_informed_and_agreed(P, D) :-
    provider(P),
    deployer(D),
    testing_in_real_world_conditions(S),
    cooperation_with_deployer(P, D, S),
    informed_of_relevant_aspects(D, S),
    instructions_for_use_provided(P, D, S),
    agreement_on_roles_and_responsibilities(P, D, S).

subject_consent_or_law_enforcement_exception(S, Subj) :-
    testing_in_real_world_conditions(S),
    subject(S, Subj),
    informed_consent(Subj, S).
subject_consent_or_law_enforcement_exception(S, Subj) :-
    testing_in_real_world_conditions(S),
    subject(S, Subj),
    law_enforcement_testing(S),
    consent_would_prevent_testing(S),
    no_negative_effect_on_subject(Subj, S),
    personal_data_deleted_after_test(Subj, S).

testing_effectively_overseen(S) :-
    testing_in_real_world_conditions(S),
    oversight_by_provider_or_deployer(S),
    suitably_qualified_personnel(S).

ai_output_reversible(S) :-
    testing_in_real_world_conditions(S),
    predictions_reversible(S),
    recommendations_reversible(S),
    decisions_reversible(S).

must_report_serious_incident(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    occurred_during_testing(I, S),
    reported_to_national_market_surveillance_authority(P, I).

must_mitigate_or_suspend_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    occurred_during_testing(I, S),
    immediate_mitigation_adopted(P, I).
must_mitigate_or_suspend_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    occurred_during_testing(I, S),
    \+ immediate_mitigation_adopted(P, I),
    suspended_until_mitigation(P, S).

must_notify_testing_outcome(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    suspension_or_termination(S),
    notified_to_market_surveillance_authority(P, S).
must_notify_testing_outcome(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    final_outcomes(O),
    notified_to_market_surveillance_authority(P, O).

liable_for_testing_damage(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    damage_caused_during_testing(S).

provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60').
provenance(must_submit_real_world_testing_plan/2, 'celex:32024R1689/oj#art_60').
provenance(testing_approved_by_authority/2, 'celex:32024R1689/oj#art_60').
provenance(must_register_testing/2, 'celex:32024R1689/oj#art_60').
provenance(established_or_represented_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguards_implemented/1, 'celex:32024R1689/oj#art_60').
provenance(testing_duration_compliant/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_informed_and_agreed/2, 'celex:32024R1689/oj#art_60').
provenance(subject_consent_or_law_enforcement_exception/2, 'celex:32024R1689/oj#art_60').
provenance(testing_effectively_overseen/1, 'celex:32024R1689/oj#art_60').
provenance(ai_output_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60').
provenance(must_mitigate_or_suspend_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_testing_outcome/2, 'celex:32024R1689/oj#art_60').
provenance(liability_for_testing_damage/2, 'celex:32024R1689/oj#art_60').

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
