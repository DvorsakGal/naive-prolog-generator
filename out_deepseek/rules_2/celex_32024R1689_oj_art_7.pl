% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 0d8dab26b9dbf9a566fa444fd87de04f3bce76e51cef126c6d6d5b0c91f3c5a6
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_consider_criteria/2, gloss('Commission must consider criteria when assessing condition'), source('celex:32024R1689/oj#art_7').
:- pred condition_for_adding_use_cases/1, gloss('conditions for adding high-risk AI use-cases are fulfilled'), source('celex:32024R1689/oj#art_7').
:- pred condition_for_removing_use_cases/1, gloss('conditions for removing high-risk AI use-cases are fulfilled'), source('celex:32024R1689/oj#art_7').
:- pred risk_equivalent_or_greater/1, gloss('risk of harm equivalent to or greater than existing high-risk AI systems'), source('celex:32024R1689/oj#art_7').
:- pred no_longer_poses_significant_risks/1, gloss('high-risk AI system no longer poses significant risks'), source('celex:32024R1689/oj#art_7').
:- pred deletion_does_not_decrease_protection/1, gloss('deletion does not decrease overall level of protection'), source('celex:32024R1689/oj#art_7').

condition_for_adding_use_cases(S) :-
    ai_system(S),
    intended_purpose(S),
    risk_equivalent_or_greater(S).

risk_equivalent_or_greater(S) :-
    ai_system(S),
    risk(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    intended_purpose(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    extent_of_use(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    nature_and_amount_of_data(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    extent_of_autonomy(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    prior_harm_or_concerns(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    potential_extent_of_harm(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    dependency_on_outcome(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    power_imbalance_or_vulnerability(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    corrigibility_of_outcome(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    magnitude_and_likelihood_of_benefit(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    existing_union_law_provides_redress(S).

must_consider_criteria(Commission, S) :-
    ai_system(S),
    existing_union_law_provides_prevention(S).

condition_for_removing_use_cases(S) :-
    high_risk_ai_system(S),
    no_longer_poses_significant_risks(S),
    deletion_does_not_decrease_protection(S).

no_longer_poses_significant_risks(S) :-
    high_risk_ai_system(S),
    \+ risk(S).

deletion_does_not_decrease_protection(S) :-
    high_risk_ai_system(S).

provenance(condition_for_adding_use_cases/1, 'celex:32024R1689/oj#art_7').
provenance(risk_equivalent_or_greater/1, 'celex:32024R1689/oj#art_7').
provenance(must_consider_criteria/2, 'celex:32024R1689/oj#art_7').
provenance(condition_for_removing_use_cases/1, 'celex:32024R1689/oj#art_7').
provenance(no_longer_poses_significant_risks/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
