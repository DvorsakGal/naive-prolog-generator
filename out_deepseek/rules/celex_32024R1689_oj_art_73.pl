% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c5d57477a4a4099a9e72f6e0335bebac60e90878d4720ab01fe264e827b26dff
% cached     : False
% title      : Reporting of serious incidents
:- pred must_report_serious_incident/2, gloss('provider must report serious incident to market surveillance authority'), source('celex:32024R1689/oj#art_73').
:- pred must_report_serious_incident_immediately/2, gloss('provider must report serious incident immediately after causal link established'), source('celex:32024R1689/oj#art_73').
:- pred must_report_serious_incident_within_days/3, gloss('provider must report serious incident within specified days'), source('celex:32024R1689/oj#art_73').
:- pred must_perform_investigations/2, gloss('provider must perform investigations after reporting serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_cooperate_during_investigations/2, gloss('provider must cooperate with competent authorities during investigations'), source('celex:32024R1689/oj#art_73').
:- pred must_notify_commission/2, gloss('national competent authority must notify Commission of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_inform_public_authorities/2, gloss('market surveillance authority must inform national public authorities'), source('celex:32024R1689/oj#art_73').
:- pred must_take_appropriate_measures/2, gloss('market surveillance authority must take appropriate measures within seven days'), source('celex:32024R1689/oj#art_73').
:- pred may_submit_incomplete_report/2, gloss('provider or deployer may submit incomplete initial report'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_notification_limited/1, gloss('notification of serious incidents limited to those in point (c)'), source('celex:32024R1689/oj#art_73').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_73').
:- pred placed_on_union_market/1, gloss('AI system placed on the Union market'), source('celex:32024R1689/oj#art_73').
:- pred causal_link_established/2, gloss('causal link established between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred reasonable_likelihood_of_causal_link/2, gloss('reasonable likelihood of causal link between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred becomes_aware_of_serious_incident/2, gloss('entity becomes aware of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred widespread_infringement_or_serious_incident_b/1, gloss('widespread infringement or serious incident as defined in point (b)'), source('celex:32024R1689/oj#art_73').
:- pred death_of_person/1, gloss('serious incident involving death of a person'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_c/1, gloss('serious incident as defined in point (c)'), source('celex:32024R1689/oj#art_73').
:- pred safety_component_of_device/1, gloss('AI system that is a safety component of a device'), source('celex:32024R1689/oj#art_73').
:- pred device_covered_by_regulations/1, gloss('device covered by Regulations 2017/745 or 2017/746'), source('celex:32024R1689/oj#art_73').
:- pred annex_3_high_risk_ai_system/1, gloss('high-risk AI system referred to in Annex III'), source('celex:32024R1689/oj#art_73').
:- pred subject_to_equivalent_reporting_obligations/1, gloss('provider subject to equivalent reporting obligations under Union law'), source('celex:32024R1689/oj#art_73').

% Paragraph 1
must_report_serious_incident(Provider, incident(System, Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority).

% Paragraph 2 - general reporting deadline
must_report_serious_incident_within_days(Provider, incident(System, Incident, Authority), days(15)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    ( causal_link_established(Provider, incident(System, Incident))
    ; reasonable_likelihood_of_causal_link(Provider, incident(System, Incident))
    ),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).

must_report_serious_incident_immediately(Provider, incident(System, Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    ( causal_link_established(Provider, incident(System, Incident))
    ; reasonable_likelihood_of_causal_link(Provider, incident(System, Incident))
    ),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).

% Paragraph 3 - widespread infringement or serious incident (b)
must_report_serious_incident_within_days(Provider, incident(System, Incident, Authority), days(2)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    widespread_infringement_or_serious_incident_b(Incident),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).

must_report_serious_incident_immediately(Provider, incident(System, Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    widespread_infringement_or_serious_incident_b(Incident),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).

% Paragraph 4 - death of a person
must_report_serious_incident_within_days(Provider, incident(System, Incident, Authority), days(10)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    death_of_person(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).

must_report_serious_incident_immediately(Provider, incident(System, Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    death_of_person(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    ( causal_link_established(Provider, incident(System, Incident))
    ; suspects_causal_relationship(Provider, incident(System, Incident))
    ),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).

% Paragraph 5 - incomplete initial report
may_submit_incomplete_report(Reporter, incident(System, Incident, Authority)) :-
    ( provider(Reporter) ; deployer(Reporter) ),
    high_risk_ai_system(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority).

% Paragraph 6 - investigations
must_perform_investigations(Provider, incident(System, Incident)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(Incident),
    reported_serious_incident(Provider, incident(System, Incident, _Authority)).

must_cooperate_during_investigations(Provider, incident(System, Incident)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(Incident),
    reported_serious_incident(Provider, incident(System, Incident, _Authority)).

% Paragraph 7 - market surveillance authority informs public authorities
must_inform_public_authorities(Authority, incident(System, Incident)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    serious_incident_c(Incident),
    received_notification(Authority, incident(System, Incident)).

% Paragraph 8 - market surveillance authority takes measures
must_take_appropriate_measures(Authority, incident(System, Incident)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    serious_incident(Incident),
    received_notification(Authority, incident(System, Incident)).

% Paragraph 9 - limited notification for Annex III systems with equivalent obligations
serious_incident_notification_limited(incident(System, Incident)) :-
    annex_3_high_risk_ai_system(System),
    ( placed_on_union_market(System) ; putting_into_service(System) ),
    provider(Provider),
    subject_to_equivalent_reporting_obligations(Provider),
    serious_incident_c(Incident).

% Paragraph 10 - limited notification for safety components of devices
serious_incident_notification_limited(incident(System, Incident)) :-
    high_risk_ai_system(System),
    ( safety_component_of_device(System) ; device_covered_by_regulations(System) ),
    serious_incident_c(Incident).

% Paragraph 11 - national competent authorities notify Commission
must_notify_commission(Authority, incident(System, Incident)) :-
    national_competent_authority(Authority),
    high_risk_ai_system(System),
    serious_incident(Incident).

% Provenance
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident_immediately/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident_within_days/3, 'celex:32024R1689/oj#art_73').
provenance(must_perform_investigations/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_during_investigations/2, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_public_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_73').
provenance(may_submit_incomplete_report/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_notification_limited/1, 'celex:32024R1689/oj#art_73').

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
