% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : d7a3628179b4555b4d62391285cac5c83bead9c7b0a390abbb7415d172497a3e
% cached     : False
% title      : Reporting of serious incidents
:- pred must_report_serious_incident/2, gloss('who must report serious incident, what about'), source('reconciled').
:- pred must_cooperate_with_authorities/2, gloss('cooperate with AI Office and competent authorities upon reasoned request'), source('reconciled').
:- pred must_investigate_causes/2, gloss('investigation of causes of risk in collaboration with deployer'), source('reconciled').
:- pred must_take_corrective_actions/2, gloss('operator required to take corrective actions, withdraw, or recall AI system'), source('reconciled').
:- pred must_take_restrictive_measures/2, gloss('market surveillance authorities ensure appropriate restrictive measures taken without undue delay'), source('reconciled').
:- pred must_inform_market_surveillance_authority/2, gloss('must inform market surveillance authority'), source('reconciled').
:- pred must_notify_market_surveillance_authority/2, gloss('must notify market surveillance authority'), source('reconciled').
:- pred must_inform_risk/2, gloss('must inform risk'), source('reconciled').
:- pred must_keep_documentation/2, gloss('provider must keep documentation at disposal of national competent authorities'), source('reconciled').
:- pred must_provide/2, gloss('who is obliged to provide, what to provide'), source('reconciled').
:- pred must_provide/3, gloss('who must provide what information to whom'), source('reconciled').
:- pred must_report/2, gloss('who is obliged to report, what about'), source('reconciled').
:- pred must_submit_annual_report/2, gloss('who must submit annual report to whom about real-time remote biometric identification use'), source('reconciled').
:- pred must_supply_information/2, gloss('provider or representative obliged to supply requested information'), source('reconciled').
:- pred must_take_necessary_steps/2, gloss('who is obliged to take steps, what steps'), source('reconciled').
:- pred must_treat_information_confidentially/2, gloss('obligation to treat information and documentation in accordance with confidentiality obligations'), source('reconciled').
:- pred inform_commission/2, gloss('Member State informs Commission'), source('reconciled').
:- pred national_market_surveillance_authority_notified/3, gloss('national market surveillance authority notified'), source('reconciled').
:- pred without_delay/0, gloss('without delay'), source('reconciled').
:- pred without_delay/1, gloss('action taken without undue delay'), source('reconciled').

:- pred serious_incident/1, gloss('incident leading to death, serious harm, or critical disruption'), source('3').
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III as high-risk'), source('reconciled').
:- pred placed_on_market/1, gloss('AI system placed on the market'), source('reconciled').
:- pred provider/1, gloss('entity that develops or places an AI system'), source('3').
:- pred deployer/1, gloss('entity using an AI system under its authority'), source('4').
:- pred market_surveillance_authority/1, gloss('national authority carrying out market surveillance'), source('26').
:- pred member_state/1, gloss('a Member State of the European Union'), source('reconciled').
:- pred widespread_infringement/1, gloss('act contrary to Union law affecting multiple Member States'), source('61').
:- pred ai_system_safety_component/1, gloss('AI system that is a safety component within the meaning of the AI Act'), source('reconciled').
:- pred risk/1, gloss('probability and severity of harm'), source('2').
:- pred national_competent_authority/1, gloss('notifying authority or market surveillance authority'), source('48').
:- pred notifying_authority/1, gloss('national authority for conformity assessment procedures'), source('19').
:- pred notified_body/1, gloss('conformity assessment body notified in accordance with the regulation'), source('22').

