% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1b51133b72e5faf460f8fe3d1989cc92acdc1abfb11e135e1d11aa12aae6c566
% cached     : False
% title      : Reporting of serious incidents
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_73').
:- pred placed_on_union_market/1, gloss('AI system placed on the Union market'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_occurred/1, gloss('a serious incident has occurred'), source('celex:32024R1689/oj#art_73').
:- pred causal_link_established/2, gloss('provider has established causal link between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred reasonable_likelihood_of_link/2, gloss('reasonable likelihood of causal link between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred provider_aware_of_incident/2, gloss('provider became aware of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred deployer_aware_of_incident/2, gloss('deployer became aware of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred aware_of_incident/2, gloss('provider or deployer became aware of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred widespread_infringement_occurred/1, gloss('a widespread infringement has occurred'), source('celex:32024R1689/oj#art_73').
:- pred death_of_person/1, gloss('death of a person has occurred'), source('celex:32024R1689/oj#art_73').
:- pred provider_suspects_causal_relationship/2, gloss('provider suspects causal relationship between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred deployer_suspects_causal_relationship/2, gloss('deployer suspects causal relationship between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred suspects_causal_relationship/2, gloss('provider or deployer suspects causal relationship'), source('celex:32024R1689/oj#art_73').
:- pred initial_report_incomplete/1, gloss('initial report submitted is incomplete'), source('celex:32024R1689/oj#art_73').
:- pred complete_report_follows/1, gloss('complete report follows initial report'), source('celex:32024R1689/oj#art_73').
:- pred risk_assessment_performed/2, gloss('risk assessment of incident performed'), source('celex:32024R1689/oj#art_73').
:- pred corrective_action_taken/2, gloss('corrective action taken regarding AI system'), source('celex:32024R1689/oj#art_73').
:- pred investigation_performed/2, gloss('necessary investigations performed regarding AI system and incident'), source('celex:32024R1689/oj#art_73').
:- pred alters_ai_system/3, gloss('investigation involves altering AI system in way affecting subsequent evaluation'), source('celex:32024R1689/oj#art_73').
:- pred informs_competent_authorities/2, gloss('provider informs competent authorities of action'), source('celex:32024R1689/oj#art_73').
:- pred national_public_authority_or_body/1, gloss('national public authority or body referred to in Article 77(1)'), source('celex:32024R1689/oj#art_73').
:- pred equivalent_reporting_obligation_instrument/1, gloss('Union legislative instrument laying down equivalent reporting obligations'), source('celex:32024R1689/oj#art_73').
:- pred safety_component_of_device/1, gloss('high-risk AI system is safety component of device or is itself a device'), source('celex:32024R1689/oj#art_73').
:- pred device_covered_by_regulation/1, gloss('device covered by Regulation 2017/745 or 2017/746'), source('celex:32024R1689/oj#art_73').
:- pred national_competent_authority_chosen/2, gloss('national competent authority chosen by Member State for purpose'), source('celex:32024R1689/oj#art_73').

% Article 73(1): Providers of high-risk AI systems placed on the Union market shall report any serious incident
must_report_serious_incident(Provider, Incident) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_union_market(S),
    placing_on_market(S),
    serious_incident_occurred(Incident),
    incident_relates_to(Incident, S).

% Article 73(1): report to market surveillance authorities of Member States where incident occurred
must_report_to_market_surveillance_authority(Provider, report(Incident, Authority)) :-
    must_report_serious_incident(Provider, Incident),
    market_surveillance_authority(Authority),
    incident_occurred_in_member_state(Incident, Authority).

% Article 73(2): report immediately after causal link established or reasonable likelihood, and not later than 15 days after awareness
reporting_deadline_standard(Provider, Incident, days(15)) :-
    must_report_serious_incident(Provider, Incident),
    (causal_link_established(Provider, Incident) ; reasonable_likelihood_of_link(Provider, Incident)),
    aware_of_incident(Provider, Incident).

% Article 73(2): period takes account of severity
reporting_period_considers_severity(Incident) :-
    serious_incident_occurred(Incident).

% Article 73(3): widespread infringement or serious incident as defined in Art 3(49)(b) — report immediately, not later than 2 days
reporting_deadline_widespread_infringement(Provider, Incident, days(2)) :-
    must_report_serious_incident(Provider, Incident),
    widespread_infringement_occurred(Incident),
    aware_of_incident(Provider, Incident).

reporting_deadline_serious_incident_art_3_49_b(Provider, Incident, days(2)) :-
    must_report_serious_incident(Provider, Incident),
    serious_incident_occurred(Incident),
    incident_type_art_3_49_b(Incident),
    aware_of_incident(Provider, Incident).

% Article 73(4): death of a person — report immediately after causal relationship established or suspected, not later than 10 days
reporting_deadline_death(Provider, Incident, days(10)) :-
    must_report_serious_incident(Provider, Incident),
    death_of_person(Incident),
    (causal_link_established(Provider, Incident) ; suspects_causal_relationship(Provider, Incident)),
    aware_of_incident(Provider, Incident).

% Article 73(5): may submit initial incomplete report followed by complete report
permitted_incomplete_initial_report(Provider, Incident) :-
    must_report_serious_incident(Provider, Incident),
    initial_report_incomplete(report(Incident)),
    complete_report_follows(report(Incident)).

% Article 73(6): provider shall perform necessary investigations, risk assessment, and corrective action
must_perform_investigation(Provider, investigation(Incident, S)) :-
    must_report_serious_incident(Provider, Incident),
    incident_relates_to(Incident, S),
    investigation_performed(Provider, investigation(Incident, S)),
    risk_assessment_performed(Provider, Incident),
    corrective_action_taken(Provider, S).

% Article 73(6): provider shall cooperate with competent authorities and notified body
must_cooperate_during_investigation(Provider, Authority) :-
    must_perform_investigation(Provider, _),
    national_competent_authority(Authority).

must_cooperate_with_notified_body(Provider, Body) :-
    must_perform_investigation(Provider, _),
    notified_body(Body).

% Article 73(6): shall not perform investigation involving altering AI system without informing competent authorities
prohibited_altering_ai_system_without_informing(Provider, S) :-
    must_perform_investigation(Provider, investigation(_, S)),
    alters_ai_system(Provider, S, Alteration),
    \+ informs_competent_authorities(Provider, Alteration).

% Article 73(7): market surveillance authority shall inform national public authorities or bodies
must_inform_national_public_authorities(Authority, Body) :-
    market_surveillance_authority(Authority),
    national_public_authority_or_body(Body),
    received_notification_of_serious_incident(Authority, _).

% Article 73(7): Commission shall develop dedicated guidance by 2 August 2025
must_develop_guidance(ai_office, guidance(serious_incident_reporting)) :-
    ai_office(ai_office).

guidance_issued_by(ai_office, date(2025, august, 2)).

% Article 73(8): market surveillance authority shall take appropriate measures within 7 days
must_take_appropriate_measures(Authority, Incident, days(7)) :-
    market_surveillance_authority(Authority),
    received_notification_of_serious_incident(Authority, Incident).

% Article 73(9): for high-risk AI systems under equivalent reporting obligations, notification limited to Art 3(49)(c)
reporting_limited_for_equivalent_obligations(Provider, Incident) :-
    must_report_serious_incident(Provider, Incident),
    high_risk_ai_system(S),
    placed_on_union_market(S),
    incident_relates_to(Incident, S),
    provider_subject_to_equivalent_obligations(Provider, S),
    incident_type_art_3_49_c(Incident).

% Article 73(10): for safety components of devices covered by 2017/745 or 2017/746, notification limited to Art 3(49)(c) and made to national competent authority
reporting_limited_for_safety_components(Provider, Incident, Authority) :-
    must_report_serious_incident(Provider, Incident),
    high_risk_ai_system(S),
    placed_on_union_market(S),
    incident_relates_to(Incident, S),
    safety_component_of_device(S),
    device_covered_by_regulation(S),
    incident_type_art_3_49_c(Incident),
    national_competent_authority(Authority),
    national_competent_authority_chosen(Authority, purpose(serious_incident_notification)).

% Article 73(11): national competent authorities shall immediately notify the Commission
must_notify_commission(Authority, Incident) :-
    national_competent_authority(Authority),
    serious_incident_occurred(Incident),
    received_notification_of_serious_incident(Authority, Incident).

% Helper: awareness by provider or deployer
aware_of_incident(Provider, Incident) :-
    provider_aware_of_incident(Provider, Incident).
aware_of_incident(Provider, Incident) :-
    provider(Provider),
    deployer_aware_of_incident(Deployer, Incident),
    deployer_related_to_provider(Deployer, Provider).

% Helper: suspicion of causal relationship by provider or deployer
suspects_causal_relationship(Provider, Incident) :-
    provider_suspects_causal_relationship(Provider, Incident).
suspects_causal_relationship(Provider, Incident) :-
    provider(Provider),
    deployer_suspects_causal_relationship(Deployer, Incident),
    deployer_related_to_provider(Deployer, Provider).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(placed_on_union_market/1, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_occurred/1, 'celex:32024R1689/oj#art_73').
provenance(causal_link_established/2, 'celex:32024R1689/oj#art_73').
provenance(reasonable_likelihood_of_link/2, 'celex:32024R1689/oj#art_73').
provenance(provider_aware_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(deployer_aware_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(widespread_infringement_occurred/1, 'celex:32024R1689/oj#art_73').
provenance(death_of_person/1, 'celex:32024R1689/oj#art_73').
provenance(provider_suspects_causal_relationship/2, 'celex:32024R1689/oj#art_73').
provenance(deployer_suspects_causal_relationship/2, 'celex:32024R1689/oj#art_73').
provenance(suspects_causal_relationship/2, 'celex:32024R1689/oj#art_73').
provenance(initial_report_incomplete/1, 'celex:32024R1689/oj#art_73').
provenance(complete_report_follows/1, 'celex:32024R1689/oj#art_73').
provenance(risk_assessment_performed/2, 'celex:32024R1689/oj#art_73').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_73').
provenance(investigation_performed/2, 'celex:32024R1689/oj#art_73').
provenance(alters_ai_system/3, 'celex:32024R1689/oj#art_73').
provenance(informs_competent_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(national_public_authority_or_body/1, 'celex:32024R1689/oj#art_73').
provenance(equivalent_reporting_obligation_instrument/1, 'celex:32024R1689/oj#art_73').
provenance(safety_component_of_device/1, 'celex:32024R1689/oj#art_73').
provenance(device_covered_by_regulation/1, 'celex:32024R1689/oj#art_73').
provenance(national_competent_authority_chosen/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_to_market_surveillance_authority/2, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_standard/3, 'celex:32024R1689/oj#art_73').
provenance(reporting_period_considers_severity/1, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_widespread_infringement/3, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_serious_incident_art_3_49_b/3, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_death/3, 'celex:32024R1689/oj#art_73').
provenance(permitted_incomplete_initial_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_perform_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_during_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_with_notified_body/2, 'celex:32024R1689/oj#art_73').
provenance(prohibited_altering_ai_system_without_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_national_public_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(guidance_issued_by/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_appropriate_measures/3, 'celex:32024R1689/oj#art_73').
provenance(reporting_limited_for_equivalent_obligations/2, 'celex:32024R1689/oj#art_73').
provenance(reporting_limited_for_safety_components/3, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_73').

% References
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').
