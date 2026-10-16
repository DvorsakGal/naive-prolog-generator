% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2a6bbb9aa1315521e9b4f7e79734e97edebcfc79aa174ee919f4345af666a7db
% cached     : False
% title      : Quality management system
:- pred must_establish_quality_management_system/2, gloss('provider must put in place a quality management system for a high-risk AI system'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_documented/1, gloss('quality management system is documented in written policies, procedures and instructions'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_includes/2, gloss('quality management system includes a specific aspect'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_proportionate/2, gloss('implementation of quality management system aspects is proportionate to provider organisation size'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_sectoral_equivalent/1, gloss('provider may use sectoral quality management system covering required aspects'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution_quality_management_deemed_fulfilled/1, gloss('financial institution complying with sectoral governance rules is deemed to fulfil quality management obligation with exceptions'), source('celex:32024R1689/oj#art_17').

must_establish_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S).

quality_management_system_documented(Q) :-
    must_establish_quality_management_system(_P, S),
    quality_management_system(S, Q).

quality_management_system_includes(Q, regulatory_compliance_strategy) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, design_control_and_verification) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, development_quality_control_and_assurance) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, examination_test_and_validation_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, technical_specifications_and_standards) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, data_management_systems_and_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, risk_management_system) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, post_market_monitoring_system) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, serious_incident_reporting_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, communication_handling_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, record_keeping_systems_and_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, resource_management) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, accountability_framework) :-
    quality_management_system_documented(Q).

quality_management_system_proportionate(P, S) :-
    must_establish_quality_management_system(P, S).

quality_management_system_sectoral_equivalent(P) :-
    provider(P),
    subject_to_sectoral_quality_management_obligations(P).

financial_institution_quality_management_deemed_fulfilled(P) :-
    provider(P),
    financial_institution(P),
    subject_to_internal_governance_requirements(P),
    complies_with_financial_services_governance_rules(P).

must_establish_quality_management_system(P, S) :-
    financial_institution_quality_management_deemed_fulfilled(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    \+ quality_management_system_includes_exception(S).

quality_management_system_includes_exception(S) :-
    quality_management_system_includes(S, risk_management_system).
quality_management_system_includes_exception(S) :-
    quality_management_system_includes(S, post_market_monitoring_system).
quality_management_system_includes_exception(S) :-
    quality_management_system_includes(S, serious_incident_reporting_procedures).

provenance(must_establish_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_includes/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_proportionate/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_sectoral_equivalent/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_quality_management_deemed_fulfilled/1, 'celex:32024R1689/oj#art_17').

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
