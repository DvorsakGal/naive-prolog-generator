% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 4a37648a05beb14ea29897a5ef547cd64ab7c9712037022a3261f3f9c6fcfaf4
% cached     : False
% title      : Quality management system
:- pred must_establish_quality_management_system/2, gloss('provider must establish a quality management system for high-risk AI systems'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_documented/1, gloss('quality management system documented in systematic and orderly manner'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_includes/2, gloss('quality management system includes a required aspect'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution subject to internal governance requirements'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_deemed_fulfilled/1, gloss('quality management system obligation deemed fulfilled through financial services rules'), source('celex:32024R1689/oj#art_17').

must_establish_quality_management_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    quality_management_system_documented(System),
    quality_management_system_includes(System, regulatory_compliance_strategy),
    quality_management_system_includes(System, design_control_techniques),
    quality_management_system_includes(System, development_quality_control),
    quality_management_system_includes(System, examination_test_validation_procedures),
    quality_management_system_includes(System, technical_specifications_and_means),
    quality_management_system_includes(System, data_management_systems),
    quality_management_system_includes(System, risk_management_system),
    quality_management_system_includes(System, post_market_monitoring_setup),
    quality_management_system_includes(System, serious_incident_reporting_procedures),
    quality_management_system_includes(System, communication_handling),
    quality_management_system_includes(System, record_keeping_systems),
    quality_management_system_includes(System, resource_management),
    quality_management_system_includes(System, accountability_framework).

quality_management_system_documented(System) :-
    high_risk_ai_system(System).

quality_management_system_includes(System, regulatory_compliance_strategy) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, design_control_techniques) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, development_quality_control) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, examination_test_validation_procedures) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, technical_specifications_and_means) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, data_management_systems) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, risk_management_system) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, post_market_monitoring_setup) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, serious_incident_reporting_procedures) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, communication_handling) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, record_keeping_systems) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, resource_management) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, accountability_framework) :-
    high_risk_ai_system(System).

% Paragraph 2: proportionality and rigour
must_establish_quality_management_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    quality_management_system_documented(System),
    respects_degree_of_rigour(Provider, System).

respects_degree_of_rigour(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

% Paragraph 3: integration with sectoral QMS
quality_management_system_includes(System, Aspect) :-
    high_risk_ai_system(System),
    provider(Provider),
    subject_to_sectoral_qms_obligations(Provider),
    sectoral_qms_includes(Provider, Aspect).

subject_to_sectoral_qms_obligations(Provider) :-
    provider(Provider).

sectoral_qms_includes(Provider, Aspect) :-
    quality_management_system_includes(_, Aspect).

% Paragraph 4: financial institution exception
quality_management_system_deemed_fulfilled(Provider) :-
    financial_institution_provider(Provider),
    complies_with_financial_services_governance(Provider).

financial_institution_provider(Provider) :-
    provider(Provider).

complies_with_financial_services_governance(Provider) :-
    financial_institution_provider(Provider).

% Financial institutions must still include points (g), (h), (i)
must_establish_quality_management_system(Provider, System) :-
    financial_institution_provider(Provider),
    high_risk_ai_system(System),
    quality_management_system_includes(System, risk_management_system),
    quality_management_system_includes(System, post_market_monitoring_setup),
    quality_management_system_includes(System, serious_incident_reporting_procedures).

provenance(must_establish_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_includes/2, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_17').
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
