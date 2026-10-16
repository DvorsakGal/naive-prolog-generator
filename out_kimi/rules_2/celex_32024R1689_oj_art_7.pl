% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 33e0ba177538ee954e344229571d7284f78ef6607fef51bc39383d9e731cfad4
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred condition_add_anx_3/2, gloss('conditions for adding or modifying use-cases in Annex 3'), source('celex:32024R1689/oj#art_7').
:- pred condition_remove_anx_3/2, gloss('conditions for removing use-cases from Annex 3'), source('celex:32024R1689/oj#art_7').
:- pred intended_purpose_criterion/1, gloss('intended purpose criterion for assessment'), source('celex:32024R1689/oj#art_7').
:- pred extent_of_use_criterion/1, gloss('extent of use criterion for assessment'), source('celex:32024R1689/oj#art_7').
:- pred data_processed_criterion/1, gloss('nature and amount of data processed criterion'), source('celex:32024R1689/oj#art_7').
:- pred autonomy_and_override_criterion/1, gloss('autonomy and human override criterion'), source('celex:32024R1689/oj#art_7').
:- pred harm_or_concerns_criterion/1, gloss('existing harm or concerns criterion'), source('celex:32024R1689/oj#art_7').
:- pred potential_extent_of_harm_criterion/1, gloss('potential extent of harm criterion'), source('celex:32024R1689/oj#art_7').
:- pred dependency_on_outcome_criterion/1, gloss('dependency on outcome criterion'), source('celex:32024R1689/oj#art_7').
:- pred imbalance_of_power_criterion/1, gloss('imbalance of power or vulnerable position criterion'), source('celex:32024R1689/oj#art_7').
:- pred corrigibility_criterion/1, gloss('corrigibility or reversibility criterion'), source('celex:32024R1689/oj#art_7').
:- pred benefit_of_deployment_criterion/1, gloss('magnitude and likelihood of benefit criterion'), source('celex:32024R1689/oj#art_7').
:- pred existing_union_law_redress_criterion/1, gloss('existing Union law redress measures criterion'), source('celex:32024R1689/oj#art_7').
:- pred existing_union_law_prevention_criterion/1, gloss('existing Union law prevention measures criterion'), source('celex:32024R1689/oj#art_7').
:- pred no_significant_risk/1, gloss('high-risk AI system no longer poses significant risks'), source('celex:32024R1689/oj#art_7').
:- pred deletion_does_not_decrease_protection/1, gloss('deletion does not decrease overall level of protection'), source('celex:32024R1689/oj#art_7').
:- pred assess_criteria/1, gloss('Commission shall assess criteria'), source('celex:32024R1689/oj#art_7').

condition_add_anx_3(S, commission) :-
    high_risk_ai_system(S),
    intended_use_in_annex_3_area(S),
    risk_equivalent_or_greater_than_existing_high_risk(S).

intended_use_in_annex_3_area(S) :-
    intended_purpose(S),
    referred_to_in_annex_3(S).

risk_equivalent_or_greater_than_existing_high_risk(S) :-
    risk_to_health_safety_or_rights(S),
    equivalent_or_greater_risk(S, existing_high_risk).

assess_criteria(commission) :-
    condition_add_anx_3(_S, commission).

condition_remove_anx_3(S, commission) :-
    high_risk_ai_system(S),
    no_significant_risk(S),
    deletion_does_not_decrease_protection(S).

no_significant_risk(S) :-
    \+ significant_risk_fundamental_rights(S),
    \+ significant_risk_health(S),
    criteria_listed_in_par_2_considered(S).

deletion_does_not_decrease_protection(S) :-
    \+ decreases_overall_protection_health_safety_rights(S, deletion(S)).

criteria_listed_in_par_2_considered(S) :-
    intended_purpose_criterion(S),
    extent_of_use_criterion(S),
    data_processed_criterion(S),
    autonomy_and_override_criterion(S),
    harm_or_concerns_criterion(S),
    potential_extent_of_harm_criterion(S),
    dependency_on_outcome_criterion(S),
    imbalance_of_power_criterion(S),
    corrigibility_criterion(S),
    benefit_of_deployment_criterion(S),
    existing_union_law_redress_criterion(S),
    existing_union_law_prevention_criterion(S).

intended_purpose_criterion(S) :-
    intended_purpose(S).

extent_of_use_criterion(S) :-
    used_or_likely_to_be_used(S).

data_processed_criterion(S) :-
    data_processed_and_used(S, Data),
    (special_categories_of_personal_data(Data) ; \+ special_categories_of_personal_data(Data)).

autonomy_and_override_criterion(S) :-
    acts_autonomously(S, Extent),
    human_override_possible(S, Override),
    potential_harm_from_decision(S, Harm).

harm_or_concerns_criterion(S) :-
    caused_harm_to_health_safety(S, Harm);
    adverse_impact_on_fundamental_rights(S, Impact);
    significant_concerns_likelihood_of_harm(S, Concerns),
    demonstrated_by_reports_or_allegations(Concerns).

potential_extent_of_harm_criterion(S) :-
    potential_extent_of_harm(S, Extent),
    intensity_of_harm(Extent, Intensity),
    (affects_multiple_persons(Extent) ; disproportionately_affects_group(Extent)).

dependency_on_outcome_criterion(S) :-
    persons_dependent_on_outcome(S, Persons),
    not_reasonably_possible_to_opt_out(Persons, practical_or_legal_reasons).

imbalance_of_power_criterion(S) :-
    imbalance_of_power(S, deployer);
    persons_in_vulnerable_position(S, Persons),
    vulnerable_due_to(Persons, status_or_authority_or_knowledge_or_economic_or_social_or_age).

corrigibility_criterion(S) :-
    outcome_easily_corrigible_or_reversible(S, Outcome),
    technical_solutions_available(Outcome);
    adverse_impact_on_health_safety_or_fundamental_rights(Outcome),
    \+ easily_corrigible_or_reversible(Outcome).

benefit_of_deployment_criterion(S) :-
    magnitude_and_likelihood_of_benefit(S, Benefit),
    benefit_for_individuals_or_groups_or_society(Benefit);
    possible_improvements_in_product_safety(S).

existing_union_law_redress_criterion(S) :-
    existing_union_law_provides(S, redress_measures),
    effective_measures(Redress),
    \+ claims_for_damages(Redress).

existing_union_law_prevention_criterion(S) :-
    existing_union_law_provides(S, prevention_measures),
    effective_measures(Prevention),
    prevents_or_substantially_minimises_risks(Prevention, S).

power_to_adopt_delegated_acts(commission).

must_take_into_account(commission, criteria_for_assessment) :-
    condition_add_anx_3(_S, commission).

provenance(condition_add_anx_3/2, 'celex:32024R1689/oj#art_7').
provenance(condition_remove_anx_3/2, 'celex:32024R1689/oj#art_7').
provenance(assess_criteria/1, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').
provenance(criteria_listed_in_par_2_considered/1, 'celex:32024R1689/oj#art_7').
provenance(intended_purpose_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(extent_of_use_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(data_processed_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(autonomy_and_override_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(harm_or_concerns_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(potential_extent_of_harm_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(dependency_on_outcome_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(imbalance_of_power_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(corrigibility_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(benefit_of_deployment_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(existing_union_law_redress_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(existing_union_law_prevention_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_7').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
