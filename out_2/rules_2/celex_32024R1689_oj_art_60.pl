% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 1cb62e1359a9e728e00a077602029e24072a838e218a6c1c20de5d80338efee4
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
%--- Permission to conduct real‑world testing of high‑risk AI systems -----------------
permitted_testing_in_real_world_conditions(testing(Provider, System, MemberState)) :-
    provider(Provider) ;
    prospective_provider(Provider),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    \+ placing_on_market(System),
    \+ putting_into_service(System),
    required_testing_plan_submitted(testing(Provider, System, MemberState)),
    approved_testing(testing(Provider, System, MemberState)),
    required_registration(testing(Provider, System, MemberState)),
    established_in_union(Provider),
    data_transfer_safeguarded(testing(Provider, System, MemberState)),
    duration_within_limit(testing(Provider, System, MemberState)),
    protected_vulnerable_subjects(testing(Provider, System, MemberState)),
    informed_deployers(testing(Provider, System, MemberState)),
    agreement_concluded(testing(Provider, System, MemberState)),
    informed_consent_obtained(testing(Provider, System, MemberState)),
    qualified_oversight(testing(Provider, System, MemberState)),
    reversible_output(testing(Provider, System, MemberState)).

provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60').

%--- Commission must specify detailed elements of the real‑world testing plan ----------
must_specify(commission, real_world_testing_plan_elements) :-
    commission(commission).

provenance(must_specify/2, 'celex:32024R1689/oj#art_60').

%--- Member States must confer powers to market surveillance authorities ---------------
must_confer(MemberState, powers(market_surveillance_authority)) :-
    member_state(MemberState).

provenance(must_confer/2, 'celex:32024R1689/oj#art_60').

%--- Provider must report serious incidents arising from testing -------------------------
must_report_serious_incident(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).

provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60').

%--- Provider must adopt immediate mitigation measures after a serious incident ----------
must_adopt_mitigation_measures(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).

provenance(must_adopt_mitigation_measures/2, 'celex:32024R1689/oj#art_60').

%--- Provider must suspend testing if mitigation cannot be applied -----------------------
must_suspend_testing(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).

provenance(must_suspend_testing/2, 'celex:32024R1689/oj#art_60').

%--- Provider must establish a recall procedure upon termination of testing -------------
must_establish_recall_procedure(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).

provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').

%--- Provider must notify the market surveillance authority of suspension/termination ----
must_notify(Provider, notification(suspension_or_termination, final_outcomes)) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).

provenance(must_notify/2, 'celex:32024R1689/oj#art_60').

%--- Subjects may withdraw consent without detriment ------------------------------------
permitted_withdrawal_of_informed_consent(Subject) :-
    subject(Subject).

provenance(permitted_withdrawal_of_informed_consent/1, 'celex:32024R1689/oj#art_60').

%--- References -------------------------------------------------------------------------
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60').
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
