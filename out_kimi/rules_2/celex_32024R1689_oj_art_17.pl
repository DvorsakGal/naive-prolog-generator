% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : e52e12a41654477ceafa1b94e9172fc971c2283ae4932f0bfd86e9292eb77773
% cached     : False
% title      : Quality management system
:- pred must_have_quality_management_system/2, gloss('provider must have quality management system complying with Article 17'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_documented/1, gloss('quality management system is documented in systematic and orderly manner'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_aspect/2, gloss('quality management system includes specific aspect'), source('celex:32024R1689/oj#art_17').
:- pred proportionate_to_provider_size/1, gloss('implementation is proportionate to size of provider organisation'), source('celex:32024R1689/oj#art_17').
:- pred respects_required_rigour/1, gloss('provider respects degree of rigour and level of protection required'), source('celex:32024R1689/oj#art_17').
:- pred sectoral_quality_management_system_applies/1, gloss('provider subject to quality management under sectoral Union law'), source('celex:32024R1689/oj#art_17').
:- pred may_include_aspects_in_sectoral_system/1, gloss('provider may include Article 17 aspects in sectoral quality management system'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution/1, gloss('provider is a financial institution'), source('celex:32024R1689/oj#art_17').
:- pred subject_to_financial_services_governance/1, gloss('subject to internal governance requirements under Union financial services law'), source('celex:32024R1689/oj#art_17').
:- pred deemed_fulfilled_by_financial_governance/1, gloss('quality management obligation deemed fulfilled by financial governance compliance'), source('celex:32024R1689/oj#art_17').
:- pred exception_risk_management_system/1, gloss('exception for risk management system aspect'), source('celex:32024R1689/oj#art_17').
:- pred exception_post_market_monitoring/1, gloss('exception for post-market monitoring aspect'), source('celex:32024R1689/oj#art_17').
:- pred exception_serious_incident_reporting/1, gloss('exception for serious incident reporting aspect'), source('celex:32024R1689/oj#art_17').
:- pred harmonised_standard_for_quality_management/1, gloss('harmonised standard referred to in Article 40 for quality management'), source('celex:32024R1689/oj#art_17').

must_have_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

quality_management_system_documented(S) :-
    must_have_quality_management_system(_P, S),
    quality_management_system(S).

quality_management_system_aspect(S, regulatory_compliance_strategy) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, design_control_and_verification) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, development_quality_control_and_assurance) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, examination_test_validation_procedures) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, technical_specifications_and_standards) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, data_management_systems) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, risk_management_system) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, post_market_monitoring_system) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, serious_incident_reporting_procedures) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, communication_handling_procedures) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, record_keeping_systems) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, resource_management) :-
    high_risk_ai_system(S).

quality_management_system_aspect(S, accountability_framework) :-
    high_risk_ai_system(S).

proportionate_to_provider_size(S) :-
    must_have_quality_management_system(_P, S),
    quality_management_system(S).

respects_required_rigour(S) :-
    must_have_quality_management_system(_P, S),
    high_risk_ai_system(S).

may_include_aspects_in_sectoral_system(P) :-
    provider(P),
    high_risk_ai_system(S),
    sectoral_quality_management_system_applies(P),
    must_have_quality_management_system(P, S).

deemed_fulfilled_by_financial_governance(P) :-
    provider(P),
    high_risk_ai_system(S),
    financial_institution(P),
    subject_to_financial_services_governance(P),
    must_have_quality_management_system(P, S),
    \+ exception_risk_management_system(S),
    \+ exception_post_market_monitoring(S),
    \+ exception_serious_incident_reporting(S).

exception_risk_management_system(S) :-
    high_risk_ai_system(S).

exception_post_market_monitoring(S) :-
    high_risk_ai_system(S).

exception_serious_incident_reporting(S) :-
    high_risk_ai_system(S).

must_take_into_account(P, harmonised_standard_for_quality_management(S)) :-
    provider(P),
    deemed_fulfilled_by_financial_governance(P),
    harmonised_standard_for_quality_management(S).

provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(proportionate_to_provider_size/1, 'celex:32024R1689/oj#art_17').
provenance(respects_required_rigour/1, 'celex:32024R1689/oj#art_17').
provenance(may_include_aspects_in_sectoral_system/1, 'celex:32024R1689/oj#art_17').
provenance(deemed_fulfilled_by_financial_governance/1, 'celex:32024R1689/oj#art_17').
provenance(exception_risk_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(exception_post_market_monitoring/1, 'celex:32024R1689/oj#art_17').
provenance(exception_serious_incident_reporting/1, 'celex:32024R1689/oj#art_17').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_17').

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
