% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 757828621dab9e73375b7c28b5116312046e70f85e0ef427d70b95e9dddc951e
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
:- pred prospective_provider/1, gloss('prospective provider of a high-risk AI system'), source('celex:32024R1689/oj#art_60').
:- pred prospective_deployer/1, gloss('prospective deployer of a high-risk AI system'), source('celex:32024R1689/oj#art_60').
:- pred testing_in_real_world_conditions_outside_sandbox/2, gloss('testing of high-risk AI system in real world conditions outside AI regulatory sandboxes by provider or prospective provider'), source('celex:32024R1689/oj#art_60').
:- pred real_world_testing_plan_submitted/2, gloss('provider or prospective provider has drawn up and submitted real-world testing plan to market surveillance authority'), source('celex:32024R1689/oj#art_60').
:- pred testing_approved_by_authority/2, gloss('market surveillance authority has approved testing and real-world testing plan'), source('celex:32024R1689/oj#art_60').
:- pred tacit_approval_applies/1, gloss('testing understood to have been approved due to no answer within 30 days and national law provides for tacit approval'), source('celex:32024R1689/oj#art_60').
:- pred authorisation_required/1, gloss('testing remains subject to authorisation because national law does not provide for tacit approval'), source('celex:32024R1689/oj#art_60').
:- pred testing_registered_public_section/2, gloss('testing registered in public section of EU database with Union-wide unique single identification number'), source('celex:32024R1689/oj#art_60').
:- pred testing_registered_secure_non_public_section/2, gloss('testing registered in secure non-public section of EU database with Union-wide unique single identification number'), source('celex:32024R1689/oj#art_60').
:- pred provider_established_in_union_or_has_representative/1, gloss('provider or prospective provider is established in the Union or has appointed a legal representative established in the Union'), source('celex:32024R1689/oj#art_60').
:- pred data_transfer_to_third_countries_safeguarded/1, gloss('data transferred to third countries only with appropriate and applicable safeguards under Union law'), source('celex:32024R1689/oj#art_60').
:- pred testing_duration_limited/1, gloss('testing does not last longer than necessary and in any case not longer than six months, extendable for additional six months with prior notification'), source('celex:32024R1689/oj#art_60').
:- pred vulnerable_subjects_protected/1, gloss('subjects belonging to vulnerable groups due to age or disability are appropriately protected'), source('celex:32024R1689/oj#art_60').
:- pred deployers_informed_and_agreement_concluded/2, gloss('deployers informed of all relevant aspects and agreement concluded specifying roles and responsibilities'), source('celex:32024R1689/oj#art_60').
:- pred informed_consent_given_or_law_enforcement_exception/1, gloss('subjects gave informed consent or law enforcement exception applies with no negative effect and data deletion'), source('celex:32024R1689/oj#art_60').
:- pred testing_effectively_overseen/1, gloss('testing effectively overseen by qualified persons with necessary capacity, training and authority'), source('celex:32024R1689/oj#art_60').
:- pred predictions_recommendations_decisions_reversible/1, gloss('predictions, recommendations or decisions of AI system can be effectively reversed and disregarded'), source('celex:32024R1689/oj#art_60').
:- pred subject_may_withdraw/1, gloss('subject or legally designated representative may withdraw from testing at any time by revoking informed consent'), source('celex:32024R1689/oj#art_60').
:- pred subject_may_request_deletion/1, gloss('subject may request immediate and permanent deletion of personal data'), source('celex:32024R1689/oj#art_60').
:- pred withdrawal_does_not_affect_prior_activities/1, gloss('withdrawal of informed consent does not affect activities already carried out'), source('celex:32024R1689/oj#art_60').
:- pred market_surveillance_powers_for_testing/1, gloss('market surveillance authorities have powers to require information, carry out inspections, and perform checks on testing'), source('celex:32024R1689/oj#art_60').
:- pred serious_incident_reported_during_testing/2, gloss('serious incident identified during testing reported to national market surveillance authority'), source('celex:32024R1689/oj#art_60').
:- pred mitigation_measures_adopted_or_testing_suspended/1, gloss('provider adopts immediate mitigation measures or suspends testing until mitigation takes place or terminates it'), source('celex:32024R1689/oj#art_60').
:- pred recall_procedure_established/1, gloss('provider establishes procedure for prompt recall of AI system upon termination of testing'), source('celex:32024R1689/oj#art_60').
:- pred suspension_or_termination_notified/2, gloss('provider notifies national market surveillance authority of suspension or termination and final outcomes'), source('celex:32024R1689/oj#art_60').
:- pred provider_liable_for_damage/1, gloss('provider or prospective provider liable under applicable Union and national liability law for damage caused during testing'), source('celex:32024R1689/oj#art_60').
:- pred ethical_review_not_prejudiced/1, gloss('testing is without prejudice to any ethical review required by Union or national law'), source('celex:32024R1689/oj#art_60').
:- pred union_national_law_on_product_testing_not_prejudiced/1, gloss('testing is without prejudice to Union or national law on testing of high-risk AI systems related to products covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_60').

