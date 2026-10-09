% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 84bb920ba189e9a9b795bf9741279b82a7c90b5786d8123d7cabd53e5a19582d
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred must_have_competences_and_powers/2, gloss('market surveillance authority must have competences and powers'), source('celex:32024R1689/oj#art_76').
:- pred must_ensure/2, gloss('market surveillance authority must ensure testing in real world conditions is in accordance'), source('celex:32024R1689/oj#art_76').
:- pred testing_in_real_world_conditions/1, gloss('testing in real world conditions'), source('celex:32024R1689/oj#art_76').
:- pred supervised_in_sandbox/1, gloss('AI system supervised within an AI regulatory sandbox'), source('celex:32024R1689/oj#art_76').
:- pred must_verify/2, gloss('market surveillance authority must verify compliance with article 60'), source('celex:32024R1689/oj#art_76').
:- pred permitted_allow_testing_by_provider/1, gloss('market surveillance authority may allow testing by provider in derogation'), source('celex:32024R1689/oj#art_76').
:- pred informed_of_serious_incident/2, gloss('market surveillance authority has been informed of a serious incident'), source('celex:32024R1689/oj#art_76').
:- pred permitted_suspend_or_terminate_testing/1, gloss('market surveillance authority may suspend or terminate testing'), source('celex:32024R1689/oj#art_76').
:- pred permitted_require_modification/1, gloss('market surveillance authority may require modification of testing'), source('celex:32024R1689/oj#art_76').
:- pred decision_taken_par_3/1, gloss('market surveillance authority has taken a decision referred to in article 76 paragraph 3'), source('celex:32024R1689/oj#art_76').
:- pred objection_issued_pnt_b/1, gloss('market surveillance authority has issued an objection referred to in article 60 paragraph 4 unp 1 pnt b'), source('celex:32024R1689/oj#art_76').
:- pred must_indicate_ground_and_challenge_procedure/1, gloss('decision or objection shall indicate grounds and how to challenge'), source('celex:32024R1689/oj#art_76').
:- pred testing_in_real_world_conditions_in_member_state/1, gloss('member state where AI system has been tested in accordance with the testing plan'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate_ground_to_other_msa/2, gloss('communicate grounds to other market surveillance authorities'), source('celex:32024R1689/oj#art_76').

must_have_competences_and_powers(MSA, testing_in_real_world_conditions) :-
    market_surveillance_authority(MSA).

must_ensure(MSA, testing_in_real_world_conditions_in_accordance) :-
    market_surveillance_authority(MSA).

must_verify(MSA, compliance_with_art_60) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(T),
    supervised_in_sandbox(T).

permitted_allow_testing_by_provider(MSA) :-
    market_surveillance_authority(MSA).

informed_of_serious_incident(MSA, Provider) :-
    market_surveillance_authority(MSA),
    provider(Provider).

permitted_suspend_or_terminate_testing(MSA) :-
    informed_of_serious_incident(MSA, _Provider).

permitted_require_modification(MSA) :-
    informed_of_serious_incident(MSA, _Provider).

decision_taken_par_3(MSA) :-
    market_surveillance_authority(MSA).

objection_issued_pnt_b(MSA) :-
    market_surveillance_authority(MSA).

must_indicate_ground_and_challenge_procedure(MSA) :-
    market_surveillance_authority(MSA),
    ( decision_taken_par_3(MSA) ; objection_issued_pnt_b(MSA) ).

must_communicate_ground_to_other_msa(MSA, OtherMSA) :-
    market_surveillance_authority(MSA),
    decision_taken_par_3(MSA),
    testing_in_real_world_conditions_in_member_state(OtherMSA).

provenance(must_have_competences_and_powers/2, 'celex:32024R1689/oj#art_76').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_allow_testing_by_provider/1, 'celex:32024R1689/oj#art_76').
provenance(informed_of_serious_incident/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_suspend_or_terminate_testing/1, 'celex:32024R1689/oj#art_76').
provenance(permitted_require_modification/1, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_ground_and_challenge_procedure/1, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_ground_to_other_msa/2, 'celex:32024R1689/oj#art_76').

references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
