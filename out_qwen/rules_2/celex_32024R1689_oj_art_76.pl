% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 3c26168c64339852cb8a8c9a256364392599433eada6b950f3db25efdeafc817
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred must_ensure_testing_compliance/2, gloss('market surveillance authority ensures testing in real world conditions is in accordance with the regulation'), source('celex:32024R1689/oj#art_76').
:- pred must_verify_sandbox_testing_compliance/2, gloss('market surveillance authority verifies compliance of sandbox testing with Article 60'), source('celex:32024R1689/oj#art_76').
:- pred permitted_sandbox_testing_derogation/2, gloss('market surveillance authority allows sandbox testing derogation from Article 60(4)(f) and (g)'), source('celex:32024R1689/oj#art_76').
:- pred grounds_for_testing_intervention/2, gloss('market surveillance authority has grounds to consider testing conditions not met'), source('celex:32024R1689/oj#art_76').
:- pred may_suspend_or_terminate_testing/2, gloss('market surveillance authority may suspend or terminate testing in real world conditions'), source('celex:32024R1689/oj#art_76').
:- pred may_require_testing_modification/2, gloss('market surveillance authority may require modification of testing aspects'), source('celex:32024R1689/oj#art_76').
:- pred must_indicate_decision_grounds_and_challenge/2, gloss('decision or objection indicates grounds and challenge procedure'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate_testing_decision_to_other_states/2, gloss('market surveillance authority communicates decision grounds to other Member States where system tested'), source('celex:32024R1689/oj#art_76').

must_ensure_testing_compliance(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S).

must_verify_sandbox_testing_compliance(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(S),
    requirements_of_chapter_3_section_2(S).

permitted_sandbox_testing_derogation(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(S).

grounds_for_testing_intervention(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    serious_incident(S).
grounds_for_testing_intervention(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    \+ requirements_of_chapter_3_section_2(S).

may_suspend_or_terminate_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_testing_intervention(A, S).

may_require_testing_modification(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_testing_intervention(A, S).

must_indicate_decision_grounds_and_challenge(A, D) :-
    market_surveillance_authority(A),
    testing_intervention_decision(D),
    grounds_for_testing_intervention(A, _S).

must_communicate_testing_decision_to_other_states(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_testing_intervention(A, S),
    tested_in_multiple_member_states(S).

% Helper predicates for this provision
:- pred testing_intervention_decision/1, gloss('decision to suspend, terminate or modify testing under Article 76(3)'), source('celex:32024R1689/oj#art_76').
:- pred tested_in_multiple_member_states/1, gloss('AI system tested in more than one Member State according to testing plan'), source('celex:32024R1689/oj#art_76').

provenance(must_ensure_testing_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_sandbox_testing_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_sandbox_testing_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(grounds_for_testing_intervention/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_testing_modification/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_decision_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_testing_decision_to_other_states/2, 'celex:32024R1689/oj#art_76').
provenance(testing_intervention_decision/1, 'celex:32024R1689/oj#art_76').
provenance(tested_in_multiple_member_states/1, 'celex:32024R1689/oj#art_76').

references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
