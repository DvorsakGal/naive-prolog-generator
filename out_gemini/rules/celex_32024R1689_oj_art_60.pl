% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a89b894b3eccb77c218741310915262bc6f2ab51f04007cd7ade1bf2e1830424
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
:- pred high_risk_ai_system/1, gloss('AI system considered high-risk'), source('celex:32024R1689/oj#art_60').
:- pred prospective_provider/1, gloss('entity intending to become a provider of an AI system'), source('celex:32024R1689/oj#art_60').
:- pred prospective_deployer/1, gloss('entity intending to deploy an AI system'), source('celex:32024R1689/oj#art_60').
:- pred testing_outside_sandbox/1, gloss('testing in real world conditions conducted outside AI regulatory sandboxes'), source('celex:32024R1689/oj#art_60').
:- pred permitted_testing_in_real_world_conditions/2, gloss('entity is permitted to conduct real-world testing of a system outside sandboxes'), source('celex:32024R1689/oj#art_60').
:- pred conditions_met_testing_outside_sandbox/2, gloss('all statutory conditions for testing outside sandbox are fulfilled'), source('celex:32024R1689/oj#art_60').
:- pred submitted_plan/2, gloss('entity has submitted the testing plan to the market surveillance authority'), source('celex:32024R1689/oj#art_60').
:- pred approved_testing/2, gloss('testing and plan have been approved or tacitly approved'), source('celex:32024R1689/oj#art_60').
:- pred registered_testing/2, gloss('testing has been registered in the appropriate section of EU database'), source('celex:32024R1689/oj#art_60').
:- pred established_or_represented_in_union/1, gloss('entity is established in the Union or has appointed an EU legal representative'), source('celex:32024R1689/oj#art_60').
:- pred data_transfer_safeguards_implemented/1, gloss('safeguards under Union law implemented for third-country data transfers'), source('celex:32024R1689/oj#art_60').
:- pred duration_compliant/1, gloss('testing does not exceed allowed duration limits'), source('celex:32024R1689/oj#art_60').
:- pred vulnerable_groups_protected/1, gloss('vulnerable group subjects are appropriately protected'), source('celex:32024R1689/oj#art_60').
:- pred deployer_cooperation_agreement_concluded/2, gloss('deployer informed, instructed, and agreement concluded'), source('celex:32024R1689/oj#art_60').
:- pred subject_protection_and_consent_met/1, gloss('informed consent or law enforcement exception conditions met'), source('celex:32024R1689/oj#art_60').
:- pred effectively_overseen/1, gloss('testing is overseen by qualified and trained persons'), source('celex:32024R1689/oj#art_60').
:- pred outputs_reversible_and_disregardable/1, gloss('predictions, recommendations, or decisions can be reversed and disregarded'), source('celex:32024R1689/oj#art_60').
:- pred permitted_withdrawal/2, gloss('subject or representative is permitted to withdraw consent and request data deletion'), source('celex:32024R1689/oj#art_60').
:- pred must_report/2, gloss('actor must report an event to an authority'), source('celex:32024R1689/oj#art_60').
:- pred must_mitigate_or_suspend/2, gloss('provider must adopt mitigation measures or suspend testing'), source('celex:32024R1689/oj#art_60').
:- pred must_establish_recall_procedure/2, gloss('provider must establish a prompt recall procedure on termination'), source('celex:32024R1689/oj#art_60').
:- pred must_notify/2, gloss('actor must notify an authority of an event'), source('celex:32024R1689/oj#art_60').
:- pred liable_for_damage/2, gloss('provider or prospective provider is liable for damage in testing'), source('celex:32024R1689/oj#art_60').

% Paragraph 1 & 2: permission to conduct testing outside regulatory sandboxes before placing on the market / putting into service
permitted_testing_in_real_world_conditions(Actor, System) :-
    provider(Actor),
    high_risk_ai_system(System),
    testing_outside_sandbox(System),
    conditions_met_testing_outside_sandbox(Actor, System).

permitted_testing_in_real_world_conditions(Actor, System) :-
    prospective_provider(Actor),
    high_risk_ai_system(System),
    testing_outside_sandbox(System),
    conditions_met_testing_outside_sandbox(Actor, System).

% Paragraph 4: cumulative conditions (a) to (k)
conditions_met_testing_outside_sandbox(Actor, System) :-
    submitted_plan(Actor, System),
    approved_testing(Actor, System),
    registered_testing(Actor, System),
    established_or_represented_in_union(Actor),
    data_transfer_safeguards_implemented(System),
    duration_compliant(System),
    vulnerable_groups_protected(System),
    deployer_cooperation_agreement_concluded(Actor, System),
    subject_protection_and_consent_met(System),
    effectively_overseen(System),
    outputs_reversible_and_disregardable(System).

% Paragraph 5: withdrawal by subjects or representative
permitted_withdrawal(Subject, System) :-
    subject(Subject),
    testing_in_real_world_conditions(System).

permitted_withdrawal(Representative, System) :-
    authorised_representative(Representative),
    testing_in_real_world_conditions(System).

% Paragraph 7: serious incidents reporting, mitigation/suspension, recall procedure
must_report(Actor, incident(Incident, Authority)) :-
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    (provider(Actor) ; prospective_provider(Actor)).

must_mitigate_or_suspend(Actor, System) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_in_real_world_conditions(System).

must_establish_recall_procedure(Actor, System) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_in_real_world_conditions(System).

% Paragraph 8: notification of suspension, termination, or outcomes
must_notify(Actor, outcome_or_termination(System, Authority)) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_in_real_world_conditions(System),
    market_surveillance_authority(Authority).

% Paragraph 9: liability
liable_for_damage(Actor, damage_in_testing(System)) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_in_real_world_conditions(System).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_60').
provenance(prospective_provider/1, 'celex:32024R1689/oj#art_60').
provenance(prospective_deployer/1, 'celex:32024R1689/oj#art_60').
provenance(testing_outside_sandbox/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').
provenance(conditions_met_testing_outside_sandbox/2, 'celex:32024R1689/oj#art_60').
provenance(submitted_plan/2, 'celex:32024R1689/oj#art_60').
provenance(approved_testing/2, 'celex:32024R1689/oj#art_60').
provenance(registered_testing/2, 'celex:32024R1689/oj#art_60').
provenance(established_or_represented_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguards_implemented/1, 'celex:32024R1689/oj#art_60').
provenance(duration_compliant/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_groups_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_cooperation_agreement_concluded/2, 'celex:32024R1689/oj#art_60').
provenance(subject_protection_and_consent_met/1, 'celex:32024R1689/oj#art_60').
provenance(effectively_overseen/1, 'celex:32024R1689/oj#art_60').
provenance(outputs_reversible_and_disregardable/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_withdrawal/2, 'celex:32024R1689/oj#art_60').
provenance(must_report/2, 'celex:32024R1689/oj#art_60').
provenance(must_mitigate_or_suspend/2, 'celex:32024R1689/oj#art_60').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify/2, 'celex:32024R1689/oj#art_60').
provenance(liable_for_damage/2, 'celex:32024R1689/oj#art_60').

references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60/par_1').
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
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').
