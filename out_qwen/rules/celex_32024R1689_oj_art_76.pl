% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 04644d6f212ffe7661f4101d7067f39b3db6928137a63a56ca0e0c5c0fe1b940
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred supervised_in_ai_regulatory_sandbox/1, gloss('testing conducted within an AI regulatory sandbox'), source('celex:32024R1689/oj#art_76').
:- pred grounds_for_non_compliance_exist/2, gloss('authority has grounds to consider conditions are not met'), source('celex:32024R1689/oj#art_76').
:- pred decision_taken_on_testing/2, gloss('authority has taken a decision regarding testing'), source('celex:32024R1689/oj#art_76').
:- pred objection_issued/2, gloss('authority has issued an objection regarding testing'), source('celex:32024R1689/oj#art_76').
:- pred must_verify_compliance_with_art_60/2, gloss('verify compliance as part of sandbox supervision'), source('celex:32024R1689/oj#art_76').
:- pred may_allow_derogation_from_art_60_conditions/2, gloss('allow testing in derogation from specific conditions'), source('celex:32024R1689/oj#art_76').
:- pred may_suspend_or_terminate_testing/2, gloss('suspend or terminate testing in real world conditions'), source('celex:32024R1689/oj#art_76').
:- pred may_require_modification_of_testing/2, gloss('require modification of testing aspects'), source('celex:32024R1689/oj#art_76').
:- pred must_indicate_grounds_and_challenge_procedure/2, gloss('indicate grounds and challenge procedure for decision or objection'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate_grounds_to_other_authorities/2, gloss('communicate grounds to authorities in other member states'), source('celex:32024R1689/oj#art_76').

supervised_in_ai_regulatory_sandbox(S) :-
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(_Sandbox).

grounds_for_non_compliance_exist(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    informed_of_serious_incident(A, S).
grounds_for_non_compliance_exist(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    other_grounds_for_non_compliance(A, S).

decision_taken_on_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    may_suspend_or_terminate_testing(A, S).
decision_taken_on_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    may_require_modification_of_testing(A, S).

must_verify_compliance_with_art_60(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).

may_allow_derogation_from_art_60_conditions(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).

may_suspend_or_terminate_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_non_compliance_exist(A, S).

may_require_modification_of_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_non_compliance_exist(A, S).

must_indicate_grounds_and_challenge_procedure(A, DecisionOrObjection) :-
    market_surveillance_authority(A),
    ( decision_taken_on_testing(A, _S) ; objection_issued(A, _S) ),
    decision_or_objection(DecisionOrObjection).

must_communicate_grounds_to_other_authorities(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    decision_taken_on_testing(A, S),
    tested_in_other_member_state(S, _OtherState).

% Helper predicates for internal logic
informed_of_serious_incident(_A, _S).
other_grounds_for_non_compliance(_A, _S).
decision_or_objection(_D).
tested_in_other_member_state(_S, _State).

provenance(supervised_in_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_76').
provenance(grounds_for_non_compliance_exist/2, 'celex:32024R1689/oj#art_76').
provenance(decision_taken_on_testing/2, 'celex:32024R1689/oj#art_76').
provenance(objection_issued/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_compliance_with_art_60/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_derogation_from_art_60_conditions/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification_of_testing/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge_procedure/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_grounds_to_other_authorities/2, 'celex:32024R1689/oj#art_76').

references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
