% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 23dac76ebfd5171ac45f838c36a0e2a7f314731be06feacff0435fd3dc8e5207
% cached     : False
% title      : Reporting of serious incidents
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_73').
:- pred occurs_in/2, gloss('incident occurs in a Member State'), source('celex:32024R1689/oj#art_73').
:- pred incident_involves_system/2, gloss('incident involves an AI system'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_type/2, gloss('incident is of a specific type (e.g., death, point_b, point_c)'), source('celex:32024R1689/oj#art_73').
:- pred aware_of_incident/2, gloss('entity becomes aware of an incident'), source('celex:32024R1689/oj#art_73').
:- pred provider_of/2, gloss('entity is the provider of an AI system'), source('celex:32024R1689/oj#art_73').
:- pred deployer_of/2, gloss('entity is the deployer of an AI system'), source('celex:32024R1689/oj#art_73').
:- pred deadline_reporting/3, gloss('deadline for reporting a serious incident'), source('celex:32024R1689/oj#art_73').
:- pred permitted_submit_incomplete_report/2, gloss('entity is permitted to submit an initial incomplete report'), source('celex:32024R1689/oj#art_73').
:- pred must_investigate/2, gloss('actor must perform investigations in relation to an incident'), source('celex:32024R1689/oj#art_73').
:- pred must_cooperate/2, gloss('actor must cooperate with authorities during investigation'), source('celex:32024R1689/oj#art_73').
:- pred prohibited_alteration/2, gloss('investigation alteration prohibited prior to informing authorities'), source('celex:32024R1689/oj#art_73').
:- pred must_inform/2, gloss('authority must inform relevant body of incident notification'), source('celex:32024R1689/oj#art_73').
:- pred must_take_measures/2, gloss('authority must take appropriate measures within a deadline'), source('celex:32024R1689/oj#art_73').
:- pred subject_to_equivalent_reporting/1, gloss('provider is subject to equivalent Union reporting obligations'), source('celex:32024R1689/oj#art_73').
:- pred covered_by_medical_device_regulations/1, gloss('system is covered by Regulation 2017/745 or 2017/746'), source('celex:32024R1689/oj#art_73').
:- pred annex_3_system/1, gloss('AI system referred to in Annex III'), source('celex:32024R1689/oj#art_73').
:- pred applicable_reporting_obligation/2, gloss('incident reporting is applicable for AI system'), source('celex:32024R1689/oj#art_73').
:- pred national_competent_authority_for/2, gloss('national competent authority designated for an incident'), source('celex:32024R1689/oj#art_73').

% Paragraph 1: Providers of high-risk AI systems report serious incidents to market surveillance authorities of MS where it occurred.
must_report(Provider, incident(Incident, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    placing_on_market(System),
    incident_involves_system(Incident, System),
    serious_incident(Incident),
    applicable_reporting_obligation(System, Incident),
    occurs_in(Incident, MemberState),
    market_surveillance_authority_for(Authority, MemberState).

% Paragraph 2: General deadline: immediately upon causal link / reasonable likelihood, and max 15 days from awareness.
deadline_reporting(Provider, Incident, days(15)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident),
    causal_link_established_or_likely(Provider, Incident),
    \+ serious_incident_type(Incident, widespread_infringement),
    \+ serious_incident_type(Incident, point_b),
    \+ serious_incident_type(Incident, death).

% Paragraph 3: Widespread infringement or point (b) incident: max 2 days.
deadline_reporting(Provider, Incident, days(2)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident),
    ( serious_incident_type(Incident, widespread_infringement)
    ; serious_incident_type(Incident, point_b)
    ).

% Paragraph 4: Death of a person: immediately upon suspicion/establishment, max 10 days.
deadline_reporting(Provider, Incident, days(10)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident),
    serious_incident_type(Incident, death).

% Paragraph 5: Incomplete initial report permitted where necessary.
permitted_submit_incomplete_report(Actor, Incident) :-
    ( provider_of(Actor, System) ; deployer_of(Actor, System) ),
    incident_involves_system(Incident, System),
    serious_incident(Incident).

% Paragraph 6: Investigation duty and prohibition on altering the AI system before informing.
must_investigate(Provider, incident(Incident, System)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident).

must_cooperate(Provider, investigation(Incident)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident).

prohibited_alteration(Provider, System) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident).

% Paragraph 7: Market surveillance authority informing authorities under Art 77(1).
must_inform(Authority, bodies_art_77_par_1(Incident)) :-
    market_surveillance_authority(Authority),
    serious_incident(Incident),
    serious_incident_type(Incident, point_c).

% Paragraph 8: Market surveillance authority takes measures within 7 days.
must_take_measures(Authority, within(days(7), Incident)) :-
    market_surveillance_authority(Authority),
    serious_incident(Incident).

% Paragraph 9: Scope limitation for Annex III systems subject to equivalent reporting.
applicable_reporting_obligation(System, Incident) :-
    annex_3_system(System),
    provider_of(Provider, System),
    subject_to_equivalent_reporting(Provider),
    serious_incident_type(Incident, point_c).

applicable_reporting_obligation(System, _Incident) :-
    annex_3_system(System),
    provider_of(Provider, System),
    \+ subject_to_equivalent_reporting(Provider).

applicable_reporting_obligation(System, Incident) :-
    covered_by_medical_device_regulations(System),
    serious_incident_type(Incident, point_c).

applicable_reporting_obligation(System, _Incident) :-
    \+ annex_3_system(System),
    \+ covered_by_medical_device_regulations(System).

% Paragraph 10: Medical devices report to chosen national competent authority.
must_report(Provider, incident(Incident, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    covered_by_medical_device_regulations(System),
    incident_involves_system(Incident, System),
    serious_incident_type(Incident, point_c),
    occurs_in(Incident, MemberState),
    national_competent_authority_for(Authority, MemberState).

% Paragraph 11: National competent authorities notify Commission immediately.
must_report(Authority, commission_notification(Incident)) :-
    national_competent_authority(Authority),
    serious_incident(Incident).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(occurs_in/2, 'celex:32024R1689/oj#art_73').
provenance(incident_involves_system/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_type/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(provider_of/2, 'celex:32024R1689/oj#art_73').
provenance(deployer_of/2, 'celex:32024R1689/oj#art_73').
provenance(deadline_reporting/3, 'celex:32024R1689/oj#art_73').
provenance(permitted_submit_incomplete_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_73').
provenance(prohibited_alteration/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_73').
provenance(subject_to_equivalent_reporting/1, 'celex:32024R1689/oj#art_73').
provenance(covered_by_medical_device_regulations/1, 'celex:32024R1689/oj#art_73').
provenance(annex_3_system/1, 'celex:32024R1689/oj#art_73').
provenance(applicable_reporting_obligation/2, 'celex:32024R1689/oj#art_73').
provenance(national_competent_authority_for/2, 'celex:32024R1689/oj#art_73').
provenance(must_report/2, 'celex:32024R1689/oj#art_73').

% References
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32019R1020/oj', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').
