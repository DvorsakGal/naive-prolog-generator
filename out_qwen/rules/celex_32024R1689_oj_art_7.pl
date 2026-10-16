% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 29a65b862e4beee4c6931e9e278e9d0a60973b42380539893313756e63fb49ed
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred commission_empowered_to_add_high_risk_use_case/1, gloss('commission may amend annex 3 to add a high-risk ai system use case'), source('celex:32024R1689/oj#art_7').
:- pred commission_empowered_to_remove_high_risk_use_case/1, gloss('commission may amend annex 3 to remove a high-risk ai system use case'), source('celex:32024R1689/oj#art_7').
:- pred conditions_for_adding_high_risk_use_case/1, gloss('both area and equivalent risk conditions are fulfilled for adding a use case'), source('celex:32024R1689/oj#art_7').
:- pred conditions_for_removing_high_risk_use_case/1, gloss('both no significant risk and no decrease in protection conditions are fulfilled for removing a use case'), source('celex:32024R1689/oj#art_7').
:- pred intended_for_annex_iii_area/1, gloss('ai system is intended to be used in an area listed in annex iii'), source('celex:32024R1689/oj#art_7').
:- pred poses_equivalent_or_greater_risk/1, gloss('ai system poses risk of harm or adverse impact equivalent to or greater than existing high-risk systems'), source('celex:32024R1689/oj#art_7').
:- pred no_longer_poses_significant_risk/1, gloss('high-risk ai system no longer poses significant risks to fundamental rights health or safety'), source('celex:32024R1689/oj#art_7').
:- pred deletion_does_not_decrease_protection/1, gloss('deletion of use case does not decrease overall level of protection under union law'), source('celex:32024R1689/oj#art_7').
:- pred assessment_criteria_considered/1, gloss('commission takes into account criteria when assessing equivalent risk condition'), source('celex:32024R1689/oj#art_7').

provenance(commission_empowered_to_add_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(commission_empowered_to_remove_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(conditions_for_adding_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(conditions_for_removing_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(intended_for_annex_iii_area/1, 'celex:32024R1689/oj#art_7').
provenance(poses_equivalent_or_greater_risk/1, 'celex:32024R1689/oj#art_7').
provenance(no_longer_poses_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').
provenance(assessment_criteria_considered/1, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

commission_empowered_to_add_high_risk_use_case(S) :-
    conditions_for_adding_high_risk_use_case(S).

commission_empowered_to_remove_high_risk_use_case(S) :-
    conditions_for_removing_high_risk_use_case(S).

conditions_for_adding_high_risk_use_case(S) :-
    ai_system(S),
    intended_for_annex_iii_area(S),
    poses_equivalent_or_greater_risk(S).

conditions_for_removing_high_risk_use_case(S) :-
    ai_system(S),
    no_longer_poses_significant_risk(S),
    deletion_does_not_decrease_protection(S).

intended_for_annex_iii_area(S) :-
    intended_purpose(S).

poses_equivalent_or_greater_risk(S) :-
    risk(S),
    assessment_criteria_considered(S).

no_longer_poses_significant_risk(S) :-
    \+ poses_equivalent_or_greater_risk(S),
    assessment_criteria_considered(S).

deletion_does_not_decrease_protection(_S).

assessment_criteria_considered(S) :-
    ai_system(S).
