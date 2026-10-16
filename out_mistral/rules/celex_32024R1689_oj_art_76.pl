% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5e957ccc1394dbe76e7af2d0308759ab424c1ff6ee671ee1fec21bb8b0157df9
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred must_ensure_testing_compliance/2, gloss('market surveillance authority ensures testing in real world conditions complies with the regulation'), source('celex:32024R1689/oj#art_76').
:- pred must_verify_sandbox_compliance/2, gloss('market surveillance authority verifies compliance with art_60 for sandbox testing'), source('celex:32024R1689/oj#art_76').
:- pred may_allow_derogation/3, gloss('market surveillance authority may allow testing by provider in derogation from specified conditions'), source('celex:32024R1689/oj#art_76').
:- pred may_suspend_or_terminate_testing/2, gloss('market surveillance authority may suspend or terminate testing in real world conditions'), source('celex:32024R1689/oj#art_76').
:- pred may_require_modification/3, gloss('market surveillance authority may require modification of testing aspect'), source('celex:32024R1689/oj#art_76').
:- pred must_indicate_grounds_and_challenge/3, gloss('decision or objection indicates grounds and how to challenge'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate_grounds_to_other_authorities/3, gloss('market surveillance authority communicates grounds to authorities of other Member States'), source('celex:32024R1689/oj#art_76').
:- pred testing_in_real_world_conditions_compliant/1, gloss('testing in real world conditions is in accordance with the regulation'), source('celex:32024R1689/oj#art_76').
:- pred sandbox_testing/1, gloss('testing in real world conditions conducted within an AI regulatory sandbox'), source('celex:32024R1689/oj#art_76').
:- pred informed_of_serious_incident/2, gloss('market surveillance authority informed of serious incident by specified party'), source('celex:32024R1689/oj#art_76').
:- pred grounds_for_considering_conditions_not_met/2, gloss('market surveillance authority has grounds for considering conditions not met'), source('celex:32024R1689/oj#art_76').
:- pred decision_taken/2, gloss('market surveillance authority has taken a decision under paragraph 3'), source('celex:32024R1689/oj#art_76').
:- pred objection_issued/2, gloss('market surveillance authority has issued an objection under art_60(4)(b)'), source('celex:32024R1689/oj#art_76').
:- pred tested_in_member_state/2, gloss('AI system has been tested in a Member State'), source('celex:32024R1689/oj#art_76').

must_ensure_testing_compliance(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    testing_in_real_world_conditions_compliant(Testing).

must_verify_sandbox_compliance(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    sandbox_testing(Testing),
    ai_regulatory_sandbox(Sandbox),
    testing_within_sandbox(Testing, Sandbox).

may_allow_derogation(Authority, Testing, Provider) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    sandbox_testing(Testing),
    provider(Provider).

may_suspend_or_terminate_testing(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    informed_of_serious_incident(Authority, _Party),
    serious_incident(Incident),
    related_to_testing(Incident, Testing).

may_suspend_or_terminate_testing(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    grounds_for_considering_conditions_not_met(Authority, Testing).

may_require_modification(Authority, Testing, Aspect) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    informed_of_serious_incident(Authority, _Party),
    serious_incident(Incident),
    related_to_testing(Incident, Testing),
    aspect_of_testing(Aspect, Testing).

may_require_modification(Authority, Testing, Aspect) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    grounds_for_considering_conditions_not_met(Authority, Testing),
    aspect_of_testing(Aspect, Testing).

must_indicate_grounds_and_challenge(Authority, Decision, Challenge) :-
    market_surveillance_authority(Authority),
    decision_taken(Authority, Decision),
    indicates_grounds(Decision, Grounds),
    indicates_challenge_method(Decision, Challenge).

must_indicate_grounds_and_challenge(Authority, Objection, Challenge) :-
    market_surveillance_authority(Authority),
    objection_issued(Authority, Objection),
    indicates_grounds(Objection, Grounds),
    indicates_challenge_method(Objection, Challenge).

must_communicate_grounds_to_other_authorities(Authority, Grounds, OtherAuthority) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    decision_taken(Authority, Decision),
    grounds_of_decision(Decision, Grounds),
    tested_in_member_state(System, MemberState),
    authority_of_member_state(OtherAuthority, MemberState),
    testing_in_member_state(Testing, MemberState),
    related_to_decision(Decision, Testing),
    related_to_system(Testing, System).

provenance(must_ensure_testing_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_sandbox_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_derogation/3, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification/3, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge/3, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_grounds_to_other_authorities/3, 'celex:32024R1689/oj#art_76').
provenance(testing_in_real_world_conditions_compliant/1, 'celex:32024R1689/oj#art_76').
provenance(sandbox_testing/1, 'celex:32024R1689/oj#art_76').
provenance(informed_of_serious_incident/2, 'celex:32024R1689/oj#art_76').
provenance(grounds_for_considering_conditions_not_met/2, 'celex:32024R1689/oj#art_76').
provenance(decision_taken/2, 'celex:32024R1689/oj#art_76').
provenance(objection_issued/2, 'celex:32024R1689/oj#art_76').
provenance(tested_in_member_state/2, 'celex:32024R1689/oj#art_76').

references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
