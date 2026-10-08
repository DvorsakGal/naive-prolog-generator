% unit       : celex:32024R1689/oj#art_73
% title      : Reporting of serious incidents
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : gpt-oss:120b-cloud
% prompt sha : 1a6d1bfe6f00ddf3413b8298538ea1daa782f9c0b5e32caa6cbc8472cdac7d1d
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred provider_of/2, gloss('provider provides AI system'), source('celex:32024R1689/oj#art_73').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_73').
:- pred death_of_person/1, gloss('incident resulting in death of a person'), source('celex:32024R1689/oj#art_73').
:- pred causal_link_established/2, gloss('causal link between AI system and incident established'), source('celex:32024R1689/oj#art_73').

must_report(Provider, Incident) :-
    provider(Provider),
    provider_of(Provider, System),
    high_risk_ai_system(System),
    serious_incident(Incident).

provenance(must_report/2, 'celex:32024R1689/oj#art_73').

required_reporting_deadline(Provider, Incident, Days) :-
    must_report(Provider, Incident),
    \+ widespread_infringement(Incident),
    \+ death_of_person(Incident),
    Days = 15,
    Days = Days.

provenance(required_reporting_deadline/3, 'celex:32024R1689/oj#art_73').

required_reporting_deadline(Provider, Incident, Days) :-
    must_report(Provider, Incident),
    (widespread_infringement(Incident) ; serious_incident(Incident)),
    Days = 2,
    Days = Days.

provenance(required_reporting_deadline/3, 'celex:32024R1689/oj#art_73').

required_reporting_deadline(Provider, Incident, Days) :-
    must_report(Provider, Incident),
    death_of_person(Incident),
    Days = 10,
    Days = Days.

provenance(required_reporting_deadline/3, 'celex:32024R1689/oj#art_73').

required_report_immediate_after_causal_link(Provider, Incident) :-
    must_report(Provider, Incident),
    causal_link_established(Provider, Incident).

provenance(required_report_immediate_after_causal_link/2, 'celex:32024R1689/oj#art_73').

permitted_initial_incomplete_report(Provider, Incident) :-
    must_report(Provider, Incident).

provenance(permitted_initial_incomplete_report/2, 'celex:32024R1689/oj#art_73').

report_made(Provider, Incident) :-
    must_report(Provider, Incident),
    required_reporting_deadline(Provider, Incident, Days),
    Days >= 0.

provenance(report_made/2, 'celex:32024R1689/oj#art_73').

must_investigate(Provider, Incident) :-
    report_made(Provider, Incident).

provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').

must_cooperate(Provider, Authority, Incident) :-
    must_investigate(Provider, Incident),
    market_surveillance_authority(Authority).

provenance(must_cooperate/3, 'celex:32024R1689/oj#art_73').

must_not_alter_ai_system(Provider, Incident) :-
    must_investigate(Provider, Incident).

provenance(must_not_alter_ai_system/2, 'celex:32024R1689/oj#art_73').

must_notify_commission(Authority, Incident) :-
    market_surveillance_authority(Authority),
    serious_incident(Incident).

provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_73').

references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_20').
