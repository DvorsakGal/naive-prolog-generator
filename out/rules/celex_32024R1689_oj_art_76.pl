% unit       : celex:32024R1689/oj#art_76
% title      : Supervision of testing in real world conditions by market surveillance authorities
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : gpt-oss:120b-cloud
% prompt sha : 9a131bf096bf0366f92572baa27681744f2513e193e5bae996225cc3337058f0
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred prospective_provider/1, gloss('entity that may become a provider'), source('celex:32024R1689/oj#art_76').
:- pred supervised_in_ai_regulatory_sandbox/1, gloss('AI system that is supervised within an AI regulatory sandbox'), source('celex:32024R1689/oj#art_76').
:- pred non_compliance_with_art_60_61/1, gloss('conditions set out in articles 60 and 61 are not met'), source('celex:32024R1689/oj#art_76').
:- pred decision_referred_to_art_76_par_3/1, gloss('decision referred to in article 76 paragraph 3'), source('celex:32024R1689/oj#art_76').
:- pred objection_in_art_60_par_4_unp_1_pnt_b/1, gloss('objection within the meaning of article 60 paragraph 4 unp 1 pnt b'), source('celex:32024R1689/oj#art_76').

must_have_competences_and_powers(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S).

must_verify_compliance(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).

permitted_conduct_testing_by_provider(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).

permitted_suspend_testing(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    (   serious_incident(S)
    ;   non_compliance_with_art_60_61(S)
    ).

permitted_require_modification(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    (   serious_incident(S)
    ;   non_compliance_with_art_60_61(S)
    ).

must_indicate_grounds_and_challenge_procedure(MSA, D) :-
    market_surveillance_authority(MSA),
    (   decision_referred_to_art_76_par_3(D)
    ;   objection_in_art_60_par_4_unp_1_pnt_b(D)
    ).

must_communicate_grounds_to_other_msas(MSA, S) :-
    market_surveillance_authority(MSA),
    decision_referred_to_art_76_par_3(_D),
    testing_in_real_world_conditions(S).

provenance(must_have_competences_and_powers/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_conduct_testing_by_provider/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_suspend_testing/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_require_modification/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge_procedure/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_grounds_to_other_msas/2, 'celex:32024R1689/oj#art_76').

references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
