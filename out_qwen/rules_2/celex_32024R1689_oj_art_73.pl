% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 5b51ad7eb1daf4c933ef6d9335921e012bffa8544cd40ebed3420d7755703040
% cached     : False
% title      : Reporting of serious incidents
:- pred must_report_serious_incident_to_authority/2, gloss('provider must report serious incident to market surveillance authority'), source('celex:32024R1689/oj#art_73').
:- pred reporting_deadline_days/2, gloss('number of days within which report must be made after awareness'), source('celex:32024R1689/oj#art_73').
:- pred must_perform_investigation_without_delay/2, gloss('provider must perform investigation without delay after reporting'), source('celex:32024R1689/oj#art_73').
:- pred must_cooperate_during_investigation/2, gloss('provider must cooperate with authorities during investigation'), source('celex:32024R1689/oj#art_73').
:- pred must_not_alter_system_before_informing_authority/2, gloss('provider must not alter system in way affecting evaluation before informing authority'), source('celex:32024R1689/oj#art_73').
:- pred must_inform_public_authorities_of_incident/2, gloss('market surveillance authority must inform public authorities of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_take_measures_within_days/2, gloss('market surveillance authority must take measures within specified days'), source('celex:32024R1689/oj#art_73').
:- pred limited_reporting_obligation_applies/1, gloss('reporting obligation limited to specific serious incidents'), source('celex:32024R1689/oj#art_73').
:- pred must_notify_commission_of_serious_incident/2, gloss('national competent authority must notify commission of serious incident'), source('celex:32024R1689/oj#art_73').

must_report_serious_incident_to_authority(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    serious_incident(S).

reporting_deadline_days(S, 15) :-
    serious_incident(S),
    \+ widespread_infringement(S),
    \+ death_involved(S),
    \+ serious_incident_type_b(S).

reporting_deadline_days(S, 2) :-
    serious_incident(S),
    (widespread_infringement(S) ; serious_incident_type_b(S)).

reporting_deadline_days(S, 10) :-
    serious_incident(S),
    death_involved(S),
    \+ widespread_infringement(S),
    \+ serious_incident_type_b(S).

must_perform_investigation_without_delay(P, S) :-
    provider(P),
    serious_incident(S),
    must_report_serious_incident_to_authority(P, S).

must_cooperate_during_investigation(P, S) :-
    provider(P),
    serious_incident(S),
    must_perform_investigation_without_delay(P, S).

must_not_alter_system_before_informing_authority(P, S) :-
    provider(P),
    serious_incident(S),
    must_perform_investigation_without_delay(P, S).

must_inform_public_authorities_of_incident(A, S) :-
    relevant_market_surveillance_authority(A),
    serious_incident(S),
    serious_incident_type_c(S).

must_take_measures_within_days(A, 7) :-
    relevant_market_surveillance_authority(A),
    serious_incident(_S),
    must_report_serious_incident_to_authority(_P, _S).

limited_reporting_obligation_applies(S) :-
    high_risk_ai_system_annex_iii(S),
    placing_on_market(S),
    equivalent_reporting_obligation_applies(S).

limited_reporting_obligation_applies(S) :-
    high_risk_ai_system(S),
    ai_safety_component(S),
    covered_by_medical_device_regulation(S).

must_notify_commission_of_serious_incident(A, S) :-
    national_competent_authority(A),
    serious_incident(S).

provenance(must_report_serious_incident_to_authority/2, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_days/2, 'celex:32024R1689/oj#art_73').
provenance(must_perform_investigation_without_delay/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_during_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_system_before_informing_authority/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_public_authorities_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures_within_days/2, 'celex:32024R1689/oj#art_73').
provenance(limited_reporting_obligation_applies/1, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission_of_serious_incident/2, 'celex:32024R1689/oj#art_73').

references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').
