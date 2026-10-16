% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4ad33a80ac3be316bd4fe775931e3f44b702108c02088e9988a7536ee7a7b33a
% cached     : False
% title      : Reporting of serious incidents
:- pred must_report_serious_incident/2, gloss('provider must report serious incident to authority'), source('celex:32024R1689/oj#art_73').
:- pred reporting_deadline/3, gloss('deadline for reporting based on incident type'), source('celex:32024R1689/oj#art_73').
:- pred must_investigate_serious_incident/2, gloss('provider must investigate serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_cooperate_with_authority/2, gloss('provider must cooperate during investigation'), source('celex:32024R1689/oj#art_73').
:- pred must_not_alter_system_before_notification/2, gloss('provider must not alter system before informing authority'), source('celex:32024R1689/oj#art_73').
:- pred must_inform_public_authorities/2, gloss('market surveillance authority must inform public bodies'), source('celex:32024R1689/oj#art_73').
:- pred must_take_measures_within_days/3, gloss('authority must take measures within specified days'), source('celex:32024R1689/oj#art_73').
:- pred must_notify_commission_of_serious_incident/2, gloss('national competent authority must notify commission'), source('celex:32024R1689/oj#art_73').
:- pred limited_reporting_applies/1, gloss('reporting limited to specific serious incidents'), source('celex:32024R1689/oj#art_73').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_73').
:- pred causal_link_established/2, gloss('causal link established between system and incident'), source('celex:32024R1689/oj#art_73').
:- pred aware_of_incident/2, gloss('operator became aware of serious incident'), source('celex:32024R1689/oj#art_73').

must_report_serious_incident(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    serious_incident(S).

reporting_deadline(S, days(15)) :-
    serious_incident(S),
    \+ widespread_infringement(S),
    \+ death_involved(S),
    \+ critical_disruption(S).

reporting_deadline(S, days(2)) :-
    serious_incident(S),
    widespread_infringement(S).

reporting_deadline(S, days(2)) :-
    serious_incident(S),
    critical_disruption(S).

reporting_deadline(S, days(10)) :-
    serious_incident(S),
    death_involved(S).

must_investigate_serious_incident(P, S) :-
    provider(P),
    serious_incident(S),
    high_risk_ai_system(S).

must_cooperate_with_authority(P, A) :-
    provider(P),
    national_competent_authority(A),
    serious_incident(_S).

must_not_alter_system_before_notification(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident(S).

must_inform_public_authorities(A, S) :-
    market_surveillance_authority(A),
    serious_incident(S),
    critical_disruption(S).

must_take_measures_within_days(A, S, 7) :-
    market_surveillance_authority(A),
    serious_incident(S).

must_notify_commission_of_serious_incident(A, S) :-
    national_competent_authority(A),
    serious_incident(S).

limited_reporting_applies(S) :-
    high_risk_ai_system(S),
    safety_component(S).

limited_reporting_applies(S) :-
    high_risk_ai_system(S),
    medical_device(S).

provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline/3, 'celex:32024R1689/oj#art_73').
provenance(must_investigate_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_system_before_notification/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_public_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures_within_days/3, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission_of_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(limited_reporting_applies/1, 'celex:32024R1689/oj#art_73').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(causal_link_established/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_incident/2, 'celex:32024R1689/oj#art_73').

references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').
