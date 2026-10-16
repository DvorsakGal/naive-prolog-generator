% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 59f55d8a6c57e11ca52042db03f51b1adf87dcafe5bccb268baf307adf6d4c03
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred market_surveillance_authority_for_ai/2, gloss('authority designated as market surveillance authority for AI systems under this Regulation'), source('celex:32024R1689/oj#art_74').
:- pred must_report_annually/2, gloss('obligation to report annually to the Commission'), source('celex:32024R1689/oj#art_74').
:- pred must_report_competition_info/2, gloss('obligation to report competition-relevant information'), source('celex:32024R1689/oj#art_74').
:- pred must_report_prohibited_practices/2, gloss('obligation to report use of prohibited practices'), source('celex:32024R1689/oj#art_74').
:- pred must_report_measures_taken/2, gloss('obligation to report measures taken'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_full_access/3, gloss('obligation to grant full access to documentation and data sets'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_source_code_access/3, gloss('obligation to grant access to source code'), source('celex:32024R1689/oj#art_74').
:- pred source_code_access_conditions_fulfilled/1, gloss('conditions for source code access are met'), source('celex:32024R1689/oj#art_74').
:- pred must_treat_confidentially/2, gloss('obligation to treat information confidentially'), source('celex:32024R1689/oj#art_74').
:- pred must_facilitate_coordination/2, gloss('obligation to facilitate coordination between authorities'), source('celex:32024R1689/oj#art_74').
:- pred may_exercise_powers_remotely/2, gloss('authority may exercise powers remotely'), source('celex:32024R1689/oj#art_74').
:- pred may_propose_joint_activities/2, gloss('authority may propose joint activities'), source('celex:32024R1689/oj#art_74').
:- pred may_designate_alternative_authority/2, gloss('Member State may designate alternative market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred must_designate_authority_for_law_enforcement_systems/2, gloss('Member State must designate market surveillance authority for certain high-risk AI systems'), source('celex:32024R1689/oj#art_74').
:- pred edps_acts_as_market_surveillance_authority/1, gloss('European Data Protection Supervisor acts as market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred must_report_to_ecb/2, gloss('obligation to report to the European Central Bank'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_procedures_apply/1, gloss('sectoral procedures apply instead of Regulation procedures'), source('celex:32024R1689/oj#art_74').
:- pred financial_institution_ai_system/1, gloss('high-risk AI system placed on market, put into service or used by financial institution'), source('celex:32024R1689/oj#art_74').
:- pred law_enforcement_related_high_risk_ai_system/1, gloss('high-risk AI system used for law enforcement, border management, justice and democracy'), source('celex:32024R1689/oj#art_74').

% Paragraph 2
must_report_annually(Authority, Commission) :-
    market_surveillance_authority(Authority).

must_report_competition_info(Authority, Commission) :-
    market_surveillance_authority(Authority).

must_report_prohibited_practices(Authority, Commission) :-
    market_surveillance_authority(Authority).

must_report_measures_taken(Authority, Commission) :-
    market_surveillance_authority(Authority).

% Paragraph 3
market_surveillance_authority_for_ai(Authority, System) :-
    high_risk_ai_system(System),
    product_covered_by_annex_1_section_1(System),
    market_surveillance_authority(Authority),
    designated_under_harmonisation_legislation(Authority, System).

may_designate_alternative_authority(MemberState, Authority) :-
    market_surveillance_authority_for_ai(_, _),
    coordination_ensured(Authority).

% Paragraph 4
sectoral_procedures_apply(System) :-
    high_risk_ai_system(System),
    product_covered_by_annex_1_section_1(System),
    equivalent_procedures_exist(System).

% Paragraph 5
may_exercise_powers_remotely(Authority, _) :-
    market_surveillance_authority(Authority).

% Paragraph 6
market_surveillance_authority_for_ai(Authority, System) :-
    financial_institution_ai_system(System),
    national_financial_supervisory_authority(Authority),
    direct_connection_to_financial_services(System).

financial_institution_ai_system(System) :-
    high_risk_ai_system(System),
    placed_on_market_put_into_service_or_used_by_financial_institution(System).

% Paragraph 7
may_designate_alternative_authority(MemberState, Authority) :-
    financial_institution_ai_system(_),
    coordination_ensured(Authority).

must_report_to_ecb(Authority, ecb) :-
    market_surveillance_authority(Authority),
    supervising_credit_institution(Authority),
    participating_in_ssm(Authority).

% Paragraph 8
must_designate_authority_for_law_enforcement_systems(MemberState, Authority) :-
    law_enforcement_related_high_risk_ai_system(_),
    (   competent_data_protection_authority(Authority)
    ;   designated_under_led_conditions(Authority)
    ).

law_enforcement_related_high_risk_ai_system(System) :-
    high_risk_ai_system(System),
    used_for_law_enforcement_border_justice_democracy(System).

law_enforcement_related_high_risk_ai_system(System) :-
    high_risk_ai_system(System),
    listed_in_annex_3_point_6_7_or_8(System).

% Paragraph 9
edps_acts_as_market_surveillance_authority(edps) :-
    union_institution_body_office_or_agency(_).

% Paragraph 10
must_facilitate_coordination(MemberState, _) :-
    market_surveillance_authority_for_ai(_, _).

% Paragraph 11
may_propose_joint_activities(Authority, Commission) :-
    market_surveillance_authority(Authority).

may_propose_joint_activities(Commission, Commission).

% Paragraph 12
must_grant_full_access(Provider, Authority, System) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    high_risk_ai_system(System).

% Paragraph 13
must_grant_source_code_access(Provider, Authority, System) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    high_risk_ai_system(System),
    source_code_access_conditions_fulfilled(System).

source_code_access_conditions_fulfilled(System) :-
    high_risk_ai_system(System),
    source_code_access_necessary_for_conformity_assessment(System),
    testing_and_verification_exhausted_or_insufficient(System).

% Paragraph 14
must_treat_confidentially(Authority, Information) :-
    market_surveillance_authority(Authority),
    obtained_by_market_surveillance(Information, Authority).

% Provenance
provenance(market_surveillance_authority_for_ai/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_competition_info/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_measures_taken/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access/3, 'celex:32024R1689/oj#art_74').
provenance(must_grant_source_code_access/3, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_conditions_fulfilled/1, 'celex:32024R1689/oj#art_74').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(may_designate_alternative_authority/2, 'celex:32024R1689/oj#art_74').
provenance(must_designate_authority_for_law_enforcement_systems/2, 'celex:32024R1689/oj#art_74').
provenance(edps_acts_as_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(must_report_to_ecb/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(financial_institution_ai_system/1, 'celex:32024R1689/oj#art_74').
provenance(law_enforcement_related_high_risk_ai_system/1, 'celex:32024R1689/oj#art_74').

% References
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_2/par_1').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_34/par_4').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_3/unp_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_14').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_6').
references('celex:32024R1689/oj#art_74', 'celex:32013L0036/oj').
references('celex:32024R1689/oj#art_74', 'celex:32013R1024/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_8').
references('celex:32024R1689/oj#art_74', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_41').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_42').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_43').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_44').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_9').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_78').