:- pred causal_link_established/2, gloss('provider has established causal link between AI system and serious incident or reasonable likelihood of such link'), source('celex:32024R1689/oj#art_73').
:- pred provider_or_deployer_aware/2, gloss('provider or deployer becomes aware of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_occurred_in_member_state/2, gloss('serious incident occurred in member state'), source('celex:32024R1689/oj#art_73').
:- pred report_made_within_days/3, gloss('report made within specified number of days after awareness'), source('celex:32024R1689/oj#art_73').
:- pred report_made_immediately/1, gloss('report made immediately'), source('celex:32024R1689/oj#art_73').
:- pred death_of_person/1, gloss('serious incident involves death of a person'), source('celex:32024R1689/oj#art_73').
:- pred causal_relationship_suspected/2, gloss('provider or deployer suspects causal relationship between high-risk AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred initial_report_incomplete/1, gloss('initial report that is incomplete submitted'), source('celex:32024R1689/oj#art_73').
:- pred complete_report_follows/1, gloss('complete report follows initial incomplete report'), source('celex:32024R1689/oj#art_73').
:- pred risk_assessment_performed/2, gloss('risk assessment of incident performed by provider'), source('celex:32024R1689/oj#art_73').
:- pred corrective_action_taken/2, gloss('corrective action taken by provider'), source('celex:32024R1689/oj#art_73').
:- pred investigation_involves_altering_ai_system/2, gloss('investigation involves altering AI system in way affecting subsequent evaluation'), source('celex:32024R1689/oj#art_73').
:- pred competent_authorities_informed_of_alteration/2, gloss('competent authorities informed of action altering AI system prior to performing investigation'), source('celex:32024R1689/oj#art_73').
:- pred national_public_authorities_or_bodies/1, gloss('national public authorities or bodies referred to in Article 77(1)'), source('celex:32024R1689/oj#art_73').
:- pred appropriate_measures_taken_within_days/3, gloss('market surveillance authority takes appropriate measures within specified days of receiving notification'), source('celex:32024R1689/oj#art_73').
:- pred notification_procedures_followed/1, gloss('notification procedures as provided in Regulation 2019/1020 followed'), source('celex:32024R1689/oj#art_73').
:- pred equivalent_reporting_obligations/1, gloss('Union legislative instruments laying down reporting obligations equivalent to those in this Regulation'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_limited_to_critical_infrastructure_disruption/1, gloss('serious incident limited to those referred to in Article 3(49)(c) - critical infrastructure disruption'), source('celex:32024R1689/oj#art_73').
:- pred safety_component_of_device/1, gloss('high-risk AI system which is safety component of device or is itself a device covered by Regulations 2017/745 or 2017/746'), source('celex:32024R1689/oj#art_73').
:- pred national_competent_authority_chosen_for_purpose/2, gloss('national competent authority chosen for that purpose by Member State where incident occurred'), source('celex:32024R1689/oj#art_73').

% Article 73(1): Providers of high-risk AI systems placed on the Union market shall report any serious incident to the market surveillance authorities of the Member States where that incident occurred.
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    market_surveillance_authority(MSA),
    member_state(MS),
    must_notify_market_surveillance_authority(P, serious_incident_report(I, MSA)).

% Article 73(2): Report shall be made immediately after causal link established, and in any event not later than 15 days after awareness.
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    causal_link_established(P, I),
    report_made_immediately(report(I)),
    report_made_within_days(report(I), P, days(15)).

must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    provider_or_deployer_aware(P, I),
    report_made_within_days(report(I), P, days(15)).

% The period for reporting shall take account of the severity of the serious incident.
report_made_within_days(report(I), P, Period) :-
    serious_incident(I),
    severity_of_serious_incident(I, Severity),
    period_takes_account_of_severity(Period, Severity).

% Article 73(3): Notwithstanding paragraph 2, in event of widespread infringement or serious incident as defined in Article 3(49)(b), report shall be provided immediately, and not later than two days after awareness.
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    (widespread_infringement(I) ; serious_incident_critical_infrastructure(I)),
    provider_or_deployer_aware(P, I),
    report_made_immediately(report(I)),
    report_made_within_days(report(I), P, days(2)).

% Article 73(4): Notwithstanding paragraph 2, in event of death of a person, report shall be provided immediately after causal relationship established or suspected, but not later than 10 days after awareness.
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    death_of_person(I),
    (causal_link_established(P, I) ; causal_relationship_suspected(P, I)),
    report_made_immediately(report(I)),
    report_made_within_days(report(I), P, days(10)).

% Article 73(5): Provider or deployer may submit an initial report that is incomplete, followed by a complete report.
permitted_incomplete_initial_report(P, serious_incident(I)) :-
    provider(P),
    serious_incident(I),
    initial_report_incomplete(report(I)),
    complete_report_follows(report(I)).

permitted_incomplete_initial_report(D, serious_incident(I)) :-
    deployer(D),
    serious_incident(I),
    initial_report_incomplete(report(I)),
    complete_report_follows(report(I)).

% Article 73(6): Following reporting, provider shall without delay perform necessary investigations including risk assessment and corrective action. Provider shall cooperate with competent authorities and notified body, and shall not perform investigation involving altering AI system without informing competent authorities.
must_investigate_causes(P, serious_incident(I)) :-
    provider(P),
    serious_incident(I),
    without_delay(investigation(I)),
    risk_assessment_performed(P, I),
    corrective_action_taken(P, I).

must_cooperate_with_authorities(P, investigation(serious_incident(I))) :-
    provider(P),
    serious_incident(I),
    must_cooperate_with_authorities(P, competent_authorities),
    must_cooperate_with_authorities(P, notified_body).

must_not_alter_ai_system_without_informing(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident(I),
    investigation_involves_altering_ai_system(P, S),
    \+ competent_authorities_informed_of_alteration(P, S).

competent_authorities_informed_of_alteration(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident(I),
    investigation_involves_altering_ai_system(P, S),
    must_inform_market_surveillance_authority(P, alteration(S, I)).

% Article 73(7): Upon receiving notification related to serious incident referred to in Article 3(49)(c), market surveillance authority shall inform national public authorities or bodies referred to in Article 77(1). Commission shall develop dedicated guidance by 2 August 2025.
must_inform_market_surveillance_authority(MSA, national_public_authorities) :-
    market_surveillance_authority(MSA),
    serious_incident(I),
    serious_incident_critical_infrastructure(I),
    national_market_surveillance_authority_notified(MSA, I, notification),
    national_public_authorities_or_bodies(NPA),
    must_inform_market_surveillance_authority(MSA, NPA).

must_develop_guidance(commission, serious_incident_reporting) :-
    guidance_deadline(days_from_date(date(2025, 8, 2))),
    guidance_assessed_regularly(serious_incident_reporting).

% Article 73(8): Market surveillance authority shall take appropriate measures within seven days from date it received notification, and shall follow notification procedures as provided in Regulation 2019/1020.
must_take_restrictive_measures(MSA, serious_incident(I)) :-
    market_surveillance_authority(MSA),
    serious_incident(I),
    national_market_surveillance_authority_notified(MSA, I, notification),
    appropriate_measures_taken_within_days(measures(I), MSA, days(7)),
    notification_procedures_followed(procedures_2019_1020).

% Article 73(9): For high-risk AI systems placed on market or put into service by providers subject to Union legislative instruments laying down reporting obligations equivalent to those in this Regulation, notification limited to those referred to in Article 3(49)(c).
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    (placed_on_market(S) ; putting_into_service(S)),
    equivalent_reporting_obligations(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    serious_incident_limited_to_critical_infrastructure_disruption(I),
    market_surveillance_authority(MSA),
    member_state(MS),
    must_notify_market_surveillance_authority(P, serious_incident_report(I, MSA)).

% Article 73(10): For high-risk AI systems which are safety components of devices, or are themselves devices, covered by Regulations 2017/745 or 2017/746, notification limited to those referred to in Article 3(49)(c), and shall be made to national competent authority chosen for that purpose by Member States where incident occurred.
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    safety_component_of_device(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    serious_incident_limited_to_critical_infrastructure_disruption(I),
    national_competent_authority_chosen_for_purpose(NCA, MS),
    must_notify_market_surveillance_authority(P, serious_incident_report(I, NCA)).

% Article 73(11): National competent authorities shall immediately notify the Commission of any serious incident, whether or not they have taken action on it, in accordance with Regulation 2019/1020 Article 20.
must_notify_market_surveillance_authority(NCA, commission) :-
    national_competent_authority(NCA),
    serious_incident(I),
    national_market_surveillance_authority_notified(NCA, I, notification),
    without_delay(notification_to_commission(I)),
    inform_commission(member_state, serious_incident(I)).

% Helper: serious incident as defined in Article 3(49)(b) - critical infrastructure
serious_incident_critical_infrastructure(I) :-
    serious_incident(I),
    critical_infrastructure_disruption(I).

% Helper: putting into service
putting_into_service(S) :-
    ai_system(S),
    deployer(D),
    deployer_uses(D, S).

% Provenance
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(causal_link_established/2, 'celex:32024R1689/oj#art_73').
provenance(provider_or_deployer_aware/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_occurred_in_member_state/2, 'celex:32024R1689/oj#art_73').
provenance(report_made_within_days/3, 'celex:32024R1689/oj#art_73').
provenance(report_made_immediately/1, 'celex:32024R1689/oj#art_73').
provenance(death_of_person/1, 'celex:32024R1689/oj#art_73').
provenance(causal_relationship_suspected/2, 'celex:32024R1689/oj#art_73').
provenance(initial_report_incomplete/1, 'celex:32024R1689/oj#art_73').
provenance(complete_report_follows/1, 'celex:32024R1689/oj#art_73').
provenance(risk_assessment_performed/2, 'celex:32024R1689/oj#art_73').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_73').
provenance(investigation_involves_altering_ai_system/2, 'celex:32024R1689/oj#art_73').
provenance(competent_authorities_informed_of_alteration/2, 'celex:32024R1689/oj#art_73').
provenance(national_public_authorities_or_bodies/1, 'celex:32024R1689/oj#art_73').
provenance(appropriate_measures_taken_within_days/3, 'celex:32024R1689/oj#art_73').
provenance(notification_procedures_followed/1, 'celex:32024R1689/oj#art_73').
provenance(equivalent_reporting_obligations/1, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_limited_to_critical_infrastructure_disruption/1, 'celex:32024R1689/oj#art_73').
provenance(safety_component_of_device/1, 'celex:32024R1689/oj#art_73').
provenance(national_competent_authority_chosen_for_purpose/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_incomplete_initial_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_ai_system_without_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_73').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_critical_infrastructure/1, 'celex:32024R1689/oj#art_73').
provenance(putting_into_service/1, 'celex:32024R1689/oj#art_73').

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
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').
