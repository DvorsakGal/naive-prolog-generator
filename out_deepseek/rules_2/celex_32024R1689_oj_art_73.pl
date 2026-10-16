% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : e8059b0f5462df41264bd171673cbd3f70168c4801e39f434ebb631f422742c4
% cached     : False
% title      : Reporting of serious incidents
:- pred must_report_serious_incident/2, gloss('provider must report serious incident to market surveillance authority'), source('celex:32024R1689/oj#art_73').
:- pred must_report_serious_incident_death/2, gloss('provider must report serious incident involving death'), source('celex:32024R1689/oj#art_73').
:- pred must_report_widespread_infringement/2, gloss('provider must report widespread infringement or serious incident under point 49(b)'), source('celex:32024R1689/oj#art_73').
:- pred must_investigate_serious_incident/2, gloss('provider must investigate serious incident and take corrective action'), source('celex:32024R1689/oj#art_73').
:- pred must_cooperate_in_investigation/2, gloss('provider must cooperate with competent authorities during investigation'), source('celex:32024R1689/oj#art_73').
:- pred must_notify_commission_of_serious_incident/1, gloss('national competent authority must notify Commission of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_inform_national_authorities/2, gloss('market surveillance authority must inform national public authorities'), source('celex:32024R1689/oj#art_73').
:- pred must_take_appropriate_measures/2, gloss('market surveillance authority must take appropriate measures within seven days'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_reporting_limited/1, gloss('notification of serious incidents limited to point 49(c)'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_reporting_limited_medical/1, gloss('notification of serious incidents limited to point 49(c) for medical devices'), source('celex:32024R1689/oj#art_73').
:- pred may_submit_incomplete_report/2, gloss('provider or deployer may submit incomplete initial report'), source('celex:32024R1689/oj#art_73').

% Paragraph 1
must_report_serious_incident(Provider, incident(System, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority).

% Paragraph 2 – standard reporting deadline
must_report_serious_incident(Provider, incident(System, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority),
    causal_link_established(Provider, System, incident(System)),
    within_days_of_awareness(Provider, incident(System), days(15)).

% Paragraph 3 – widespread infringement or point 49(b) incident
must_report_widespread_infringement(Provider, incident(System, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority),
    (   widespread_infringement(incident(System))
    ;   serious_incident_point_49_b(incident(System))
    ),
    within_days_of_awareness(Provider, incident(System), days(2)).

% Paragraph 4 – death of a person
must_report_serious_incident_death(Provider, incident(System, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority),
    incident_involves_death(incident(System)),
    causal_link_suspected(Provider, System, incident(System)),
    within_days_of_awareness(Provider, incident(System), days(10)).

% Paragraph 5 – incomplete initial report
may_submit_incomplete_report(Reporter, incident(System, Authority)) :-
    (   provider(Reporter)
    ;   deployer(Reporter)
    ),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority).

% Paragraph 6 – investigation and corrective action
must_investigate_serious_incident(Provider, incident(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    reported_incident(incident(System)).

must_cooperate_in_investigation(Provider, incident(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    must_investigate_serious_incident(Provider, incident(System)).

% Paragraph 7 – market surveillance authority informs national authorities
must_inform_national_authorities(Authority, incident(System)) :-
    market_surveillance_authority(Authority),
    serious_incident(incident(System)),
    serious_incident_point_49_c(incident(System)).

% Paragraph 8 – market surveillance authority takes measures within seven days
must_take_appropriate_measures(Authority, incident(System)) :-
    market_surveillance_authority(Authority),
    serious_incident(incident(System)),
    reported_incident(incident(System)),
    within_days_of_receipt(Authority, incident(System), days(7)).

% Paragraph 9 – limited reporting for systems under equivalent obligations
serious_incident_reporting_limited(incident(System)) :-
    high_risk_ai_system(System),
    placing_on_market(System),
    provider_subject_to_equivalent_reporting(Provider),
    provider(Provider),
    serious_incident_point_49_c(incident(System)).

serious_incident_reporting_limited(incident(System)) :-
    high_risk_ai_system(System),
    putting_into_service(System),
    provider_subject_to_equivalent_reporting(Provider),
    provider(Provider),
    serious_incident_point_49_c(incident(System)).

% Paragraph 10 – limited reporting for medical devices
serious_incident_reporting_limited_medical(incident(System)) :-
    high_risk_ai_system(System),
    safety_component(System),
    covered_by_regulation(System, regulation('32017R0745')),
    serious_incident_point_49_c(incident(System)).

serious_incident_reporting_limited_medical(incident(System)) :-
    high_risk_ai_system(System),
    safety_component(System),
    covered_by_regulation(System, regulation('32017R0746')),
    serious_incident_point_49_c(incident(System)).

% Paragraph 11 – national competent authority notifies Commission
must_notify_commission_of_serious_incident(incident(System)) :-
    national_competent_authority(Authority),
    serious_incident(incident(System)).

% Provenance
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_widespread_infringement/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident_death/2, 'celex:32024R1689/oj#art_73').
provenance(may_submit_incomplete_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_in_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_national_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_reporting_limited/1, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_reporting_limited_medical/1, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission_of_serious_incident/1, 'celex:32024R1689/oj#art_73').

% References
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
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
