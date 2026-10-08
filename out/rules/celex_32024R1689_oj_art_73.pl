% unit       : celex:32024R1689/oj#art_73
% title      : Reporting of serious incidents
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : gpt-oss:120b-cloud
% prompt sha : fe835150c5aa4943482ca7ef9fbf3052f3dc6523604b93f6cb8759573a51a2db
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_73').
:- pred death_of_person/1, gloss('death of a natural person'), source('celex:32024R1689/oj#art_73').
:- pred aware_of_incident/2, gloss('entity aware of a serious incident'), source('celex:32024R1689/oj#art_73').
:- pred need_timely_reporting/1, gloss('entity needs timely reporting'), source('celex:32024R1689/oj#art_73').

required_reporting_of_serious_incident/2 :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    serious_incident(_I),
    aware_of_incident(P, _I),
    market_surveillance_authority(_A).

must_report_immediately/2 :-
    provider(P),
    high_risk_ai_system(S),
    (   widespread_infringement(_I)
    ;   serious_incident(_I)
    ),
    aware_of_incident(P, _I).

must_report_by_2_days/2 :-
    provider(P),
    high_risk_ai_system(S),
    (   widespread_infringement(_I)
    ;   serious_incident(_I)
    ),
    aware_of_incident(P, _I).

must_report_by_15_days/2 :-
    provider(P),
    high_risk_ai_system(S),
    aware_of_incident(P, _I).

must_report_by_10_days/2 :-
    provider(P),
    high_risk_ai_system(S),
    death_of_person(_I),
    aware_of_incident(P, _I).

permitted_initial_incomplete_report/2 :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    need_timely_reporting(P).

provenance(required_reporting_of_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_immediately/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_by_2_days/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_by_15_days/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_by_10_days/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_initial_incomplete_report/2, 'celex:32024R1689/oj#art_73').

references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_4').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_5').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_7').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_8').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
