% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 353b7912220385c11638b0a60ab7af5ef9c0615146971b1cc24850b45b7e2eeb
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred must_report_competition_information/2, gloss('market surveillance authority reports competition-relevant information to Commission and national competition authorities'), source('celex:32024R1689/oj#art_74').
:- pred must_report_prohibited_practices/2, gloss('market surveillance authority reports use of prohibited practices and measures taken to Commission'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_market_surveillance_authority_applies/1, gloss('market surveillance authority is the sectoral authority designated under Union harmonisation legislation'), source('celex:32024R1689/oj#art_74').
:- pred financial_supervision_authority_applies/1, gloss('market surveillance authority is the national financial supervision authority for financial institutions'), source('celex:32024R1689/oj#art_74').
:- pred data_protection_authority_applies/1, gloss('market surveillance authority is the competent data protection supervisory authority'), source('celex:32024R1689/oj#art_74').
:- pred edps_is_market_surveillance_authority/1, gloss('European Data Protection Supervisor acts as market surveillance authority for Union bodies'), source('celex:32024R1689/oj#art_74').
:- pred must_facilitate_coordination/2, gloss('Member State facilitates coordination between market surveillance authorities and other relevant national authorities'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_access_to_data_and_documentation/2, gloss('provider grants market surveillance authority full access to documentation and training validation testing data sets'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_access_to_source_code/2, gloss('provider grants market surveillance authority access to source code upon reasoned request when conditions fulfilled'), source('celex:32024R1689/oj#art_74').
:- pred source_code_access_conditions_fulfilled/1, gloss('conditions for granting access to source code are fulfilled'), source('celex:32024R1689/oj#art_74').

must_report_competition_information(Authority, Information) :-
    market_surveillance_authority(Authority),
    identified_during_market_surveillance(Information),
    potential_interest_for_competition_law(Information).

must_report_prohibited_practices(Authority, Report) :-
    market_surveillance_authority(Authority),
    annual_report_on_prohibited_practices(Report).

sectoral_market_surveillance_authority_applies(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).

financial_supervision_authority_applies(S) :-
    high_risk_ai_system(S),
    financial_institution_context(S).

data_protection_authority_applies(S) :-
    high_risk_ai_system_annex_3_point_1(S),
    law_enforcement_or_border_or_justice_purpose(S).
data_protection_authority_applies(S) :-
    high_risk_ai_system_annex_iii(S),
    annex_iii_point_6_or_7_or_8(S).

edps_is_market_surveillance_authority(Body) :-
    union_body(Body),
    \+ court_of_justice_acting_judicially(Body).

must_facilitate_coordination(MemberState, Authorities) :-
    member_state(MemberState),
    relevant_authorities_for_high_risk_systems(Authorities).

must_grant_access_to_data_and_documentation(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    provides(Provider, S).

must_grant_access_to_source_code(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    provides(Provider, S),
    reasoned_request(Authority, source_code(S)),
    source_code_access_conditions_fulfilled(S).

source_code_access_conditions_fulfilled(S) :-
    high_risk_ai_system(S),
    necessary_for_conformity_assessment(source_code(S)),
    exhausted_other_verification_means(S).

provenance(must_report_competition_information/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_market_surveillance_authority_applies/1, 'celex:32024R1689/oj#art_74').
provenance(financial_supervision_authority_applies/1, 'celex:32024R1689/oj#art_74').
provenance(data_protection_authority_applies/1, 'celex:32024R1689/oj#art_74').
provenance(edps_is_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_data_and_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_source_code/2, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_conditions_fulfilled/1, 'celex:32024R1689/oj#art_74').

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
