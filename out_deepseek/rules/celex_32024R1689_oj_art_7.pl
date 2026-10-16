% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5cc44ba22086613a0bea85389d8acb0984ec59f018ac30f70db4c7b6903fb989
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_take_into_account/2, gloss('actor must consider criteria when assessing'), source('celex:32024R1689/oj#art_7').
:- pred risk_of_harm_to_health_and_safety/1, gloss('AI system poses risk of harm to health and safety'), source('celex:32024R1689/oj#art_7').
:- pred adverse_impact_on_fundamental_rights/1, gloss('AI system poses adverse impact on fundamental rights'), source('celex:32024R1689/oj#art_7').
:- pred risk_equivalent_or_greater_than_existing/1, gloss('risk is equivalent to or greater than existing high-risk AI systems'), source('celex:32024R1689/oj#art_7').
:- pred intended_for_area_in_annex_3/1, gloss('AI system intended for use in areas listed in Annex III'), source('celex:32024R1689/oj#art_7').
:- pred condition_for_adding_high_risk_fulfilled/1, gloss('both conditions for adding high-risk use-case are fulfilled'), source('celex:32024R1689/oj#art_7').
:- pred condition_for_removing_high_risk_fulfilled/1, gloss('both conditions for removing high-risk use-case are fulfilled'), source('celex:32024R1689/oj#art_7').
:- pred no_significant_risk_to_fundamental_rights_health_safety/1, gloss('AI system no longer poses significant risks'), source('celex:32024R1689/oj#art_7').
:- pred deletion_does_not_decrease_protection/1, gloss('deletion does not decrease overall level of protection'), source('celex:32024R1689/oj#art_7').

condition_for_adding_high_risk_fulfilled(S) :-
    intended_for_area_in_annex_3(S),
    risk_of_harm_to_health_and_safety(S),
    adverse_impact_on_fundamental_rights(S),
    risk_equivalent_or_greater_than_existing(S).

condition_for_removing_high_risk_fulfilled(S) :-
    no_significant_risk_to_fundamental_rights_health_safety(S),
    deletion_does_not_decrease_protection(S).

must_take_into_account(Commission, criteria(S)) :-
    condition_for_adding_high_risk_fulfilled(S).

provenance(condition_for_adding_high_risk_fulfilled/1, 'celex:32024R1689/oj#art_7').
provenance(condition_for_removing_high_risk_fulfilled/1, 'celex:32024R1689/oj#art_7').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
