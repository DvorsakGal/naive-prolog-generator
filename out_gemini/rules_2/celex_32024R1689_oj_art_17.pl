% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 7d479abafcc0b74bf2a93baba239c9f4d47e8a3640211cf86711058dce4116e4
% cached     : False
% title      : Quality management system
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_17').
:- pred provider_of/2, gloss('entity is provider of a specific AI system'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution/1, gloss('entity is a financial institution under Union law'), source('celex:32024R1689/oj#art_17').
:- pred subject_to_internal_governance_rules_financial_law/1, gloss('entity is subject to internal governance rules under Union financial services law'), source('celex:32024R1689/oj#art_17').
:- pred complies_with_financial_internal_governance/1, gloss('entity complies with rules on internal governance under Union financial services law'), source('celex:32024R1689/oj#art_17').
:- pred subject_to_sectoral_qms/1, gloss('entity is subject to quality management system obligations under sectoral Union law'), source('celex:32024R1689/oj#art_17').
:- pred permitted_integrate_qms/2, gloss('provider is permitted to integrate Article 17(1) aspects into sectoral QMS'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system/1, gloss('system fulfilling quality management system requirements'), source('celex:32024R1689/oj#art_17').
:- pred includes_aspect/2, gloss('quality management system includes specified aspect'), source('celex:32024R1689/oj#art_17').
:- pred documented_systematic_and_orderly/1, gloss('system is documented in systematic and orderly written form'), source('celex:32024R1689/oj#art_17').
:- pred deemed_fulfilled_quality_management_system/2, gloss('provider deemed to fulfill QMS obligations except points (g), (h), and (i)'), source('celex:32024R1689/oj#art_17').

% Paragraph 1: Providers of high-risk AI systems shall put a quality management system in place.
must_comply(Provider, put_in_place(quality_management_system(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System).

% Paragraph 1 aspects requirement for a valid quality management system
quality_management_system(QMS) :-
    documented_systematic_and_orderly(QMS),
    includes_aspect(QMS, regulatory_compliance_strategy),
    includes_aspect(QMS, design_techniques_and_procedures),
    includes_aspect(QMS, development_and_quality_assurance),
    includes_aspect(QMS, test_and_validation_procedures),
    includes_aspect(QMS, technical_specifications_compliance),
    includes_aspect(QMS, data_management_systems),
    includes_aspect(QMS, risk_management_system),
    includes_aspect(QMS, post_market_monitoring_system),
    includes_aspect(QMS, serious_incident_reporting_procedures),
    includes_aspect(QMS, authority_communication_handling),
    includes_aspect(QMS, record_keeping_systems),
    includes_aspect(QMS, resource_management),
    includes_aspect(QMS, accountability_framework).

% Paragraph 3: Integration into sectoral Union law QMS
permitted_integrate_qms(Provider, sectoral_quality_management_system) :-
    provider(Provider),
    subject_to_sectoral_qms(Provider).

% Paragraph 4: Financial institutions compliance presumption
deemed_fulfilled_quality_management_system(Provider, partial_qms_compliance(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System),
    financial_institution(Provider),
    subject_to_internal_governance_rules_financial_law(Provider),
    complies_with_financial_internal_governance(Provider).

% Financial institutions still must comply with (g), (h), and (i)
must_comply(Provider, put_in_place(aspects_g_h_i(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System),
    financial_institution(Provider),
    subject_to_internal_governance_rules_financial_law(Provider).

% Provenance facts
provenance(must_comply/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(permitted_integrate_qms/2, 'celex:32024R1689/oj#art_17').
provenance(deemed_fulfilled_quality_management_system/2, 'celex:32024R1689/oj#art_17').

% References
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
