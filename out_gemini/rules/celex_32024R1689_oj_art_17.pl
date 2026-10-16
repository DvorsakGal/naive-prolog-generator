% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : fa907b410228c5b75b6fa2ef764a428717a32f868ee7c4cab4f38d7c8ee3ca54
% cached     : False
% title      : Quality management system
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system/1, gloss('quality management system put in place by a provider'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution/1, gloss('entity that is a financial institution'), source('celex:32024R1689/oj#art_17').
:- pred complies_with_financial_services_governance/1, gloss('entity complies with rules on internal governance under Union financial services law'), source('celex:32024R1689/oj#art_17').
:- pred system_of_provider/2, gloss('relation between an AI system and its provider'), source('celex:32024R1689/oj#art_17').
:- pred includes_aspect/2, gloss('system includes a specific mandated aspect'), source('celex:32024R1689/oj#art_17').
:- pred documented_written_policies_procedures/1, gloss('system is documented in systematic and orderly written policies, procedures and instructions'), source('celex:32024R1689/oj#art_17').
:- pred must_put_in_place(Actor, Object), gloss('duty of an actor to put in place a system or measure'), source('celex:32024R1689/oj#art_17').
:- pred permitted_integration(Actor, Object), gloss('entity is permitted to integrate elements into a sectoral system'), source('celex:32024R1689/oj#art_17').
:- pred deemed_fulfilled_quality_management_system/1, gloss('quality management system requirement is deemed fulfilled'), source('celex:32024R1689/oj#art_17').

% Paragraph 1: Providers of high-risk AI systems shall put a quality management system in place
must_put_in_place(Provider, quality_management_system(System)) :-
    provider(Provider),
    system_of_provider(System, Provider),
    high_risk_ai_system(System).

% Mandatory aspects for a quality management system under paragraph 1
required_quality_management_system(QMS) :-
    quality_management_system(QMS),
    documented_written_policies_procedures(QMS),
    includes_aspect(QMS, regulatory_compliance_strategy),
    includes_aspect(QMS, design_control_and_verification),
    includes_aspect(QMS, development_quality_control),
    includes_aspect(QMS, examination_test_validation_procedures),
    includes_aspect(QMS, technical_specifications_and_standards),
    includes_aspect(QMS, data_management_systems_procedures),
    includes_aspect(QMS, risk_management_system),
    includes_aspect(QMS, post_market_monitoring_system),
    includes_aspect(QMS, serious_incident_reporting_procedures),
    includes_aspect(QMS, communication_handling),
    includes_aspect(QMS, record_keeping_systems),
    includes_aspect(QMS, resource_management),
    includes_aspect(QMS, accountability_framework).

% Paragraph 3: Permitted to include aspects in sectoral quality management systems
permitted_integration(Provider, sectoral_quality_management_system) :-
    provider(Provider),
    system_of_provider(System, Provider),
    high_risk_ai_system(System).

% Paragraph 4: Financial institutions complying with internal governance rules
deemed_fulfilled_quality_management_system(Provider) :-
    provider(Provider),
    financial_institution(Provider),
    complies_with_financial_services_governance(Provider),
    must_put_in_place(Provider, risk_management_system),
    must_put_in_place(Provider, post_market_monitoring_system),
    must_put_in_place(Provider, serious_incident_reporting_procedures).

provenance(must_put_in_place/2, 'celex:32024R1689/oj#art_17').
provenance(required_quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(permitted_integration/2, 'celex:32024R1689/oj#art_17').
provenance(deemed_fulfilled_quality_management_system/1, 'celex:32024R1689/oj#art_17').

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
