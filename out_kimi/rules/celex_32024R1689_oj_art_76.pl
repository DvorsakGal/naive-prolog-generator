% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d1f4654fe282de0514a17e73754d02d3dfd383f48a5448761fa421c9eb28250f
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred must_ensure_testing_compliance/2, gloss('market surveillance authority shall ensure testing in real world conditions complies with conditions'), source('celex:32024R1689/oj#art_76/par_1').
:- pred must_verify_sandbox_compliance/2, gloss('market surveillance authority shall verify compliance with article 60 for sandbox testing'), source('celex:32024R1689/oj#art_76/par_2').
:- pred may_allow_derogation/3, gloss('market surveillance authority may allow derogation from article 60 conditions'), source('celex:32024R1689/oj#art_76/par_2').
:- pred may_suspend_or_terminate_testing/2, gloss('market surveillance authority may suspend or terminate testing in real world conditions'), source('celex:32024R1689/oj#art_76/par_3/pnt_a').
:- pred may_require_modification/2, gloss('market surveillance authority may require modification of testing in real world conditions'), source('celex:32024R1689/oj#art_76/par_3/pnt_b').
:- pred must_indicate_grounds_and_challenge/2, gloss('decision or objection must indicate grounds and challenge procedure'), source('celex:32024R1689/oj#art_76/par_4').
:- pred must_communicate_grounds/2, gloss('market surveillance authority shall communicate grounds to other Member States'), source('celex:32024R1689/oj#art_76/par_5').

% Article 76(1): General supervisory competence
must_ensure_testing_compliance(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T).

provenance(must_ensure_testing_compliance/2, 'celex:32024R1689/oj#art_76').

% Article 76(2): Sandbox supervision - verification duty
must_verify_sandbox_compliance(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(T, Sandbox).

provenance(must_verify_sandbox_compliance/2, 'celex:32024R1689/oj#art_76').

% Article 76(2): Sandbox supervision - derogation power
may_allow_derogation(Authority, T, Provider) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(T, Sandbox),
    (provider(Provider); prospective_provider(Provider)).

provenance(may_allow_derogation/3, 'celex:32024R1689/oj#art_76').

% Article 76(3)(a): Power to suspend or terminate
may_suspend_or_terminate_testing(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    (informed_of_serious_incident(Authority, T); conditions_not_met(Authority, T)).

provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').

% Article 76(3)(b): Power to require modification
may_require_modification(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    (informed_of_serious_incident(Authority, T); conditions_not_met(Authority, T)).

provenance(may_require_modification/2, 'celex:32024R1689/oj#art_76').

% Article 76(4): Decision must indicate grounds and challenge procedure
must_indicate_grounds_and_challenge(Authority, decision_or_objection(Authority, T)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    (decision_taken(Authority, T); objection_issued(Authority, T)).

provenance(must_indicate_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').

% Article 76(5): Communication to other Member States
must_communicate_grounds(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    decision_taken(Authority, T),
    tested_in_other_member_states(T).

provenance(must_communicate_grounds/2, 'celex:32024R1689/oj#art_76').

% Supporting predicates (not in signature, needed for this provision)
:- pred supervised_within/2, gloss('testing is supervised within a sandbox'), source('celex:32024R1689/oj#art_76').
:- pred prospective_provider/1, gloss('entity intending to develop or place an AI system'), source('celex:32024R1689/oj#art_76').
:- pred informed_of_serious_incident/2, gloss('authority has been informed of a serious incident'), source('celex:32024R1689/oj#art_76').
:- pred conditions_not_met/2, gloss('authority has grounds that conditions are not met'), source('celex:32024R1689/oj#art_76').
:- pred decision_taken/2, gloss('authority has taken a decision under paragraph 3'), source('celex:32024R1689/oj#art_76').
:- pred objection_issued/2, gloss('authority has issued an objection under article 60(4)(b)'), source('celex:32024R1689/oj#art_76').
:- pred tested_in_other_member_states/1, gloss('AI system has been tested in other Member States'), source('celex:32024R1689/oj#art_76').

% References
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
