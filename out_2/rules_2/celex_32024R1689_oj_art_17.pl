% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : dc0a5639d984dfc71a8d5bd9084501df29eae66bd544a38be0972b2e9bac885d
% cached     : False
% title      : Quality management system
:- pred financial_institution/1, gloss('provider that is a financial institution'), source('celex:32024R1689/oj#art_17').
:- pred required_quality_management_aspect/1, gloss('aspect that must be included in quality management system'), source('celex:32024R1689/oj#art_17').
:- pred exempt_quality_management_system/1, gloss('quality management system obligation exempt for financial institutions'), source('celex:32024R1689/oj#art_17').

must_establish(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(_).

exempt_quality_management_system(Provider) :-
    provider(Provider),
    financial_institution(Provider).

required_quality_management_aspect(strategy_for_regulatory_compliance).
required_quality_management_aspect(design_control_and_verification_techniques).
required_quality_management_aspect(development_quality_control_assurance).
required_quality_management_aspect(examination_test_validation_procedures).
required_quality_management_aspect(technical_specifications_and_standards).
required_quality_management_aspect(data_management_procedures).
required_quality_management_aspect(risk_management_system).
required_quality_management_aspect(post_market_monitoring_system).
required_quality_management_aspect(serious_incident_reporting_procedures).
required_quality_management_aspect(communication_handling_with_authorities).
required_quality_management_aspect(record_keeping_systems).
required_quality_management_aspect(resource_management).
required_quality_management_aspect(accountability_framework).

provenance(must_establish/2, 'celex:32024R1689/oj#art_17').
provenance(required_quality_management_aspect/1, 'celex:32024R1689/oj#art_17').
provenance(exempt_quality_management_system/1, 'celex:32024R1689/oj#art_17').

references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_g').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_i').