permitted_testing_in_real_world_conditions(P, S) :-
    testing_in_real_world_conditions_outside_sandbox(P, S).

testing_in_real_world_conditions_outside_sandbox(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    real_world_testing_plan(P, S),
    \+ non_compliance_with_prohibition(S).

testing_in_real_world_conditions_outside_sandbox(P, S) :-
    prospective_provider(P),
    high_risk_ai_system(S),
    real_world_testing_plan(P, S),
    \+ non_compliance_with_prohibition(S).

testing_in_real_world_conditions_outside_sandbox(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    in_partnership_with_deployers(P, S).

testing_in_real_world_conditions_outside_sandbox(P, S) :-
    prospective_provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    in_partnership_with_deployers(P, S).

in_partnership_with_deployers(P, S) :-
    provider(P),
    deployer(D),
    partnership(P, D, S).

in_partnership_with_deployers(P, S) :-
    prospective_provider(P),
    prospective_deployer(D),
    partnership(P, D, S).

permitted_testing_conditions_met(P, S) :-
    real_world_testing_plan_submitted(P, S),
    testing_approved_by_authority(P, S),
    testing_registration_completed(P, S),
    provider_established_in_union_or_has_representative(P),
    data_transfer_to_third_countries_safeguarded(S),
    testing_duration_limited(S),
    vulnerable_subjects_protected(S),
    deployers_informed_and_agreement_concluded(P, S),
    informed_consent_given_or_law_enforcement_exception(S),
    testing_effectively_overseen(S),
    predictions_recommendations_decisions_reversible(S).

testing_approved_by_authority(P, S) :-
    market_surveillance_authority(A),
    approved_testing(A, P, S).

testing_approved_by_authority(P, S) :-
    market_surveillance_authority(A),
    tacit_approval_applies(approval(A, P, S)).

testing_approved_by_authority(P, S) :-
    market_surveillance_authority(A),
    authorisation_required(approval(A, P, S)),
    authorised_testing(A, P, S).

tacit_approval_applies(approval(A, P, S)) :-
    market_surveillance_authority(A),
    no_answer_within(days(30), A, P, S),
    national_law_provides_tacit_approval(A).

authorisation_required(approval(A, P, S)) :-
    market_surveillance_authority(A),
    \+ national_law_provides_tacit_approval(A).

testing_registration_completed(P, S) :-
    annex_3_point_1(S),
    testing_registered_secure_non_public_section(P, S).

testing_registration_completed(P, S) :-
    law_enforcement_area(S),
    testing_registered_secure_non_public_section(P, S).

testing_registration_completed(P, S) :-
    annex_3_point_1(S),
    \+ law_enforcement_area(S),
    testing_registered_public_section(P, S).

testing_registration_completed(P, S) :-
    \+ annex_3_point_1(S),
    \+ law_enforcement_area(S),
    testing_registered_public_section(P, S).

must_notify_suspension_or_termination(P, A) :-
    provider(P),
    market_surveillance_authority(A),
    suspension_or_termination_notified(P, A).

must_notify_suspension_or_termination(P, A) :-
    prospective_provider(P),
    market_surveillance_authority(A),
    suspension_or_termination_notified(P, A).

must_report_serious_incident(P, A) :-
    provider(P),
    market_surveillance_authority(A),
    serious_incident_reported_during_testing(P, A).

must_report_serious_incident(P, A) :-
    prospective_provider(P),
    market_surveillance_authority(A),
    serious_incident_reported_during_testing(P, A).

must_adopt_mitigation_or_suspend(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident_during_testing(S),
    mitigation_measures_adopted_or_testing_suspended(mitigation(P, S)).

must_adopt_mitigation_or_suspend(P, S) :-
    prospective_provider(P),
    high_risk_ai_system(S),
    serious_incident_during_testing(S),
    mitigation_measures_adopted_or_testing_suspended(mitigation(P, S)).

must_establish_recall_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    testing_terminated(S),
    recall_procedure_established(recall(P, S)).

must_establish_recall_procedure(P, S) :-
    prospective_provider(P),
    high_risk_ai_system(S),
    testing_terminated(S),
    recall_procedure_established(recall(P, S)).

provider_liable_for_damage(P) :-
    provider(P),
    damage_caused_during_testing(P).

provider_liable_for_damage(P) :-
    prospective_provider(P),
    damage_caused_during_testing(P).

subject_may_withdraw(S) :-
    subject(S),
    withdrawal_without_detriment(S).

subject_may_withdraw(S) :-
    legally_designated_representative(R),
    subject(S),
    withdrawal_without_detriment_by_representative(R, S).

subject_may_request_deletion(S) :-
    subject(S),
    deletion_request_permitted(S).

subject_may_request_deletion(S) :-
    legally_designated_representative(R),
    subject(S),
    deletion_request_permitted_by_representative(R, S).

withdrawal_does_not_affect_prior_activities(S) :-
    subject(S),
    informed_consent_revoked(S),
    prior_activities_unaffected(S).

ethical_review_not_prejudiced(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions_outside_sandbox(_P, S).

union_national_law_on_product_testing_not_prejudiced(S) :-
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    testing_in_real_world_conditions_outside_sandbox(_P, S).

market_surveillance_powers_for_testing(A) :-
    market_surveillance_authority(A),
    member_state(A),
    powers_conferred(A, testing_inspection).

provenance(prospective_provider/1, 'celex:32024R1689/oj#art_60').
provenance(prospective_deployer/1, 'celex:32024R1689/oj#art_60').
provenance(testing_in_real_world_conditions_outside_sandbox/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_plan_submitted/2, 'celex:32024R1689/oj#art_60').
provenance(testing_approved_by_authority/2, 'celex:32024R1689/oj#art_60').
provenance(tacit_approval_applies/1, 'celex:32024R1689/oj#art_60').
provenance(authorisation_required/1, 'celex:32024R1689/oj#art_60').
provenance(testing_registered_public_section/2, 'celex:32024R1689/oj#art_60').
provenance(testing_registered_secure_non_public_section/2, 'celex:32024R1689/oj#art_60').
provenance(provider_established_in_union_or_has_representative/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_to_third_countries_safeguarded/1, 'celex:32024R1689/oj#art_60').
provenance(testing_duration_limited/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployers_informed_and_agreement_concluded/2, 'celex:32024R1689/oj#art_60').
provenance(informed_consent_given_or_law_enforcement_exception/1, 'celex:32024R1689/oj#art_60').
provenance(testing_effectively_overseen/1, 'celex:32024R1689/oj#art_60').
provenance(predictions_recommendations_decisions_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(subject_may_withdraw/1, 'celex:32024R1689/oj#art_60').
provenance(subject_may_request_deletion/1, 'celex:32024R1689/oj#art_60').
provenance(withdrawal_does_not_affect_prior_activities/1, 'celex:32024R1689/oj#art_60').
provenance(market_surveillance_powers_for_testing/1, 'celex:32024R1689/oj#art_60').
provenance(serious_incident_reported_during_testing/2, 'celex:32024R1689/oj#art_60').
provenance(mitigation_measures_adopted_or_testing_suspended/1, 'celex:32024R1689/oj#art_60').
provenance(recall_procedure_established/1, 'celex:32024R1689/oj#art_60').
provenance(suspension_or_termination_notified/2, 'celex:32024R1689/oj#art_60').
provenance(provider_liable_for_damage/1, 'celex:32024R1689/oj#art_60').
provenance(ethical_review_not_prejudiced/1, 'celex:32024R1689/oj#art_60').
provenance(union_national_law_on_product_testing_not_prejudiced/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_conditions_met/2, 'celex:32024R1689/oj#art_60').
provenance(testing_approved_by_authority/2, 'celex:32024R1689/oj#art_60').
provenance(tacit_approval_applies/1, 'celex:32024R1689/oj#art_60').
provenance(authorisation_required/1, 'celex:32024R1689/oj#art_60').
provenance(testing_registration_completed/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_suspension_or_termination/2, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60').
provenance(must_adopt_mitigation_or_suspend/2, 'celex:32024R1689/oj#art_60').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').
provenance(provider_liable_for_damage/1, 'celex:32024R1689/oj#art_60').
provenance(subject_may_withdraw/1, 'celex:32024R1689/oj#art_60').
provenance(subject_may_request_deletion/1, 'celex:32024R1689/oj#art_60').
provenance(withdrawal_does_not_affect_prior_activities/1, 'celex:32024R1689/oj#art_60').
provenance(ethical_review_not_prejudiced/1, 'celex:32024R1689/oj#art_60').
provenance(union_national_law_on_product_testing_not_prejudiced/1, 'celex:32024R1689/oj#art_60').

references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
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
