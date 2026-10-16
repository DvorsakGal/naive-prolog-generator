% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : df16066ccfbf0cde3a80f044e3a3e47bba81ce53070ee2241c69b7b1bf3aa7fe
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_7').
:- pred delegated_act/1, gloss('delegated act adopted by the Commission'), source('celex:32024R1689/oj#art_7').
:- pred amend_annex_3/1, gloss('delegated act amending Annex III'), source('celex:32024R1689/oj#art_7').
:- pred add_use_case/1, gloss('delegated act adds a use-case of high-risk AI system to Annex III'), source('celex:32024R1689/oj#art_7').
:- pred modify_use_case/1, gloss('delegated act modifies a use-case of high-risk AI system in Annex III'), source('celex:32024R1689/oj#art_7').
:- pred remove_high_risk_ai_system/1, gloss('delegated act removes a high-risk AI system from Annex III'), source('celex:32024R1689/oj#art_7').
:- pred intended_for_area_in_annex_3/1, gloss('AI system intended to be used in an area listed in Annex III'), source('celex:32024R1689/oj#art_7').
:- pred poses_risk_equivalent_or_greater/1, gloss('AI system poses risk of harm to health and safety or adverse impact on fundamental rights equivalent to or greater than existing high-risk AI systems in Annex III'), source('celex:32024R1689/oj#art_7').
:- pred no_longer_poses_significant_risk/1, gloss('high-risk AI system no longer poses significant risks to fundamental rights, health or safety'), source('celex:32024R1689/oj#art_7').
:- pred deletion_does_not_decrease_protection/1, gloss('deletion does not decrease overall level of protection of health, safety and fundamental rights under Union law'), source('celex:32024R1689/oj#art_7').
:- pred criterion_intended_purpose/1, gloss('criterion: intended purpose of the AI system'), source('celex:32024R1689/oj#art_7').
:- pred criterion_extent_of_use/1, gloss('criterion: extent to which AI system has been used or is likely to be used'), source('celex:32024R1689/oj#art_7').
:- pred criterion_nature_amount_data/1, gloss('criterion: nature and amount of data processed, in particular special categories of personal data'), source('celex:32024R1689/oj#art_7').
:- pred criterion_autonomy_human_override/1, gloss('criterion: extent of autonomy and possibility for human override'), source('celex:32024R1689/oj#art_7').
:- pred criterion_past_harm_or_concerns/1, gloss('criterion: extent to which use has already caused harm or given rise to significant concerns'), source('celex:32024R1689/oj#art_7').
:- pred criterion_potential_extent_harm/1, gloss('criterion: potential extent of harm or adverse impact in terms of intensity and ability to affect multiple persons or particular groups'), source('celex:32024R1689/oj#art_7').
:- pred criterion_dependence_on_outcome/1, gloss('criterion: extent to which persons are dependent on outcome and cannot reasonably opt-out'), source('celex:32024R1689/oj#art_7').
:- pred criterion_imbalance_of_power/1, gloss('criterion: extent of imbalance of power or vulnerable position of persons potentially harmed'), source('celex:32024R1689/oj#art_7').
:- pred criterion_corrigibility_reversibility/1, gloss('criterion: extent to which outcome is easily corrigible or reversible'), source('celex:32024R1689/oj#art_7').
:- pred criterion_magnitude_likelihood_benefit/1, gloss('criterion: magnitude and likelihood of benefit of deployment for individuals, groups, or society'), source('celex:32024R1689/oj#art_7').
:- pred criterion_existing_union_law_redress/1, gloss('criterion: extent to which existing Union law provides for effective measures of redress'), source('celex:32024R1689/oj#art_7').
:- pred criterion_existing_union_law_prevention/1, gloss('criterion: extent to which existing Union law provides for effective measures to prevent or minimise risks'), source('celex:32024R1689/oj#art_7').
:- pred outcome_not_easily_corrigible/1, gloss('outcome having adverse impact on health, safety or fundamental rights is not easily corrigible or reversible'), source('celex:32024R1689/oj#art_7').

commission(commission).

amend_annex_3(A) :-
    delegated_act(A),
    commission_adopts(A).

add_use_case(A) :-
    amend_annex_3(A),
    adds_use_case(A).

modify_use_case(A) :-
    amend_annex_3(A),
    modifies_use_case(A).

remove_high_risk_ai_system(A) :-
    delegated_act(A),
    commission_adopts(A),
    removes_from_annex_3(A).

