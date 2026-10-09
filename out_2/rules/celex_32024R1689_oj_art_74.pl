% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1424053aca3ee20af6c31ffb2a416ed40443e091d4b3d2a5125809c2233f8400
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred must_report/2, gloss('obligation of market surveillance authority to report annually'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_access/2, gloss('obligation of provider to grant access to market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred permitted_exercise_remotely/1, gloss('permission for market surveillance authority to exercise powers remotely'), source('celex:32024R1689/oj#art_74').
:- pred must_facilitate_coordination/2, gloss('obligation of member state to facilitate coordination'), source('celex:32024R1689/oj#art_74').
:- pred permitted_propose_joint_activity/1, gloss('permission for market surveillance authority or Commission to propose joint activities'), source('celex:32024R1689/oj#art_74').
:- pred must_designate_market_surveillance_authority/2, gloss('obligation of member state to designate a market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred member_state/1, gloss('EU member state'), source('celex:32024R1689/oj#art_74').
:- pred other_national_authority/1, gloss('other relevant national authority'), source('celex:32024R1689/oj#art_74').

must_report(Authority, annual_report(commission, competition_authorities, info(market_surveillance))) :-
    market_surveillance_authority(Authority).

must_report(Authority, annual_report(commission, prohibited_practices_and_measures)) :-
    market_surveillance_authority(Authority).

must_grant_access(Provider, full_access(documentation_and_data_sets, market_surveillance_authority)) :-
    provider(Provider).

must_grant_access(Provider, source_code(conditions([necessary_to_assess_conformity, testing_exhausted]))) :-
    provider(Provider).

permitted_exercise_remotely(Authority) :-
    market_surveillance_authority(Authority).

must_facilitate_coordination(MemberState, coordination(market_surveillance_authorities, other_national_authority)) :-
    member_state(MemberState),
    other_national_authority(_).

permitted_propose_joint_activity(Authority) :-
    market_surveillance_authority(Authority).

permitted_propose_joint_activity(commission).

must_designate_market_surveillance_authority(MemberState, Authority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority).

provenance(must_report/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_exercise_remotely/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_propose_joint_activity/1, 'celex:32024R1689/oj#art_74').
provenance(must_designate_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(member_state/1, 'celex:32024R1689/oj#art_74').
provenance(other_national_authority/1, 'celex:32024R1689/oj#art_74').

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
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_9').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_78').
