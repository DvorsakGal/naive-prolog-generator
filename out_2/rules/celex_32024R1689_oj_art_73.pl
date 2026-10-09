% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e911d8842567c9614b0430bf0d3843f75377a19eec02bc4a11f59e4b3ee9357d
% cached     : False
% title      : Reporting of serious incidents
:- pred required_high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident/1, gloss('serious incident'), source('celex:32024R1689/oj#art_73').
:- pred causal_link_established/2, gloss('causal link between AI system and serious incident established'), source('celex:32024R1689/oj#art_73').
:- pred awareness/2, gloss('provider or deployer becomes aware of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred widespread_infringement/1, gloss('widespread infringement'), source('celex:32024R1689/oj#art_73').
:- pred death_of_person/1, gloss('death of a person'), source('celex:32024R1689/oj#art_73').
:- pred incident_occurred_in/2, gloss('incident occurred in the territory of a Member State'), source('celex:32024R1689/oj#art_73').
:- pred initial_report/2, gloss('initial incomplete report'), source('celex:32024R1689/oj#art_73').
:- pred complete_report/2, gloss('complete report'), source('celex:32024R1689/oj#art_73').
:- pred investigation/2, gloss('investigation of serious incident'), source('celex:32024R1689/oj#art_73').
:- pred cooperate_with/2, gloss('cooperate with competent authority'), source('celex:32024R1689/oj#art_73').
:- pred alter_before_informing/2, gloss('alter AI system before informing competent authority'), source('celex:32024R1689/oj#art_73').
:- pred guidance_developed_by/2, gloss('guidance developed by Commission'), source('celex:32024R1689/oj#art_73').
:- pred guidance_deadline/2, gloss('deadline for guidance'), source('celex:32024R1689/oj#art_73').
:- pred appropriate_measures_taken/2, gloss('appropriate measures taken by market surveillance authority'), source('celex:32024R1689/oj#art_73').
:- pred measures_deadline/2, gloss('deadline for taking measures'), source('celex:32024R1689/oj#art_73').
:- pred follow_notification_procedures/1, gloss('follow notification procedures'), source('celex:32024R1689/oj#art_73').

%--- Obligations to report serious incidents ------------------------------------
must_report(Provider, report(serious_incident(Incident), Authority)) :-
    provider(Provider),
    required_high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    incident_occurred_in(Incident, Authority).

report_immediately(Provider, serious_incident(Incident)) :-
    provider(Provider),
    causal_link_established(Provider, Incident).

report_deadline(Provider, deadline(days(15), Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    awareness(Provider, Incident),
    causal_link_established(Provider, Incident).

%--- Faster reporting for widespread infringement or specific serious incidents ---
report_immediately(Provider, serious_incident(Incident)) :-
    provider(Provider),
    (   widespread_infringement(Incident)
    ;   serious_incident(Incident)  % as defined in Art 3 pnt 49 b
    ).

report_deadline(Provider, deadline(days(2), Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    awareness(Provider, Incident).

%--- Faster reporting when death of a person occurs ---------------------------
report_immediately(Provider, serious_incident(Incident)) :-
    provider(Provider),
    death_of_person(Incident).

report_deadline(Provider, deadline(days(10), Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    awareness(Provider, Incident).

%--- Permission to submit an initial incomplete report -----------------------
permitted_initial_report(Provider) :-
    provider(Provider).

permitted_complete_report(Provider) :-
    provider(Provider).

%--- Post‑reporting investigation obligations ----------------------------------
must_investigate(Provider, serious_incident(Incident)) :-
    provider(Provider),
    serious_incident(Incident).

must_cooperate(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority).

must_not_alter_before_informing(Provider, serious_incident(Incident)) :-
    provider(Provider),
    serious_incident(Incident).

%--- Information sharing by market surveillance authorities -------------------
must_inform(MarketAuthority, national_public_authorities) :-
    market_surveillance_authority(MarketAuthority).

must_develop_guidance(Commission, guidance) :-
    ai_office(Commission).

guidance_deadline(guidance, date(2025,8,2)).

%--- Measures to be taken by market surveillance authorities -----------------
must_take_measures(MarketAuthority, serious_incident(Incident)) :-
    market_surveillance_authority(MarketAuthority),
    serious_incident(Incident).

measures_deadline(Incident, days(7)) :-
    serious_incident(Incident).

follow_notification_procedures(MarketAuthority) :-
    market_surveillance_authority(MarketAuthority).

%--- Provenance ---------------------------------------------------------------
provenance(must_report/2, 'celex:32024R1689/oj#art_73').
provenance(report_immediately/2, 'celex:32024R1689/oj#art_73').
provenance(report_deadline/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_initial_report/1, 'celex:32024R1689/oj#art_73').
provenance(permitted_complete_report/1, 'celex:32024R1689/oj#art_73').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_before_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(guidance_deadline/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_73').
provenance(measures_deadline/2, 'celex:32024R1689/oj#art_73').
provenance(follow_notification_procedures/1, 'celex:32024R1689/oj#art_73').

%--- References ---------------------------------------------------------------
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_4').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_5').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_7').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_8').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_9').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_10').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_11').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').
