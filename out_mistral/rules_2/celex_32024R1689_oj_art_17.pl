% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 6cc130e514131e63deb5e47bcc4b381df4fc37e11f3e091b540590ef564a6cd6
% cached     : False
% title      : Quality management system
:- pred quality_management_system/1, gloss('quality management system ensuring compliance with the regulation'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_documented/1, gloss('quality management system documented in systematic and orderly manner as written policies, procedures and instructions'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_includes/2, gloss('quality management system includes aspect'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_proportionate/1, gloss('implementation of quality management system aspects is proportionate to size of provider organisation'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_respects_rigour/1, gloss('provider respects degree of rigour and level of protection required to ensure compliance'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_may_integrate_sectoral/1, gloss('provider subject to sectoral Union law quality management obligations may include aspects as part of that system'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution_quality_management_deemed_fulfilled/1, gloss('financial institution provider complying with Union financial services law internal governance rules has quality management obligation deemed fulfilled except for points g, h, i'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution subject to internal governance requirements under Union financial services law'), source('celex:32024R1689/oj#art_17').

must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    quality_management_system_for(P, S).

quality_management_system_for(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    quality_management_system(QMS),
    quality_management_system_documented(QMS),
    quality_management_system_includes(QMS, regulatory_compliance_strategy),
    quality_management_system_includes(QMS, design_control_and_verification),
    quality_management_system_includes(QMS, development_quality_control_and_assurance),
    quality_management_system_includes(QMS, examination_test_validation_procedures),
    quality_management_system_includes(QMS, technical_specifications_and_standards),
    quality_management_system_includes(QMS, data_management_systems_and_procedures),
    quality_management_system_includes(QMS, risk_management_system),
    quality_management_system_includes(QMS, post_market_monitoring_system),
    quality_management_system_includes(QMS, serious_incident_reporting_procedures),
    quality_management_system_includes(QMS, communication_handling),
    quality_management_system_includes(QMS, record_keeping_systems_and_procedures),
    quality_management_system_includes(QMS, resource_management),
    quality_management_system_includes(QMS, accountability_framework),
    quality_management_system_proportionate(QMS),
    quality_management_system_respects_rigour(QMS).

quality_management_system_documented(QMS) :-
    quality_management_system(QMS).

quality_management_system_proportionate(QMS) :-
    quality_management_system(QMS).

quality_management_system_respects_rigour(QMS) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, regulatory_compliance_strategy) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, design_control_and_verification) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, development_quality_control_and_assurance) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, examination_test_validation_procedures) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, technical_specifications_and_standards) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, data_management_systems_and_procedures) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, risk_management_system) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, post_market_monitoring_system) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, serious_incident_reporting_procedures) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, communication_handling) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, record_keeping_systems_and_procedures) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, resource_management) :-
    quality_management_system(QMS).

quality_management_system_includes(QMS, accountability_framework) :-
    quality_management_system(QMS).

quality_management_system_may_integrate_sectoral(P) :-
    provider(P),
    high_risk_ai_system(_S),
    subject_to_sectoral_quality_management_obligations(P).

subject_to_sectoral_quality_management_obligations(P) :-
    provider(P).

financial_institution_quality_management_deemed_fulfilled(P) :-
    financial_institution_provider(P),
    complies_with_financial_services_internal_governance(P).

financial_institution_provider(P) :-
    provider(P).

complies_with_financial_services_internal_governance(P) :-
    financial_institution_provider(P).

must_put_in_place_quality_management_system(P, S) :-
    financial_institution_provider(P),
    high_risk_ai_system(S),
    financial_institution_quality_management_deemed_fulfilled(P),
    quality_management_system_includes(QMS, risk_management_system),
    quality_management_system_includes(QMS, post_market_monitoring_system),
    quality_management_system_includes(QMS, serious_incident_reporting_procedures).

provenance(quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_includes/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_proportionate/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_respects_rigour/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_may_integrate_sectoral/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_quality_management_deemed_fulfilled/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_17').
provenance(must_put_in_place_quality_management_system/2, 'celex:32024R1689/oj#art_17').

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
