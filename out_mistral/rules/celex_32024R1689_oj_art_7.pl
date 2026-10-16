% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a312871594470b7e1eacfcf299f90fda04b9ddf8fa6822371cd2d589cbe92d78
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_take_into_account/2, gloss('Commission must consider criterion when assessing amendment conditions'), source('celex:32024R1689/oj#art_7').
:- pred empowered_to_amend_annex_3/2, gloss('Commission empowered to amend Annex III by adding or removing use-cases'), source('celex:32024R1689/oj#art_7').
:- pred condition_for_adding_use_case/2, gloss('condition that must be fulfilled to add a use-case to Annex III'), source('celex:32024R1689/oj#art_7').
:- pred condition_for_removing_use_case/2, gloss('condition that must be fulfilled to remove a use-case from Annex III'), source('celex:32024R1689/oj#art_7').
:- pred criterion_for_assessment/1, gloss('criterion the Commission must take into account when assessing amendment conditions'), source('celex:32024R1689/oj#art_7').

% Commission empowerment to add or modify use-cases
empowered_to_amend_annex_3(commission, add_or_modify_use_case(S)) :-
    ai_system(S),
    condition_for_adding_use_case(S, area_listed_in_annex_3),
    condition_for_adding_use_case(S, risk_equivalent_or_greater).

% Commission empowerment to remove use-cases
empowered_to_amend_annex_3(commission, remove_use_case(S)) :-
    ai_system(S),
    condition_for_removing_use_case(S, no_significant_risk),
    condition_for_removing_use_case(S, no_decrease_in_protection_level).

% Conditions for adding a use-case (paragraph 1)
condition_for_adding_use_case(S, area_listed_in_annex_3) :-
    ai_system(S),
    intended_purpose(S),
    area_listed_in_annex_3(S).

condition_for_adding_use_case(S, risk_equivalent_or_greater) :-
    ai_system(S),
    poses_risk_of_harm_to_health_and_safety(S).
condition_for_adding_use_case(S, risk_equivalent_or_greater) :-
    ai_system(S),
    poses_adverse_impact_on_fundamental_rights(S).
condition_for_adding_use_case(S, risk_equivalent_or_greater) :-
    ai_system(S),
    risk_equivalent_to_or_greater_than_existing_high_risk(S).

% Conditions for removing a use-case (paragraph 3)
condition_for_removing_use_case(S, no_significant_risk) :-
    ai_system(S),
    \+ poses_significant_risk_to_fundamental_rights(S),
    \+ poses_significant_risk_to_health(S),
    \+ poses_significant_risk_to_safety(S).

condition_for_removing_use_case(S, no_decrease_in_protection_level) :-
    ai_system(S),
    deletion_does_not_decrease_overall_protection_level(S).

% Criteria the Commission must take into account (paragraph 2)
must_take_into_account(commission, criterion(intended_purpose_of_ai_system)).
must_take_into_account(commission, criterion(extent_of_use_or_likely_use)).
must_take_into_account(commission, criterion(nature_and_amount_of_data_processed)).
must_take_into_account(commission, criterion(whether_special_categories_of_personal_data_processed)).
must_take_into_account(commission, criterion(extent_of_autonomous_action)).
must_take_into_account(commission, criterion(possibility_for_human_override)).
must_take_into_account(commission, criterion(extent_harm_already_caused_to_health_and_safety)).
must_take_into_account(commission, criterion(extent_adverse_impact_on_fundamental_rights_already_caused)).
must_take_into_account(commission, criterion(significant_concerns_raised)).
must_take_into_account(commission, criterion(potential_extent_of_harm_or_adverse_impact)).
must_take_into_account(commission, criterion(intensity_of_harm)).
must_take_into_account(commission, criterion(ability_to_affect_multiple_persons)).
must_take_into_account(commission, criterion(disproportionate_impact_on_particular_group)).
must_take_into_account(commission, criterion(extent_dependent_on_outcome)).
must_take_into_account(commission, criterion(impossibility_to_opt_out)).
must_take_into_account(commission, criterion(imbalance_of_power)).
must_take_into_account(commission, criterion(vulnerable_position_of_harmed_persons)).
must_take_into_account(commission, criterion(status_authority_knowledge_economic_social_circumstances_age)).
must_take_into_account(commission, criterion(extent_outcome_easily_corrigible_or_reversible)).
must_take_into_account(commission, criterion(technical_solutions_available_to_correct_or_reverse)).
must_take_into_account(commission, criterion(outcomes_adverse_impact_not_easily_corrigible)).
must_take_into_account(commission, criterion(magnitude_and_likelihood_of_benefit)).
must_take_into_account(commission, criterion(benefit_for_individuals_groups_society)).
must_take_into_account(commission, criterion(possible_improvements_in_product_safety)).
must_take_into_account(commission, criterion(existing_union_law_provides_effective_redress)).
must_take_into_account(commission, criterion(existing_union_law_provides_measures_to_prevent_or_minimise_risks)).

