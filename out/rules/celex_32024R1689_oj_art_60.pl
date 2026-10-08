% unit       : celex:32024R1689/oj#art_60
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : gpt-oss:120b-cloud
% prompt sha : 94169d5eb96ace98608ecd9bb0b5315c3e7186a388fdf02acd1b7e9f2768f37e
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred prospective_provider/1, gloss('entity that intends to become a provider of a high‑risk AI system'), source('art_60').
:- pred prospective_deployer/1, gloss('entity that intends to become a deployer of a high‑risk AI system'), source('art_60').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('art_60').
:- pred before_market_placement/1, gloss('the AI system has not yet been placed on the market nor put into service'), source('art_60').
:- pred testing_plan_drawn_up/2, gloss('provider or prospective provider has prepared a real‑world testing plan for the AI system'), source('art_60').
:- pred testing_plan_submitted/2, gloss('testing plan has been submitted to the market surveillance authority'), source('art_60').
:- pred testing_approved/3, gloss('market surveillance authority has approved the testing and the testing plan'), source('art_60').
:- pred registration_number/3, gloss('unique Union‑wide identification number assigned to the testing'), source('art_60').
:- pred established_in_union/1, gloss('entity is established in the Union or has a legal representative established in the Union'), source('art_60').
:- pred third_country_transfer_safeguards/2, gloss('appropriate safeguards are in place for any transfer of data to third countries'), source('art_60').
:- pred duration_not_exceeding_limit/1, gloss('testing does not last longer than six months, with a possible six‑month extension'), source('art_60').
:- pred vulnerable_subjects_protected/1, gloss('subjects belonging to vulnerable groups are appropriately protected'), source('art_60').
:- pred information_provided/2, gloss('deployer is informed of all relevant aspects of the testing and receives instructions for use'), source('art_60').
:- pred informed_consent_obtained/1, gloss('subjects have given informed consent or, where consent is impossible, safeguards ensure no negative effect and data deletion'), source('art_60').
:- pred oversight_by/2, gloss('testing is overseen by qualified persons from provider and deployer'), source('art_60').
:- pred reversibility_possible/1, gloss('predictions, recommendations or decisions of the AI system can be effectively reversed or disregarded'), source('art_60').
:- pred occurs_during_testing/2, gloss('incident occurs during the real‑world testing of the AI system'), source('art_60').
:- pred report_to/2, gloss('incident is reported to the market surveillance authority'), source('art_60').
:- pred suspend_testing/2, gloss('testing is suspended pending mitigation'), source('art_60').
:- pred recall_procedure_established/2, gloss('procedure for prompt recall of the AI system is in place'), source('art_60').
:- pred notification_sent/3, gloss('authority is notified of suspension or termination and final outcomes'), source('art_60').
:- pred liable_under_law/2, gloss('provider or prospective provider is liable for damage caused by testing'), source('art_60').

% -----------------------------------------------------------------
% Permissions
permitted_testing_high_risk_ai_system(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    before_market_placement(S).

% -----------------------------------------------------------------
% Requirements (conditions to be fulfilled before testing)
required_testing_plan_submitted(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    testing_plan_drawn_up(P, S),
    testing_plan_submitted(P, S).

required_testing_approval(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    market_surveillance_authority(MSA),
    testing_approved(P, S, MSA).

required_registration(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    registration_number(P, S, _ID).

required_union_established(P) :-
    (provider(P) ; prospective_provider(P)),
    established_in_union(P).

required_third_country_transfer_safeguards(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    third_country_transfer_safeguards(P, S).

required_testing_duration_limit(S) :-
    duration_not_exceeding_limit(S),
    duration_not_exceeding_limit(S).

required_protection_vulnerable_subjects(S) :-
    vulnerable_subjects_protected(S),
    vulnerable_subjects_protected(S).

required_information_to_deployer(P, D) :-
    (provider(P) ; prospective_provider(P)),
    deployer(D),
    information_provided(P, D).

required_informed_consent(S) :-
    informed_consent_obtained(S),
    informed_consent_obtained(S).

required_oversight(P, S) :-
    (provider(P) ; prospective_provider(P)),
    oversight_by(P, S),
    oversight_by(P, S).

required_reversibility(S) :-
    reversibility_possible(S),
    reversibility_possible(S).

% -----------------------------------------------------------------
% Duties of the provider / prospective provider
must_report_serious_incident(P, S) :-
    (provider(P) ; prospective_provider(P)),
    serious_incident(I),
    occurs_during_testing(I, S),
    market_surveillance_authority(MSA),
    report_to(MSA, I).

must_suspend_testing(P, S) :-
    (provider(P) ; prospective_provider(P)),
    serious_incident(I),
    occurs_during_testing(I, S),
    suspend_testing(P, S).

must_establish_recall_procedure(P, S) :-
    (provider(P) ; prospective_provider(P)),
    recall_procedure_established(P, S),
    recall_procedure_established(P, S).

must_notify_suspension_or_termination(P, S) :-
    (provider(P) ; prospective_provider(P)),
    market_surveillance_authority(MSA),
    notification_sent(P, MSA, S),
    notification_sent(P, MSA, S).

must_be_liable(P, S) :-
    (provider(P) ; prospective_provider(P)),
    liable_under_law(P, S),
    liable_under_law(P, S).

% -----------------------------------------------------------------
% Supporting condition definitions
before_market_placement(S) :-
    \+ placing_on_market(S),
    \+ putting_into_service(S).

% -----------------------------------------------------------------
% Provenance
provenance(permitted_testing_high_risk_ai_system/2, 'celex:32024R1689/oj#art_60').
provenance(required_testing_plan_submitted/2, 'celex:32024R1689/oj#art_60').
provenance(required_testing_approval/2, 'celex:32024R1689/oj#art_60').
provenance(required_registration/2, 'celex:32024R1689/oj#art_60').
provenance(required_union_established/1, 'celex:32024R1689/oj#art_60').
provenance(required_third_country_transfer_safeguards/2, 'celex:32024R1689/oj#art_60').
provenance(required_testing_duration_limit/1, 'celex:32024R1689/oj#art_60').
provenance(required_protection_vulnerable_subjects/1, 'celex:32024R1689/oj#art_60').
provenance(required_information_to_deployer/2, 'celex:32024R1689/oj#art_60').
provenance(required_informed_consent/1, 'celex:32024R1689/oj#art_60').
provenance(required_oversight/2, 'celex:32024R1689/oj#art_60').
provenance(required_reversibility/1, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60').
provenance(must_suspend_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_suspension_or_termination/2, 'celex:32024R1689/oj#art_60').
provenance(must_be_liable/2, 'celex:32024R1689/oj#art_60').
provenance(before_market_placement/1, 'celex:32024R1689/oj#art_60').

% -----------------------------------------------------------------
% References
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
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').
