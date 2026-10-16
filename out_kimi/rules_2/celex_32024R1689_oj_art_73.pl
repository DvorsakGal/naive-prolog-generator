% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 5a4292580fbbe1fbb8b998eb10c8f0d6b52621974d0623a8fccfabf358805a8d
% cached     : False
% title      : Reporting of serious incidents
:- pred must_report_serious_incident_to_authority/3, gloss('provider must report serious incident to market surveillance authority of Member State where incident occurred'), source('celex:32024R1689/oj#art_73').
:- pred report_deadline/3, gloss('deadline for reporting serious incident'), source('celex:32024R1689/oj#art_73').
:- pred report_period/3, gloss('period for reporting taking account of severity'), source('celex:32024R1689/oj#art_73').
:- pred must_perform_investigation/2, gloss('provider must perform investigation after reporting serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_cooperate_during_investigation/2, gloss('provider must cooperate with competent authorities during investigation'), source('celex:32024R1689/art_73').
:- pred must_not_alter_system_before_informing/2, gloss('provider must not alter AI system before informing competent authorities'), source('celex:32024R1689/oj#art_73').
:- pred must_inform_national_authorities/2, gloss('market surveillance authority must inform national public authorities or bodies'), source('celex:32024R1689/oj#art_73').
:- pred must_develop_guidance/2, gloss('Commission must develop dedicated guidance for compliance'), source('celex:32024R1689/oj#art_73').
:- pred must_take_measures_within_seven_days/2, gloss('market surveillance authority must take measures within seven days of notification'), source('celex:32024R1689/oj#art_73').
:- pred limited_notification_criteria/2, gloss('notification limited to serious incidents defined in Article 3 point 49(c)'), source('celex:32024R1689/oj#art_73').
:- pred must_notify_commission/2, gloss('national competent authority must notify Commission of serious incident'), source('celex:32024R1689/oj#art_73').

% Article 73(1) - Core reporting obligation
must_report_serious_incident_to_authority(P, S, A) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    serious_incident(I),
    market_surveillance_authority(A).

must_report_serious_incident(P, S) :-
    must_report_serious_incident_to_authority(P, S, _A).

% Article 73(2) - Standard deadline: 15 days after awareness
report_deadline(P, S, days(15)) :-
    must_report_serious_incident(P, S),
    \+ widespread_infringement_applies(S),
    \+ death_occurred(S),
    aware_of_incident(P, S).

report_period(P, S, I) :-
    report_deadline(P, S, _D),
    serious_incident(I),
    severity_of_incident(I, _).

% Article 73(3) - Widespread infringement or serious incident type (b): 2 days
report_deadline(P, S, days(2)) :-
    must_report_serious_incident(P, S),
    (widespread_infringement_applies(S) ; serious_incident_type_b(S)),
    aware_of_incident(P, S).

widespread_infringement_applies(S) :-
    high_risk_ai_system(S),
    widespread_infringement(S).

serious_incident_type_b(S) :-
    high_risk_ai_system(S),
    serious_incident(I),
    incident_type(I, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').

% Article 73(4) - Death occurred: 10 days after awareness
report_deadline(P, S, days(10)) :-
    must_report_serious_incident(P, S),
    death_occurred(S),
    aware_of_incident(P, S).

death_occurred(S) :-
    high_risk_ai_system(S),
    serious_incident(I),
    incident_involves_death(I).

% Article 73(5) - Incomplete initial report permitted
permitted_incomplete_initial_report(P, S) :-
    must_report_serious_incident(P, S),
    necessary_for_timely_reporting(P, S).

necessary_for_timely_reporting(P, S) :-
    must_report_serious_incident(P, S),
    \+ complete_report_ready(P, S).

% Article 73(6) - Investigation obligations after reporting
must_perform_investigation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    reported_serious_incident(P, S).

must_perform_investigation(P, S) :-
    must_perform_investigation(P, S),
    risk_assessment_of_incident(P, S),
    corrective_action(P, S).

must_cooperate_during_investigation(P, S) :-
    must_perform_investigation(P, S),
    competent_authority(A),
    cooperate_with(P, A).

must_not_alter_system_before_informing(P, S) :-
    must_perform_investigation(P, S),
    ai_system(S),
    \+ informed_competent_authorities_of_alteration(P, S).

% Article 73(7) - Market surveillance authority informs national authorities; Commission develops guidance
must_inform_national_authorities(A, I) :-
    market_surveillance_authority(A),
    serious_incident(I),
    incident_type(I, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c'),
    received_notification(A, I).

must_develop_guidance(commission, serious_incident_reporting) :-
    deadline_for_guidance(years(2025), months(8), days(2)).

% Article 73(8) - Market surveillance authority measures within 7 days
must_take_measures_within_seven_days(A, I) :-
    market_surveillance_authority(A),
    serious_incident(I),
    received_notification(A, I).

% Article 73(9) - Limited notification for systems under equivalent Union legislative instruments
limited_notification_criteria(S, I) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    placed_on_market_or_put_into_service(S),
    subject_to_equivalent_reporting_obligations(S),
    serious_incident(I),
    incident_type(I, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').

% Article 73(10) - Limited notification for safety components/devices under medical device regulations
limited_notification_criteria(S, I) :-
    high_risk_ai_system(S),
    ai_safety_component(S),
    covered_by_medical_device_regulation(S),
    serious_incident(I),
    incident_type(I, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').

covered_by_medical_device_regulation(S) :-
    product_covered_by_harmonisation_legislation(S).

% Article 73(11) - National competent authority notifies Commission
must_notify_commission(A, I) :-
    national_competent_authority(A),
    serious_incident(I),
    received_notification(A, I).

% Supporting predicates for awareness and causal link
aware_of_incident(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident(I),
    (established_causal_link(P, S, I) ; reasonable_likelihood_of_causal_link(P, S, I)).

aware_of_incident(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident(I),
    deployer_becomes_aware(D, S, I).

% Provenance
provenance(must_report_serious_incident_to_authority/3, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(report_deadline/3, 'celex:32024R1689/oj#art_73').
provenance(report_period/3, 'celex:32024R1689/oj#art_73').
provenance(widespread_infringement_applies/1, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_type_b/1, 'celex:32024R1689/oj#art_73').
provenance(death_occurred/1, 'celex:32024R1689/oj#art_73').
provenance(permitted_incomplete_initial_report/2, 'celex:32024R1689/oj#art_73').
provenance(necessary_for_timely_reporting/2, 'celex:32024R1689/oj#art_73').
provenance(must_perform_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_during_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_system_before_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_national_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures_within_seven_days/2, 'celex:32024R1689/oj#art_73').
provenance(limited_notification_criteria/2, 'celex:32024R1689/oj#art_73').
provenance(covered_by_medical_device_regulation/1, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_incident/2, 'celex:32024R1689/oj#art_73').

% References
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').
