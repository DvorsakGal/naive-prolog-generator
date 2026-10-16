% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : f4d10905c0329675829fab81b4f7a05c50354168e70892e87c1315a70f2cb6e8
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred market_surveillance_authority_has_competences_and_powers/1, gloss('market surveillance authority has competences and powers to ensure testing in real world conditions is in accordance with the regulation'), source('celex:32024R1689/oj#art_76').
:- pred verify_compliance_with_art_60/1, gloss('market surveillance authority verifies compliance with Article 60 as part of supervisory role for AI regulatory sandbox'), source('celex:32024R1689/oj#art_76').
:- pred may_allow_testing_in_derogation/2, gloss('market surveillance authority may allow testing in real world conditions by provider or prospective provider in derogation from conditions in Article 60(4)(f) and (g)'), source('celex:32024R1689/oj#art_76').
:- pred may_suspend_or_terminate_testing/1, gloss('market surveillance authority may suspend or terminate testing in real world conditions'), source('celex:32024R1689/oj#art_76').
:- pred may_require_modification_of_testing/1, gloss('market surveillance authority may require provider or prospective provider and deployer or prospective deployer to modify any aspect of testing in real world conditions'), source('celex:32024R1689/oj#art_76').
:- pred decision_or_objection_indicates_grounds_and_challenge/1, gloss('decision or objection indicates grounds and how provider or prospective provider can challenge'), source('celex:32024R1689/oj#art_76').
:- pred communicate_grounds_to_other_member_states/1, gloss('market surveillance authority communicates grounds to market surveillance authorities of other Member States where AI system has been tested'), source('celex:32024R1689/oj#art_76').

market_surveillance_authority_has_competences_and_powers(A) :-
    market_surveillance_authority(A).

must_ensure_testing_in_real_world_conditions_in_accordance(A) :-
    market_surveillance_authority(A),
    market_surveillance_authority_has_competences_and_powers(A).

verify_compliance_with_art_60(A) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(S),
    supervised_within_sandbox(S).

may_allow_testing_in_derogation(A, testing_by_provider_or_prospective_provider) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(S),
    verify_compliance_with_art_60(A).

may_suspend_or_terminate_testing(A) :-
    market_surveillance_authority(A),
    informed_of_serious_incident(A, _Provider, _ThirdParty),
    testing_in_real_world_conditions(S).

may_suspend_or_terminate_testing(A) :-
    market_surveillance_authority(A),
    other_grounds_for_considering_conditions_not_met(A, S),
    testing_in_real_world_conditions(S).

may_require_modification_of_testing(A) :-
    market_surveillance_authority(A),
    informed_of_serious_incident(A, _Provider, _ThirdParty),
    testing_in_real_world_conditions(S).

may_require_modification_of_testing(A) :-
    market_surveillance_authority(A),
    other_grounds_for_considering_conditions_not_met(A, S),
    testing_in_real_world_conditions(S).

decision_or_objection_indicates_grounds_and_challenge(A) :-
    market_surveillance_authority(A),
    taken_decision_referred_to_in_par_3(A).

decision_or_objection_indicates_grounds_and_challenge(A) :-
    market_surveillance_authority(A),
    issued_objection_meaning_art_60_par_4_unp_1_pnt_b(A).

communicate_grounds_to_other_member_states(A) :-
    market_surveillance_authority(A),
    taken_decision_referred_to_in_par_3(A),
    member_state(OtherMS),
    member_state(OtherMS),
    OtherMS \= A,
    tested_in_member_state(S, OtherMS),
    testing_in_real_world_conditions(S).

provenance(market_surveillance_authority_has_competences_and_powers/1, 'celex:32024R1689/oj#art_76').
provenance(verify_compliance_with_art_60/1, 'celex:32024R1689/oj#art_76').
provenance(may_allow_testing_in_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/1, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification_of_testing/1, 'celex:32024R1689/oj#art_76').
provenance(decision_or_objection_indicates_grounds_and_challenge/1, 'celex:32024R1689/oj#art_76').
provenance(communicate_grounds_to_other_member_states/1, 'celex:32024R1689/oj#art_76').

references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
