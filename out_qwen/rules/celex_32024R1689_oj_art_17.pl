% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 17bf39dc737cccc88ca81a8bef8d4ba3fb4b4b908f909f75798f532ca51ba825
% cached     : False
% title      : Quality management system
:- pred must_put_in_place_quality_management_system/2, gloss('provider must establish a QMS for a high-risk AI system'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_covers_aspect/2, gloss('QMS includes a specific required aspect'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution/1, gloss('provider that is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_17').
:- pred internal_governance_compliance/1, gloss('compliance with rules on internal governance under Union financial services law'), source('celex:32024R1689/oj#art_17').

must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    ai_system(S),
    \+ financial_institution(P).

must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    ai_system(S),
    financial_institution(P),
    internal_governance_compliance(P).

quality_management_system_covers_aspect(S, regulatory_compliance_strategy) :-
    ai_system(S).

quality_management_system_covers_aspect(S, design_control_procedures) :-
    ai_system(S).

quality_management_system_covers_aspect(S, development_quality_assurance) :-
    ai_system(S).

quality_management_system_covers_aspect(S, examination_test_validation_procedures) :-
    ai_system(S).

quality_management_system_covers_aspect(S, technical_specifications_application) :-
    ai_system(S).

quality_management_system_covers_aspect(S, data_management_systems) :-
    ai_system(S).

quality_management_system_covers_aspect(S, risk_management_system) :-
    ai_system(S).

quality_management_system_covers_aspect(S, post_market_monitoring_system) :-
    ai_system(S).

quality_management_system_covers_aspect(S, serious_incident_reporting_procedures) :-
    ai_system(S).

quality_management_system_covers_aspect(S, communication_handling) :-
    ai_system(S).

quality_management_system_covers_aspect(S, record_keeping_systems) :-
    ai_system(S).

quality_management_system_covers_aspect(S, resource_management) :-
    ai_system(S).

quality_management_system_covers_aspect(S, accountability_framework) :-
    ai_system(S).

provenance(must_put_in_place_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_covers_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_17').
provenance(internal_governance_compliance/1, 'celex:32024R1689/oj#art_17').

references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_g').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_i').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_40').
