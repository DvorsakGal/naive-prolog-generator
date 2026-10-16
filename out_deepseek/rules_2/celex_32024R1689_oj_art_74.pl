% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 86ebed0652248d891074daef52b7359cfd3543f22aae57649c4894734b0db066
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred must_report_annually/2, gloss('market surveillance authority must report annually to Commission and national competition authorities'), source('celex:32024R1689/oj#art_74').
:- pred must_report_prohibited_practices/1, gloss('market surveillance authority must report annually on prohibited practices and measures taken'), source('celex:32024R1689/oj#art_74').
:- pred market_surveillance_authority_for_product_related_system/2, gloss('authority responsible for market surveillance of high-risk AI systems related to products under Annex I Section A'), source('celex:32024R1689/oj#art_74').
:- pred may_designate_alternative_authority/2, gloss('Member State may designate alternative market surveillance authority with coordination'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_procedures_apply/1, gloss('sectoral procedures apply instead of Articles 79-83 for Annex I Section A systems'), source('celex:32024R1689/oj#art_74').
:- pred may_exercise_powers_remotely/1, gloss('market surveillance authority may exercise Article 14(4)(d) and (j) powers remotely'), source('celex:32024R1689/oj#art_74').
:- pred market_surveillance_authority_for_financial_system/2, gloss('authority responsible for market surveillance of high-risk AI systems used by financial institutions'), source('celex:32024R1689/oj#art_74').
:- pred may_designate_alternative_financial_authority/2, gloss('Member State may designate alternative authority for financial AI systems with coordination'), source('celex:32024R1689/oj#art_74').
:- pred must_report_to_ecb/2, gloss('national authority supervising credit institutions must report to ECB without delay'), source('celex:32024R1689/oj#art_74').
:- pred market_surveillance_authority_for_annex_3_systems/2, gloss('authority designated for Annex III points 1,6,7,8 systems for law enforcement, border, justice'), source('celex:32024R1689/oj#art_74').
:- pred edps_acts_as_market_surveillance_authority/1, gloss('EDPS acts as market surveillance authority for Union institutions'), source('celex:32024R1689/oj#art_74').
:- pred must_facilitate_coordination/1, gloss('Member States must facilitate coordination between market surveillance authorities and other relevant bodies'), source('celex:32024R1689/oj#art_74').
:- pred may_propose_joint_activities/2, gloss('market surveillance authority or Commission may propose joint activities for serious risk systems'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_full_access_to_documentation/2, gloss('market surveillance authority must be granted full access to documentation and data sets'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_source_code_access/2, gloss('market surveillance authority must be granted source code access on reasoned request'), source('celex:32024R1689/oj#art_74').
:- pred source_code_access_conditions_met/1, gloss('conditions for source code access are fulfilled'), source('celex:32024R1689/oj#art_74').
:- pred must_treat_information_confidentially/1, gloss('information obtained by market surveillance authorities must be treated confidentially'), source('celex:32024R1689/oj#art_74').

% Paragraph 2
must_report_annually(Authority, Commission) :-
    market_surveillance_authority(Authority),
    ai_office(Commission).

must_report_prohibited_practices(Authority) :-
    market_surveillance_authority(Authority).

% Paragraph 3
market_surveillance_authority_for_product_related_system(Authority, System) :-
    high_risk_ai_system(System),
    market_surveillance_authority(Authority).

may_designate_alternative_authority(MemberState, Authority) :-
    market_surveillance_authority(Authority).

% Paragraph 4
sectoral_procedures_apply(System) :-
    high_risk_ai_system(System).

% Paragraph 5
may_exercise_powers_remotely(Authority) :-
    market_surveillance_authority(Authority).

% Paragraph 6
market_surveillance_authority_for_financial_system(Authority, System) :-
    high_risk_ai_system(System),
    market_surveillance_authority(Authority).

may_designate_alternative_financial_authority(MemberState, Authority) :-
    market_surveillance_authority(Authority).

% Paragraph 7
must_report_to_ecb(Authority, ecb) :-
    market_surveillance_authority(Authority).

% Paragraph 8
market_surveillance_authority_for_annex_3_systems(Authority, System) :-
    high_risk_ai_system(System),
    market_surveillance_authority(Authority).

% Paragraph 9
edps_acts_as_market_surveillance_authority(edps).

% Paragraph 10
must_facilitate_coordination(MemberState) :-
    market_surveillance_authority(_).

% Paragraph 11
may_propose_joint_activities(Actor, Commission) :-
    ( market_surveillance_authority(Actor) ; ai_office(Commission) ).

% Paragraph 12
must_grant_full_access_to_documentation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System).

% Paragraph 13
must_grant_source_code_access(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    source_code_access_conditions_met(System).

source_code_access_conditions_met(System) :-
    high_risk_ai_system(System).

% Paragraph 14
must_treat_information_confidentially(Authority) :-
    market_surveillance_authority(Authority).

% Provenance
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/1, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_product_related_system/2, 'celex:32024R1689/oj#art_74').
provenance(may_designate_alternative_authority/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/1, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_financial_system/2, 'celex:32024R1689/oj#art_74').
provenance(may_designate_alternative_financial_authority/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_to_ecb/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_annex_3_systems/2, 'celex:32024R1689/oj#art_74').
provenance(edps_acts_as_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/1, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access_to_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_source_code_access/2, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_conditions_met/1, 'celex:32024R1689/oj#art_74').
provenance(must_treat_information_confidentially/1, 'celex:32024R1689/oj#art_74').

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