% Individual criterion predicates
criterion_for_assessment(intended_purpose_of_ai_system).
criterion_for_assessment(extent_of_use_or_likely_use).
criterion_for_assessment(nature_and_amount_of_data_processed).
criterion_for_assessment(whether_special_categories_of_personal_data_processed).
criterion_for_assessment(extent_of_autonomous_action).
criterion_for_assessment(possibility_for_human_override).
criterion_for_assessment(extent_harm_already_caused_to_health_and_safety).
criterion_for_assessment(extent_adverse_impact_on_fundamental_rights_already_caused).
criterion_for_assessment(significant_concerns_raised).
criterion_for_assessment(potential_extent_of_harm_or_adverse_impact).
criterion_for_assessment(intensity_of_harm).
criterion_for_assessment(ability_to_affect_multiple_persons).
criterion_for_assessment(disproportionate_impact_on_particular_group).
criterion_for_assessment(extent_dependent_on_outcome).
criterion_for_assessment(impossibility_to_opt_out).
criterion_for_assessment(imbalance_of_power).
criterion_for_assessment(vulnerable_position_of_harmed_persons).
criterion_for_assessment(status_authority_knowledge_economic_social_circumstances_age).
criterion_for_assessment(extent_outcome_easily_corrigible_or_reversible).
criterion_for_assessment(technical_solutions_available_to_correct_or_reverse).
criterion_for_assessment(outcomes_adverse_impact_not_easily_corrigible).
criterion_for_assessment(magnitude_and_likelihood_of_benefit).
criterion_for_assessment(benefit_for_individuals_groups_society).
criterion_for_assessment(possible_improvements_in_product_safety).
criterion_for_assessment(existing_union_law_provides_effective_redress).
criterion_for_assessment(existing_union_law_provides_measures_to_prevent_or_minimise_risks).

% Helper predicates for conditions
area_listed_in_annex_3(S) :-
    ai_system(S),
    intended_purpose(S),
    listed_in_annex_3_area(S).

poses_risk_of_harm_to_health_and_safety(S) :-
    ai_system(S),
    risk(S),
    harm_to_health_and_safety(S).

poses_adverse_impact_on_fundamental_rights(S) :-
    ai_system(S),
    adverse_impact_on_fundamental_rights(S).

risk_equivalent_to_or_greater_than_existing_high_risk(S) :-
    ai_system(S),
    risk(S),
    existing_high_risk_ai_system(S),
    risk_equivalent_or_greater(S).

poses_significant_risk_to_fundamental_rights(S) :-
    ai_system(S),
    significant_risk(S),
    fundamental_rights(S).

poses_significant_risk_to_health(S) :-
    ai_system(S),
    significant_risk(S),
    health(S).

poses_significant_risk_to_safety(S) :-
    ai_system(S),
    significant_risk(S),
    safety(S).

deletion_does_not_decrease_overall_protection_level(S) :-
    ai_system(S),
    overall_protection_level_under_union_law(before_deletion(S)),
    overall_protection_level_under_union_law(after_deletion(S)),
    \+ protection_level_decreased(before_deletion(S), after_deletion(S)).

% Provenance
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').
provenance(empowered_to_amend_annex_3/2, 'celex:32024R1689/oj#art_7').
provenance(condition_for_adding_use_case/2, 'celex:32024R1689/oj#art_7').
provenance(condition_for_removing_use_case/2, 'celex:32024R1689/oj#art_7').
provenance(criterion_for_assessment/1, 'celex:32024R1689/oj#art_7').

% References
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
