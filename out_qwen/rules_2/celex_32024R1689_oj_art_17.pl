% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 61276a60acfe27aac35157249e18dc220f280c2477ef561336058748b4d2a2aa
% cached     : False
% title      : Quality management system
:- pred must_put_in_place_quality_management_system/2, gloss('provider must establish a quality management system ensuring compliance'), source('celex:32024R1689/oj#art_17').
:- pred quality_management_system_documented/1, gloss('quality management system is documented in written policies, procedures and instructions'), source('celex:32024R1689/oj#art_17').
:- pred includes_regulatory_compliance_strategy/1, gloss('QMS includes strategy for regulatory compliance and modification management'), source('celex:32024R1689/oj#art_17').
:- pred includes_design_control_procedures/1, gloss('QMS includes techniques for design, design control and verification'), source('celex:32024R1689/oj#art_17').
:- pred includes_development_quality_assurance/1, gloss('QMS includes techniques for development, quality control and assurance'), source('celex:32024R1689/oj#art_17').
:- pred includes_examination_and_validation_procedures/1, gloss('QMS includes examination, test and validation procedures before, during and after development'), source('celex:32024R1689/oj#art_17').
:- pred includes_technical_specifications_application/1, gloss('QMS includes technical specifications and means to ensure compliance where harmonised standards are not fully applied'), source('celex:32024R1689/oj#art_17').
:- pred includes_data_management_systems/1, gloss('QMS includes systems for data acquisition, collection, analysis, labelling, storage and other operations'), source('celex:32024R1689/oj#art_17').
:- pred includes_risk_management_system/1, gloss('QMS includes the risk management system referred to in Article 9'), source('celex:32024R1689/oj#art_17').
:- pred includes_post_market_monitoring/1, gloss('QMS includes setup and maintenance of post-market monitoring system'), source('celex:32024R1689/oj#art_17').
:- pred includes_serious_incident_reporting/1, gloss('QMS includes procedures for reporting serious incidents'), source('celex:32024R1689/oj#art_17').
:- pred includes_communication_handling/1, gloss('QMS includes handling of communication with authorities, notified bodies, operators and customers'), source('celex:32024R1689/oj#art_17').
:- pred includes_record_keeping_systems/1, gloss('QMS includes systems for record-keeping of relevant documentation'), source('celex:32024R1689/oj#art_17').
:- pred includes_resource_management/1, gloss('QMS includes resource management and security-of-supply measures'), source('celex:32024R1689/oj#art_17').
:- pred includes_accountability_framework/1, gloss('QMS includes accountability framework for management and staff responsibilities'), source('celex:32024R1689/oj#art_17').
:- pred proportionate_to_organisation_size/2, gloss('implementation of QMS aspects is proportionate to provider organisation size'), source('celex:32024R1689/oj#art_17').
:- pred subject_to_sectoral_quality_management_obligations/1, gloss('provider subject to QMS obligations under relevant sectoral Union law'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution_internal_governance_compliance/1, gloss('financial institution complies with internal governance rules under Union financial services law'), source('celex:32024R1689/oj#art_17').

must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    quality_management_system_documented(S),
    includes_regulatory_compliance_strategy(S),
    includes_design_control_procedures(S),
    includes_development_quality_assurance(S),
    includes_examination_and_validation_procedures(S),
    includes_technical_specifications_application(S),
    includes_data_management_systems(S),
    includes_risk_management_system(S),
    includes_post_market_monitoring(S),
    includes_serious_incident_reporting(S),
    includes_communication_handling(S),
    includes_record_keeping_systems(S),
    includes_resource_management(S),
    includes_accountability_framework(S).

must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    financial_institution(P),
    financial_institution_internal_governance_compliance(P).

proportionate_to_organisation_size(P, S) :-
    provider(P),
    high_risk_ai_system(S).

subject_to_sectoral_quality_management_obligations(P) :-
    provider(P).

provenance(must_put_in_place_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(includes_regulatory_compliance_strategy/1, 'celex:32024R1689/oj#art_17').
provenance(includes_design_control_procedures/1, 'celex:32024R1689/oj#art_17').
provenance(includes_development_quality_assurance/1, 'celex:32024R1689/oj#art_17').
provenance(includes_examination_and_validation_procedures/1, 'celex:32024R1689/oj#art_17').
provenance(includes_technical_specifications_application/1, 'celex:32024R1689/oj#art_17').
provenance(includes_data_management_systems/1, 'celex:32024R1689/oj#art_17').
provenance(includes_risk_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(includes_post_market_monitoring/1, 'celex:32024R1689/oj#art_17').
provenance(includes_serious_incident_reporting/1, 'celex:32024R1689/oj#art_17').
provenance(includes_communication_handling/1, 'celex:32024R1689/oj#art_17').
provenance(includes_record_keeping_systems/1, 'celex:32024R1689/oj#art_17').
provenance(includes_resource_management/1, 'celex:32024R1689/oj#art_17').
provenance(includes_accountability_framework/1, 'celex:32024R1689/oj#art_17').
provenance(proportionate_to_organisation_size/2, 'celex:32024R1689/oj#art_17').
provenance(subject_to_sectoral_quality_management_obligations/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_internal_governance_compliance/1, 'celex:32024R1689/oj#art_17').

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
