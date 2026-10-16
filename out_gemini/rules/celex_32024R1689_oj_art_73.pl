% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 03d83f830dec1708d69a190aaf923c3488f5fe07849599bbc78565075d166090
% cached     : False
% title      : Reporting of serious incidents
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_73').
:- pred incident_occurred_in/2, gloss('incident occurred in a Member State'), source('celex:32024R1689/oj#art_73').
:- pred causal_link_established_or_likely/2, gloss('causal link established or reasonably likely between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred aware_of_serious_incident/2, gloss('entity became aware of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred critical_infrastructure_disruption/1, gloss('serious incident causing disruption of critical infrastructure as defined in Art. 3(49)(b)'), source('celex:32024R1689/oj#art_73').
:- pred death_of_person/1, gloss('serious incident involving death of a person'), source('celex:32024R1689/oj#art_73').
:- pred causal_link_suspected_or_established/2, gloss('causal relationship established or suspected between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred fundamental_rights_breach/1, gloss('serious incident involving breach of fundamental rights under Art. 3(49)(c)'), source('celex:32024R1689/oj#art_73').
:- pred subject_to_equivalent_reporting/1, gloss('provider subject to equivalent reporting obligations in Union legislative instruments'), source('celex:32024R1689/oj#art_73').
:- pred medical_device_ai_system/1, gloss('high-risk AI system covered by Regulation (EU) 2017/745 or 2017/746'), source('celex:32024R1689/oj#art_73').
:- pred designated_competent_authority/2, gloss('competent authority designated by Member State where incident occurred'), source('celex:32024R1689/oj#art_73').
:- pred alters_ai_system/1, gloss('investigation alters AI system affecting evaluation of causes'), source('celex:32024R1689/oj#art_73').
:- pred informed_competent_authority/2, gloss('provider informed competent authority of planned alteration'), source('celex:32024R1689/oj#art_73').

% Paragraph 1: Providers of high-risk AI systems shall report serious incidents
must_report(Provider, incident_report(Incident, MarketSurveillanceAuthority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    incident_occurred_in(Incident, MemberState),
    market_surveillance_authority(MarketSurveillanceAuthority),
    incident_occurred_in(MarketSurveillanceAuthority, MemberState).

% Paragraph 2: Reporting deadline in standard cases (immediately upon causal link, at most 15 days)
required_reporting_deadline(Incident, days(15)) :-
    serious_incident(Incident),
    \+ widespread_infringement(Incident),
    \+ critical_infrastructure_disruption(Incident),
    \+ death_of_person(Incident).

% Paragraph 3: Reporting deadline for widespread infringement or critical infrastructure disruption (at most 2 days)
required_reporting_deadline(Incident, days(2)) :-
    serious_incident(Incident),
    widespread_infringement(Incident).

required_reporting_deadline(Incident, days(2)) :-
    serious_incident(Incident),
    critical_infrastructure_disruption(Incident).

% Paragraph 4: Reporting deadline in the event of death of a person (at most 10 days)
required_reporting_deadline(Incident, days(10)) :-
    serious_incident(Incident),
    death_of_person(Incident).

% Paragraph 5: Permitted initial incomplete report
permitted_initial_report(Provider, incomplete_report(Incident)) :-
    provider(Provider),
    serious_incident(Incident).

permitted_initial_report(Deployer, incomplete_report(Incident)) :-
    deployer(Deployer),
    serious_incident(Incident).

% Paragraph 6: Investigations, risk assessment, corrective action, and cooperation
must_investigate(Provider, serious_incident_investigation(Incident, System)) :-
    provider(Provider),
    serious_incident(Incident),
    ai_system(System).

must_cooperate(Provider, authority_investigation(Authority, Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    national_competent_authority(Authority).

must_cooperate(Provider, notified_body_investigation(NotifiedBody, Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    notified_body(NotifiedBody).

% Paragraph 6: Restriction on altering AI system during investigation
prohibited_investigation(Provider, investigation(Incident, System)) :-
    provider(Provider),
    serious_incident(Incident),
    ai_system(System),
    alters_ai_system(investigation(Incident, System)),
    \+ informed_competent_authority(Provider, investigation(Incident, System)).

% Paragraph 7: Market surveillance authority duty to inform fundamental rights bodies
must_inform(MarketSurveillanceAuthority, fundamental_rights_incident(Incident)) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    serious_incident(Incident),
    fundamental_rights_breach(Incident).

% Paragraph 8: Market surveillance authority measures within 7 days
must_take_measures(MarketSurveillanceAuthority, incident_measures(Incident, within(days(7)))) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    serious_incident(Incident).

% Paragraph 9: Limited scope for Annex III systems subject to equivalent Union reporting
required_incident_scope(System, fundamental_rights_breach_only) :-
    high_risk_ai_system(System),
    provider(Provider),
    subject_to_equivalent_reporting(Provider).

% Paragraph 10: Medical devices limited notification and designated authority
required_incident_scope(System, fundamental_rights_breach_only) :-
    medical_device_ai_system(System).

must_report(Provider, medical_incident_report(Incident, Authority)) :-
    provider(Provider),
    medical_device_ai_system(System),
    serious_incident(Incident),
    fundamental_rights_breach(Incident),
    incident_occurred_in(Incident, MemberState),
    designated_competent_authority(Authority, MemberState).

% Paragraph 11: National competent authorities notify Commission
must_notify(Authority, commission_serious_incident(Incident)) :-
    national_competent_authority(Authority),
    serious_incident(Incident).

% Provenance facts
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(incident_occurred_in/2, 'celex:32024R1689/oj#art_73').
provenance(causal_link_established_or_likely/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(critical_infrastructure_disruption/1, 'celex:32024R1689/oj#art_73').
provenance(death_of_person/1, 'celex:32024R1689/oj#art_73').
provenance(causal_link_suspected_or_established/2, 'celex:32024R1689/oj#art_73').
provenance(fundamental_rights_breach/1, 'celex:32024R1689/oj#art_73').
provenance(subject_to_equivalent_reporting/1, 'celex:32024R1689/oj#art_73').
provenance(medical_device_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(designated_competent_authority/2, 'celex:32024R1689/oj#art_73').
provenance(alters_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(informed_competent_authority/2, 'celex:32024R1689/oj#art_73').
provenance(must_report/2, 'celex:32024R1689/oj#art_73').
provenance(required_reporting_deadline/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_initial_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_73').
provenance(prohibited_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_73').
provenance(required_incident_scope/2, 'celex:32024R1689/oj#art_73').
provenance(must_notify/2, 'celex:32024R1689/oj#art_73').

% Cross references
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
