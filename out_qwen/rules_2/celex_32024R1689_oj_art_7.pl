% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : acc7f8e4d6aac4c4a6f1462448a0eb2a86bd5915d6b307826b4bb4c96f7b8279
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred commission_empowered_to_amend_annex_iii/1, gloss('Commission empowered to adopt delegated acts to amend Annex III'), source('celex:32024R1689/oj#art_7').
:- pred condition_for_adding_high_risk_use_case/1, gloss('conditions fulfilled for adding or modifying high-risk AI use cases in Annex III'), source('celex:32024R1689/oj#art_7').
:- pred intended_for_annex_iii_area/1, gloss('AI system intended to be used in areas listed in Annex III'), source('celex:32024R1689/oj#art_7').
:- pred poses_equivalent_or_greater_risk/1, gloss('AI system poses risk equivalent to or greater than existing high-risk AI systems'), source('celex:32024R1689/oj#art_7').
:- pred condition_for_removing_high_risk_system/1, gloss('conditions fulfilled for removing high-risk AI systems from Annex III'), source('celex:32024R1689/oj#art_7').
:- pred no_longer_poses_significant_risk/1, gloss('high-risk AI system no longer poses significant risks to fundamental rights health or safety'), source('celex:32024R1689/oj#art_7').
:- pred deletion_does_not_decrease_protection/1, gloss('deletion does not decrease overall level of protection under Union law'), source('celex:32024R1689/oj#art_7').

commission_empowered_to_amend_annex_iii(add_high_risk_use_case) :-
    condition_for_adding_high_risk_use_case(_S).

commission_empowered_to_amend_annex_iii(remove_high_risk_system) :-
    condition_for_removing_high_risk_system(_S).

condition_for_adding_high_risk_use_case(S) :-
    ai_system(S),
    intended_for_annex_iii_area(S),
    poses_equivalent_or_greater_risk(S).

intended_for_annex_iii_area(S) :-
    ai_system(S),
    intended_purpose(S).

poses_equivalent_or_greater_risk(S) :-
    ai_system(S),
    risk(S).

condition_for_removing_high_risk_system(S) :-
    high_risk_ai_system(S),
    no_longer_poses_significant_risk(S),
    deletion_does_not_decrease_protection(S).

no_longer_poses_significant_risk(S) :-
    high_risk_ai_system(S),
    \+ presents_risk(S).

deletion_does_not_decrease_protection(S) :-
    high_risk_ai_system(S).

provenance(commission_empowered_to_amend_annex_iii/1, 'celex:32024R1689/oj#art_7').
provenance(condition_for_adding_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(intended_for_annex_iii_area/1, 'celex:32024R1689/oj#art_7').
provenance(poses_equivalent_or_greater_risk/1, 'celex:32024R1689/oj#art_7').
provenance(condition_for_removing_high_risk_system/1, 'celex:32024R1689/oj#art_7').
provenance(no_longer_poses_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
