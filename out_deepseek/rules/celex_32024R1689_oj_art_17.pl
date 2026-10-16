% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1ee8a571d5197fa05b4931b9d21b9bca569a79f22c806462c3d5409c6c79f5d6
% cached     : False
% title      : Quality management system
:- pred quality_management_system/1, gloss('quality management system for high-risk AI systems'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_documented/1, gloss('quality management system documented in systematic and orderly manner'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_includes/2, gloss('quality management system includes a required aspect'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_aspect/1, gloss('required aspect of a quality management system'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution/1, gloss('financial institution subject to internal governance requirements'), source('celex:32024R1689/oj#art_17').
:- pred internal_governance_compliant/1, gloss('entity complying with internal governance rules under financial services law'), source('celex:32024R1689/oj#art_17').

must_put_in_place(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S).

must_put_in_place(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    puts_into_service(Provider, S).

quality_management_system(Q) :-
    quality_management_system_documented(Q),
    quality_management_system_includes(Q, regulatory_compliance_strategy),
    quality_management_system_includes(Q, design_control_techniques),
    quality_management_system_includes(Q, development_quality_control),
    quality_management_system_includes(Q, examination_test_validation_procedures),
    quality_management_system_includes(Q, technical_specifications),
    quality_management_system_includes(Q, data_management_systems),
    quality_management_system_includes(Q, risk_management_system),
    quality_management_system_includes(Q, post_market_monitoring_system),
    quality_management_system_includes(Q, serious_incident_reporting_procedures),
    quality_management_system_includes(Q, communication_handling),
    quality_management_system_includes(Q, record_keeping_systems),
    quality_management_system_includes(Q, resource_management),
    quality_management_system_includes(Q, accountability_framework).

quality_management_system_aspect(regulatory_compliance_strategy).
quality_management_system_aspect(design_control_techniques).
quality_management_system_aspect(development_quality_control).
quality_management_system_aspect(examination_test_validation_procedures).
quality_management_system_aspect(technical_specifications).
quality_management_system_aspect(data_management_systems).
quality_management_system_aspect(risk_management_system).
quality_management_system_aspect(post_market_monitoring_system).
quality_management_system_aspect(serious_incident_reporting_procedures).
quality_management_system_aspect(communication_handling).
quality_management_system_aspect(record_keeping_systems).
quality_management_system_aspect(resource_management).
quality_management_system_aspect(accountability_framework).

must_be_proportionate(Implementation, Provider) :-
    quality_management_system_aspect(Aspect),
    implementation_of(Implementation, Aspect),
    provider(Provider).

must_respect_rigour(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S).

must_respect_rigour(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    puts_into_service(Provider, S).

permitted_inclusion(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S),
    subject_to_sectoral_qms_obligations(Provider).

permitted_inclusion(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    puts_into_service(Provider, S),
    subject_to_sectoral_qms_obligations(Provider).

quality_management_system_deemed_fulfilled(Provider) :-
    financial_institution(Provider),
    internal_governance_compliant(Provider).

quality_management_system_deemed_fulfilled(Provider) :-
    financial_institution(Provider),
    internal_governance_compliant(Provider),
    quality_management_system_includes(_, risk_management_system),
    quality_management_system_includes(_, post_market_monitoring_system),
    quality_management_system_includes(_, serious_incident_reporting_procedures).

provenance(must_put_in_place/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_aspect/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_includes/2, 'celex:32024R1689/oj#art_17').
provenance(must_be_proportionate/2, 'celex:32024R1689/oj#art_17').
provenance(must_respect_rigour/2, 'celex:32024R1689/oj#art_17').
provenance(permitted_inclusion/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_deemed_fulfilled/1, 'celex:32024R1689/oj#art_17').

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
