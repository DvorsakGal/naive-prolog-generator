% unit       : celex:32024R1689/oj#art_73
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 2 Sharing of information on serious incidents
% slice sha  : 457a10b87497ab535dbfb3155a2fe12a3a9d37f678e6ce21c15deff9c21f6a6e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 979ff660a2f44544ffa8798c77d5a7ce95e7a87bc0f6fbb12a5eb13dc86f6cdd
% cached     : False
% title      : Reporting of serious incidents
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_73').
:- pred must_report_serious_incident/2, gloss('obligation to report a serious incident'), source('celex:32024R1689/oj#art_73').
:- pred report_deadline/3, gloss('deadline for reporting a serious incident'), source('celex:32024R1689/oj#art_73').
:- pred initial_report_permitted/2, gloss('permission to submit an incomplete initial report'), source('celex:32024R1689/oj#art_73').
:- pred must_investigate_serious_incident/2, gloss('obligation to investigate a serious incident'), source('celex:32024R1689/oj#art_73').
:- pred must_cooperate_with_authorities/2, gloss('obligation to cooperate with competent authorities during investigation'), source('celex:32024R1689/oj#art_73').
:- pred prohibited_alteration_before_notification/2, gloss('prohibition on altering AI system before notifying authorities'), source('celex:32024R1689/oj#art_73').
:- pred must_inform_authorities_of_alteration/2, gloss('obligation to inform authorities before altering AI system'), source('celex:32024R1689/oj#art_73').
:- pred serious_incident_type_c/1, gloss('serious incident as defined in Article 3 point 49(c)'), source('celex:32024R1689/oj#art_73').

must_report_serious_incident(P, incident(I, S)) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    serious_incident(I),
    occurred_in_member_state(I, _MS).

report_deadline(incident(I, S), days(15), provider_or_deployer) :-
    must_report_serious_incident(_P, incident(I, S)),
    \+ widespread_infringement(I),
    \+ serious_incident_type_c(I),
    \+ death_occurred(I),
    causal_link_established_or_likely(I).

report_deadline(incident(I, S), days(2), provider_or_deployer) :-
    must_report_serious_incident(_P, incident(I, S)),
    widespread_infringement(I).

report_deadline(incident(I, S), days(2), provider_or_deployer) :-
    must_report_serious_incident(_P, incident(I, S)),
    serious_incident_type_c(I).

report_deadline(incident(I, S), days(10), provider_or_deployer) :-
    must_report_serious_incident(_P, incident(I, S)),
    death_occurred(I),
    causal_relationship_established_or_suspected(I).

initial_report_permitted(P, incident(I, S)) :-
    must_report_serious_incident(P, incident(I, S)).

must_investigate_serious_incident(P, incident(I, S)) :-
    provider(P),
    serious_incident(I),
    high_risk_ai_system(S),
    reported(I).

must_cooperate_with_authorities(P, investigation(I, S)) :-
    must_investigate_serious_incident(P, incident(I, S)),
    competent_authority(_A),
    notified_body(_B).

prohibited_alteration_before_notification(P, S) :-
    must_investigate_serious_incident(P, incident(_I, S)),
    \+ informed_competent_authorities(P, alteration(S)).

must_inform_authorities_of_alteration(P, alteration(S)) :-
    must_investigate_serious_incident(P, incident(_I, S)),
    altering_ai_system(P, S).

serious_incident_type_c(I) :-
    serious_incident(I),
    incident_leads_to_critical_disruption(I).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(report_deadline/3, 'celex:32024R1689/oj#art_73').
provenance(initial_report_permitted/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(prohibited_alteration_before_notification/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_authorities_of_alteration/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_type_c/1, 'celex:32024R1689/oj#art_73').

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
