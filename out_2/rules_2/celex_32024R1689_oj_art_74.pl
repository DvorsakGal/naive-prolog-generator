% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : de06220d9968cc4be3f2f41e34fcc74142bf2062efd2736f243ec80ff475b4a3
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred condition_access_to_source_code_necessary/1, gloss('access to source code necessary'), source('celex:32024R1689/oj#art_13/a').
:- pred condition_testing_exhausted/1, gloss('testing exhausted'), source('celex:32024R1689/oj#art_13/b').

must_report(Authority, annual_report(commission, market_surveillance_information)) :-
    market_surveillance_authority(Authority).

must_report(Authority, annual_report(commission, prohibited_practices_report)) :-
    market_surveillance_authority(Authority).

required_market_surveillance_authority(Authority) :-
    high_risk_ai_system(_S),
    union_harmonisation_legislation_applies(_S),
    market_surveillance_authority(Authority).

permitted_designate_another_market_surveillance_authority(MemberState) :-
    member_state(MemberState).

prohibited_application_of_procedure(art_79) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).

prohibited_application_of_procedure(art_80) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).

prohibited_application_of_procedure(art_81) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).

prohibited_application_of_procedure(art_82) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).

prohibited_application_of_procedure(art_83) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).

permitted_exercise_power_remotely(Authority) :-
    market_surveillance_authority(Authority).

must_report(Authority, immediate_report(european_central_bank, market_surveillance_information)) :-
    market_surveillance_authority(Authority).

must_designate_market_surveillance_authority(MemberState, data_protection_supervisory_authority) :-
    member_state(MemberState).

must_act_as_market_surveillance_authority(european_data_protection_supervisor, union_institutions).

must_facilitate_coordination(MemberState) :-
    member_state(MemberState).

must_be_able_to_propose_joint_activities(Authority) :-
    market_surveillance_authority(Authority).

must_be_able_to_propose_joint_activities(commission).

must_provide_coordination_support(ai_office, joint_investigations).

must_grant_access(Provider, access(documentation_and_data)) :-
    provider(Provider),
    high_risk_ai_system(_S),
    ai_system(_S).

must_grant_access(Provider, access(source_code)) :-
    provider(Provider),
    high_risk_ai_system(_S),
    ai_system(_S),
    condition_access_to_source_code_necessary(_S),
    condition_testing_exhausted(_S).

must_treat_confidentially(Authority, information_or_documentation) :-
    market_surveillance_authority(Authority).

provenance(must_report/2, 'celex:32024R1689/oj#art_74').
provenance(required_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(permitted_designate_another_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(prohibited_application_of_procedure/1, 'celex:32024R1689/oj#art_74').
provenance(permitted_exercise_power_remotely/1, 'celex:32024R1689/oj#art_74').
provenance(must_designate_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(must_act_as_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/1, 'celex:32024R1689/oj#art_74').
provenance(must_be_able_to_propose_joint_activities/1, 'celex:32024R1689/oj#art_74').
provenance(must_provide_coordination_support/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access/2, 'celex:32024R1689/oj#art_74').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_74').

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
references('celex:32024R1689/oj#art_74', 'celex:32013L0036/oj').
references('celex:32024R1689/oj#art_74', 'celex:32013R1024/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_6').
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
