% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4196aff993b1754d31726dd8701dd6fb91b949f340ae7f9ba6457efd8953e510
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred delegated_act_amend_anx_3_add/1, gloss('Commission empowered to adopt delegated act to amend Annex 3 by adding or modifying use-cases'), source('celex:32024R1689/oj#art_7').
:- pred delegated_act_amend_anx_3_remove/1, gloss('Commission empowered to adopt delegated act to amend Annex 3 by removing high-risk AI systems'), source('celex:32024R1689/oj#art_7').
:- pred condition_add_anx_3/2, gloss('conditions for adding or modifying use-cases in Annex 3'), source('celex:32024R1689/oj#art_7').
:- pred condition_remove_anx_3/2, gloss('conditions for removing high-risk AI systems from Annex 3'), source('celex:32024R1689/oj#art_7').
:- pred intended_purpose_criterion/1, gloss('criterion: intended purpose of the AI system'), source('celex:32024R1689/oj#art_7').
:- pred extent_of_use_criterion/1, gloss('criterion: extent to which AI system has been used or is likely to be used'), source('celex:32024R1689/oj#art_7').
:- pred data_processed_criterion/1, gloss('criterion: nature and amount of data processed, including special categories'), source('celex:32024R1689/oj#art_7').
:- pred autonomy_override_criterion/1, gloss('criterion: extent of autonomy and possibility for human override'), source('celex:32024R1689/oj#art_7').
:- pred harm_concerns_criterion/1, gloss('criterion: extent of harm or significant concerns demonstrated'), source('celex:32024R1689/oj#art_7').
:- pred potential_extent_harm_criterion/1, gloss('criterion: potential extent of harm or adverse impact'), source('celex:32024R1689/oj#art_7').
:- pred dependency_outcome_criterion/1, gloss('criterion: extent of dependency on outcome produced with AI system'), source('celex:32024R1689/oj#art_7').
:- pred imbalance_vulnerability_criterion/1, gloss('criterion: extent of imbalance of power or vulnerable position'), source('celex:32024R1689/oj#art_7').
:- pred corrigibility_criterion/1, gloss('criterion: extent to which outcome is easily corrigible or reversible'), source('celex:32024R1689/oj#art_7').
:- pred benefit_magnitude_criterion/1, gloss('criterion: magnitude and likelihood of benefit of deployment'), source('celex:32024R1689/oj#art_7').
:- pred existing_law_redress_criterion/1, gloss('criterion: existing Union law provides effective measures of redress'), source('celex:32024R1689/oj#art_7').
:- pred existing_law_prevention_criterion/1, gloss('criterion: existing Union law provides effective measures to prevent or minimise risks'), source('celex:32024R1689/oj#art_7').
:- pred no_significant_risk_criterion/1, gloss('criterion: high-risk AI system no longer poses significant risks'), source('celex:32024R1689/oj#art_7').
:- pred no_decrease_protection_criterion/1, gloss('criterion: deletion does not decrease overall level of protection'), source('celex:32024R1689/oj#art_7').
:- pred must_take_into_account/2, gloss('Commission shall take into account criteria when assessing condition'), source('celex:32024R1689/oj#art_7').

delegated_act_amend_anx_3_add(S) :-
    ai_system(S),
    condition_add_anx_3(S, area_listed_in_anx_3),
    condition_add_anx_3(S, risk_equivalent_or_greater).

condition_add_anx_3(S, area_listed_in_anx_3) :-
    ai_system(S),
    intended_purpose(S),
    use_case_area(A),
    listed_in_anx_3(A).

condition_add_anx_3(S, risk_equivalent_or_greater) :-
    ai_system(S),
    risk_of_harm_health_safety(S),
    risk_adverse_impact_fundamental_rights(S),
    risk(R),
    risk(R_existing),
    high_risk_ai_system(S_existing),
    referred_in_anx_3(S_existing),
    equivalent_or_greater(R, R_existing).

must_take_into_account(commission, condition_add_anx_3(S, risk_equivalent_or_greater)) :-
    ai_system(S).

must_take_into_account(commission, intended_purpose_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, extent_of_use_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, data_processed_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, autonomy_override_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, harm_concerns_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, potential_extent_harm_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, dependency_outcome_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, imbalance_vulnerability_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, corrigibility_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, benefit_magnitude_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, existing_law_redress_criterion(S)) :-
    ai_system(S).

must_take_into_account(commission, existing_law_prevention_criterion(S)) :-
    ai_system(S).

delegated_act_amend_anx_3_remove(S) :-
    high_risk_ai_system(S),
    condition_remove_anx_3(S, no_significant_risk),
    condition_remove_anx_3(S, no_decrease_protection).

condition_remove_anx_3(S, no_significant_risk) :-
    high_risk_ai_system(S),
    \+ significant_risk_fundamental_rights(S),
    \+ significant_risk_health(S),
    \+ significant_risk_safety(S),
    criteria_listed_in_art_7_par_2_applied(S).

condition_remove_anx_3(S, no_decrease_protection) :-
    high_risk_ai_system(S),
    overall_level_protection(P),
    health_safety_fundamental_rights(P),
    union_law(P),
    \+ decrease(P, deletion(S)).

provenance(delegated_act_amend_anx_3_add/1, 'celex:32024R1689/oj#art_7').
provenance(delegated_act_amend_anx_3_remove/1, 'celex:32024R1689/oj#art_7').
provenance(condition_add_anx_3/2, 'celex:32024R1689/oj#art_7').
provenance(condition_remove_anx_3/2, 'celex:32024R1689/oj#art_7').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').
provenance(intended_purpose_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(extent_of_use_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(data_processed_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(autonomy_override_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(harm_concerns_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(potential_extent_harm_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(dependency_outcome_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(imbalance_vulnerability_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(corrigibility_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(benefit_magnitude_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(existing_law_redress_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(existing_law_prevention_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(no_decrease_protection_criterion/1, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
