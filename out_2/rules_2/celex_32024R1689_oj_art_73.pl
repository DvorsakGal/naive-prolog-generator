% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 292128c39f707b6f3e3540e55f49195a4781c721cebe9451b778ff85e66d3d0d
% cached     : False
% title      : Reporting of serious incidents
:- pred incident_occurs_in_member_state/2, gloss('incident occurred in the territory of the member state of the authority'), source('celex:32024R1689/oj#art_73').
:- pred causal_link_established/2, gloss('provider has established a causal link between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred reasonable_likelihood/2, gloss('provider has reasonable likelihood of a causal link between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred aware_of_incident/2, gloss('actor is aware of the serious incident'), source('celex:32024R1689/oj#art_73').
:- pred within_days/3, gloss('action must be taken within given number of days after awareness'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_type_b/1, gloss('serious incident as defined in article 3 point 49(b)'), source('celex:32024R1689/oj#art_73').
:- pred death_of_person/1, gloss('serious incident resulting in death of a person'), source('celex:32024R1689/oj#art_73').
:- pred suspect_causal_link/2, gloss('provider suspects a causal link between AI system and serious incident'), source('celex:32024R1689/oj#art_73').
:- pred permitted_incomplete_report/2, gloss('provider or deployer may submit an initial incomplete report'), source('celex:32024R1689/oj#art_73').
:- pred reported/2, gloss('provider has reported the serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_report/2, gloss('provider must report serious incident to the relevant authority'), source('celex:32024R1689/oj#art_73').
:- pred must_investigate/2, gloss('provider must investigate the serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_conduct_risk_assessment/2, gloss('provider must conduct a risk assessment of the incident'), source('celex:32024R1689/oj#art_73').
:- pred must_take_corrective_action/2, gloss('provider must take corrective action'), source('celex:32024R1689/oj#art_73').
:- pred must_cooperate/2, gloss('provider must cooperate with competent authorities'), source('celex:32024R1689/oj#art_73').
:- pred must_not_alter_before_informing/2, gloss('provider must not alter the AI system before informing competent authorities'), source('celex:32024R1689/oj#art_73').
:- pred receives_notification/2, gloss('authority has received a notification of a serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_inform/2, gloss('authority must inform public authorities'), source('celex:32024R1689/oj#art_73').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_73').
:- pred must_develop_guidance/2, gloss('Commission must develop guidance by a given date'), source('celex:32024R1689/oj#art_73').
:- pred must_take_measures/2, gloss('market surveillance authority must take measures within seven days'), source('celex:32024R1689/oj#art_73').
:- pred must_notify/2, gloss('authority must notify the Commission or national competent authority of a serious incident'), source('celex:32024R1689/oj#art_73').

must_report(Provider, report(Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    incident_occurs_in_member_state(Incident, Authority),
    (causal_link_established(Provider, Incident) ; reasonable_likelihood(Provider, Incident)),
    aware_of_incident(Actor, Incident),
    within_days(Actor, Incident, days(15)).

must_report(Provider, report(Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    incident_occurs_in_member_state(Incident, Authority),
    (widespread_infringement(Incident) ; serious_incident_type_b(Incident)),
    aware_of_incident(Actor, Incident),
    within_days(Actor, Incident, days(2)).

must_report(Provider, report(Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    incident_occurs_in_member_state(Incident, Authority),
    death_of_person(Incident),
    (causal_link_established(Provider, Incident) ; suspect_causal_link(Provider, Incident)),
    aware_of_incident(Actor, Incident),
    within_days(Actor, Incident, days(10)).

permitted_incomplete_report(Provider, Incident) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident).

must_investigate(Provider, Incident) :-
    provider(Provider),
    serious_incident(Incident),
    reported(Provider, Incident).

must_conduct_risk_assessment(Provider, Incident) :-
    provider(Provider),
    serious_incident(Incident),
    reported(Provider, Incident).

must_take_corrective_action(Provider, Incident) :-
    provider(Provider),
    serious_incident(Incident),
    reported(Provider, Incident).

must_cooperate(Provider, Authority) :-
    provider(Provider),
    national_competent_authority(Authority),
    serious_incident(Incident),
    reported(Provider, Incident).

must_not_alter_before_informing(Provider, Incident) :-
    provider(Provider),
    serious_incident(Incident),
    reported(Provider, Incident).

must_inform(Authority, public_authorities) :-
    market_surveillance_authority(Authority),
    receives_notification(Authority, Incident).

must_develop_guidance(Commission, by(date(2025,8,2))) :-
    commission(Commission).

must_take_measures(Authority, Incident) :-
    market_surveillance_authority(Authority),
    receives_notification(Authority, Incident),
    within_days(Authority, Incident, days(7)).

must_notify(national_competent_authority, notification(Incident)) :-
    high_risk_ai_system(System),
    safety_component_ai_system(System),
    serious_incident(Incident).

must_notify(national_competent_authority, commission_notification(Incident)) :-
    serious_incident(Incident).

provenance(must_report/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_incomplete_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').
provenance(must_conduct_risk_assessment/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_before_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_73').
provenance(must_notify/2, 'celex:32024R1689/oj#art_73').

references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').