permitted_add_use_case(A, S) :-
    add_use_case(A),
    ai_system(S),
    intended_for_area_in_annex_3(S),
    poses_risk_equivalent_or_greater(S).

permitted_modify_use_case(A, S) :-
    modify_use_case(A),
    ai_system(S),
    intended_for_area_in_annex_3(S),
    poses_risk_equivalent_or_greater(S).

permitted_remove_high_risk_ai_system(A, S) :-
    remove_high_risk_ai_system(A),
    high_risk_ai_system(S),
    no_longer_poses_significant_risk(S),
    deletion_does_not_decrease_protection(S).

intended_for_area_in_annex_3(S) :-
    ai_system(S),
    intended_purpose(S),
    area_listed_in_annex_3(S).

poses_risk_equivalent_or_greater(S) :-
    ai_system(S),
    risk_to_health_safety_fundamental_rights(S),
    risk_equivalent_or_greater_than_existing(S).

no_longer_poses_significant_risk(S) :-
    high_risk_ai_system(S),
    \+ significant_risk_to_fundamental_rights_health_safety(S).

deletion_does_not_decrease_protection(S) :-
    high_risk_ai_system(S),
    overall_protection_level_maintained(S).

criterion_intended_purpose(S) :-
    ai_system(S),
    intended_purpose(S).

criterion_extent_of_use(S) :-
    ai_system(S),
    used_or_likely_to_be_used(S).

criterion_nature_amount_data(S) :-
    ai_system(S),
    processes_data(S),
    nature_and_amount_assessed(S).

criterion_nature_amount_data(S) :-
    ai_system(S),
    processes_data(S),
    special_categories_of_personal_data(S).

criterion_autonomy_human_override(S) :-
    ai_system(S),
    acts_autonomously(S),
    human_can_override(S).

criterion_past_harm_or_concerns(S) :-
    ai_system(S),
    caused_harm_to_health_safety(S).

criterion_past_harm_or_concerns(S) :-
    ai_system(S),
    had_adverse_impact_on_fundamental_rights(S).

criterion_past_harm_or_concerns(S) :-
    ai_system(S),
    gave_rise_to_significant_concerns(S).

criterion_potential_extent_harm(S) :-
    ai_system(S),
    potential_harm_intensity_assessed(S),
    affects_multiple_persons_or_group(S).

criterion_dependence_on_outcome(S) :-
    ai_system(S),
    persons_dependent_on_outcome(S),
    not_reasonably_possible_to_opt_out(S).

criterion_imbalance_of_power(S) :-
    ai_system(S),
    imbalance_of_power_exists(S).

criterion_imbalance_of_power(S) :-
    ai_system(S),
    persons_in_vulnerable_position(S).

criterion_corrigibility_reversibility(S) :-
    ai_system(S),
    outcome_corrigible_or_reversible(S).

outcome_not_easily_corrigible(S) :-
    ai_system(S),
    outcome_has_adverse_impact(S),
    adverse_impact_on_health_safety_or_fundamental_rights(S).

criterion_magnitude_likelihood_benefit(S) :-
    ai_system(S),
    benefit_for_individuals_groups_society_assessed(S).

criterion_existing_union_law_redress(S) :-
    ai_system(S),
    existing_union_law_provides_redress(S).

criterion_existing_union_law_prevention(S) :-
    ai_system(S),
    existing_union_law_provides_prevention_or_minimisation(S).

provenance(commission/1, 'celex:32024R1689/oj#art_7').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_7').
provenance(amend_annex_3/1, 'celex:32024R1689/oj#art_7').
provenance(add_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(modify_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(remove_high_risk_ai_system/1, 'celex:32024R1689/oj#art_7').
provenance(intended_for_area_in_annex_3/1, 'celex:32024R1689/oj#art_7').
provenance(poses_risk_equivalent_or_greater/1, 'celex:32024R1689/oj#art_7').
provenance(no_longer_poses_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_intended_purpose/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_extent_of_use/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_nature_amount_data/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_autonomy_human_override/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_past_harm_or_concerns/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_potential_extent_harm/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_dependence_on_outcome/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_imbalance_of_power/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_corrigibility_reversibility/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_magnitude_likelihood_benefit/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_existing_union_law_redress/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_existing_union_law_prevention/1, 'celex:32024R1689/oj#art_7').
provenance(outcome_not_easily_corrigible/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_add_use_case/2, 'celex:32024R1689/oj#art_7').
provenance(permitted_modify_use_case/2, 'celex:32024R1689/oj#art_7').
provenance(permitted_remove_high_risk_ai_system/2, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
