% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 98a57977e909bd2ce1a6cf317e408bafdccd9a4b1ad871723bde7b47b38c9584
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_60').
:- pred annex_3_high_risk_ai_system/1, gloss('High-risk AI system listed in Annex III'), source('celex:32024R1689/oj#art_60').
:- pred prospective_provider/1, gloss('Entity intending to place an AI system on the market or put it into service'), source('celex:32024R1689/oj#art_60').
:- pred testing_conditions_met/2, gloss('Mandatory conditions under Article 60(4) are met for real-world testing of AI system by provider'), source('celex:32024R1689/oj#art_60').
:- pred testing_plan_submitted/3, gloss('Provider submitted testing plan for AI system to market surveillance authority'), source('celex:32024R1689/oj#art_60').
:- pred testing_plan_approved/3, gloss('Testing plan and testing approved by market surveillance authority explicitly or tacitly'), source('celex:32024R1689/oj#art_60').
:- pred testing_registered/2, gloss('Testing in real-world conditions registered according to requirements'), source('celex:32024R1689/oj#art_60').
:- pred established_in_union_or_has_representative/1, gloss('Provider is established in Union or appointed EU legal representative'), source('celex:32024R1689/oj#art_60').
:- pred third_country_transfer_safeguards_complied/1, gloss('Appropriate Union safeguards implemented for transfer of testing data to third countries'), source('celex:32024R1689/oj#art_60').
:- pred duration_compliant/1, gloss('Testing does not exceed necessary duration and not longer than six months unless validly extended'), source('celex:32024R1689/oj#art_60').
:- pred vulnerable_groups_protected/1, gloss('Subjects belonging to vulnerable groups are appropriately protected'), source('celex:32024R1689/oj#art_60').
:- pred deployer_cooperation_conditions_met/2, gloss('Deployer cooperation informed, instructed, and agreement concluded'), source('celex:32024R1689/oj#art_60').
:- pred informed_consent_or_law_enforcement_safeguards_met/2, gloss('Informed consent given or alternative law enforcement safeguards met'), source('celex:32024R1689/oj#art_60').
:- pred effectively_overseen/2, gloss('Testing is effectively overseen by suitably qualified personnel'), source('celex:32024R1689/oj#art_60').
:- pred outputs_reversible_and_disregardable/1, gloss('Predictions, recommendations, or decisions can be effectively reversed and disregarded'), source('celex:32024R1689/oj#art_60').
:- pred permitted_withdraw_from_testing/2, gloss('Subject or representative may withdraw from testing anytime without detriment'), source('celex:32024R1689/oj#art_60').
:- pred testing_serious_incident_occurred/2, gloss('Serious incident identified in the course of real-world testing of system'), source('celex:32024R1689/oj#art_60').
:- pred testing_suspended_or_terminated/2, gloss('Testing in real-world conditions has been suspended or terminated'), source('celex:32024R1689/oj#art_60').
:- pred testing_concluded/2, gloss('Testing in real-world conditions has concluded'), source('celex:32024R1689/oj#art_60').
:- pred provider_party/1, gloss('Entity is either provider or prospective provider'), source('celex:32024R1689/oj#art_60').

provider_party(P) :- provider(P).
provider_party(P) :- prospective_provider(P).

permitted_testing_in_real_world_conditions(P, S) :-
    provider_party(P),
    annex_3_high_risk_ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S),
    testing_conditions_met(P, S).

testing_conditions_met(P, S) :-
    market_surveillance_authority_for(A, S),
    testing_plan_submitted(P, S, A),
    testing_plan_approved(P, S, A),
    testing_registered(P, S),
    established_in_union_or_has_representative(P),
    third_country_transfer_safeguards_complied(S),
    duration_compliant(S),
    vulnerable_groups_protected(S),
    deployer_cooperation_conditions_met(P, S),
    informed_consent_or_law_enforcement_safeguards_met(P, S),
    effectively_overseen(P, S),
    outputs_reversible_and_disregardable(S).

permitted_withdraw_from_testing(Subj, S) :-
    subject(Subj),
    ai_system(S).

must_report(P, incident_to_authority(S, A)) :-
    provider_party(P),
    testing_serious_incident_occurred(P, S),
    market_surveillance_authority_for(A, S).

must_comply(P, mitigation_or_suspension_or_termination(S)) :-
    provider_party(P),
    testing_serious_incident_occurred(P, S).

must_comply(P, recall_procedure(S)) :-
    provider_party(P),
    testing_suspended_or_terminated(P, S).

must_report(P, notification_status(status(S), A)) :-
    provider_party(P),
    testing_suspended_or_terminated(P, S),
    market_surveillance_authority_for(A, S).

must_report(P, notification_final_outcomes(outcomes(S), A)) :-
    provider_party(P),
    testing_concluded(P, S),
    market_surveillance_authority_for(A, S).

provenance(provider_party/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').
provenance(testing_conditions_met/2, 'celex:32024R1689/oj#art_60').
provenance(permitted_withdraw_from_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_report/2, 'celex:32024R1689/oj#art_60').
provenance(must_comply/2, 'celex:32024R1689/oj#art_60').

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
