% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 378fe5e3d1d46cfd13dc731ad2803ca8761a4f8740bacc863b8a6bd0c8d93325
% cached     : False
% title      : Quality management system
:- pred required_quality_management_system_aspect/2, gloss('aspect that must be included in a quality management system'), source('celex:32024R1689/oj#art_17').

required_quality_management_system_aspect(S, regulatory_compliance_strategy) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, design_control_techniques) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, development_quality_assurance) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, examination_test_validation_procedures) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, technical_specifications) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, data_management_systems) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, risk_management_system) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, post_market_monitoring_system) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, serious_incident_reporting_procedures) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, communication_handling_procedures) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, record_keeping_systems) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, resource_management) :-
    high_risk_ai_system(S).

required_quality_management_system_aspect(S, accountability_framework) :-
    high_risk_ai_system(S).

must_put_quality_management_system_in_place(P, S) :-
    provider(P),
    high_risk_ai_system(S).

quality_management_system_documented(P, S) :-
    provider(P),
    high_risk_ai_system(S).

quality_management_system_proportionate(P, S) :-
    provider(P),
    high_risk_ai_system(S).

exempt_quality_management_system_aspect_financial_institution(S, risk_management_system) :-
    financial_institution(P),
    provider(P),
    high_risk_ai_system(S).

exempt_quality_management_system_aspect_financial_institution(S, post_market_monitoring_system) :-
    financial_institution(P),
    provider(P),
    high_risk_ai_system(S).

exempt_quality_management_system_aspect_financial_institution(S, serious_incident_reporting_procedures) :-
    financial_institution(P),
    provider(P),
    high_risk_ai_system(S).

deemed_fulfilled_by_internal_governance(P, S) :-
    financial_institution(P),
    provider(P),
    high_risk_ai_system(S),
    complies_with_internal_governance(P, Union_financial_services_law).

may_include_aspects_in_sectoral_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    subject_to_sectoral_quality_management_obligations(P).

provenance(required_quality_management_system_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(must_put_quality_management_system_in_place/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_proportionate/2, 'celex:32024R1689/oj#art_17').
provenance(exempt_quality_management_system_aspect_financial_institution/2, 'celex:32024R1689/oj#art_17').
provenance(deemed_fulfilled_by_internal_governance/2, 'celex:32024R1689/oj#art_17').
provenance(may_include_aspects_in_sectoral_quality_management_system/2, 'celex:32024R1689/oj#art_17').

references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_40').
