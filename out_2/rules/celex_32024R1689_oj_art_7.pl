% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b5f1fd10733b404ee33e88ca8739b4972ce2f4540e3ec995adac6278f40ae31d
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_7').
:- pred permitted_amend_annex_by_adding_use_cases/2, gloss('Commission may amend annex by adding or modifying use‑cases of high‑risk AI systems'), source('celex:32024R1689/oj#art_7').
:- pred intended_purpose_in_annex_areas/1, gloss('AI system intended for an area listed in annex 3'), source('celex:32024R1689/oj#art_7').
:- pred risk_equivalent_or_greater/1, gloss('Risk of the AI system is equivalent to or greater than that of existing high‑risk AI systems'), source('celex:32024R1689/oj#art_7').
:- pred permitted_remove_high_risk_ai_system/2, gloss('Commission may remove a high‑risk AI system from the list'), source('celex:32024R1689/oj#art_7').
:- pred no_significant_risk/1, gloss('AI system no longer poses significant risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_7').
:- pred protection_not_decreased/1, gloss('Removal does not decrease overall level of protection'), source('celex:32024R1689/oj#art_7').
:- pred must_consider_criteria/2, gloss('Commission shall take into account the listed criteria when assessing conditions'), source('celex:32024R1689/oj#art_7').
:- pred criterion_intended_purpose/1, gloss('Intended purpose of the AI system'), source('celex:32024R1689/oj#art_7').
:- pred criterion_extent_of_use/1, gloss('Extent to which the AI system has been or is likely to be used'), source('celex:32024R1689/oj#art_7').
:- pred criterion_data_nature_amount/1, gloss('Nature and amount of data processed, especially special categories of personal data'), source('celex:32024R1689/oj#art_7').
:- pred criterion_autonomy_human_override/1, gloss('Extent to which the system acts autonomously and possibility for human override'), source('celex:32024R1689/oj#art_7').
:- pred criterion_harm_history/1, gloss('Extent to which use has already caused harm or adverse impact'), source('celex:32024R1689/oj#art_7').
:- pred criterion_potential_harm_extent/1, gloss('Potential extent of such harm or impact'), source('celex:32024R1689/oj#art_7').
:- pred criterion_dependency_of_affected_persons/1, gloss('Dependence of harmed persons on the outcome'), source('celex:32024R1689/oj#art_7').
:- pred criterion_imbalance_of_power/1, gloss('Imbalance of power or vulnerability of affected persons'), source('celex:32024R1689/oj#art_7').
:- pred criterion_corrigibility/1, gloss('Ease of correcting or reversing the outcome'), source('celex:32024R1689/oj#art_7').
:- pred criterion_benefit_magnitude_likelihood/1, gloss('Magnitude and likelihood of benefit of deployment'), source('celex:32024R1689/oj#art_7').
:- pred criterion_existing_union_law_measures/1, gloss('Existence of effective Union law measures'), source('celex:32024R1689/oj#art_7').

commission(commission).

permitted_amend_annex_by_adding_use_cases(Commission, AI_System) :-
    commission(Commission),
    high_risk_ai_system(AI_System),
    intended_purpose_in_annex_areas(AI_System),
    risk_equivalent_or_greater(AI_System).

permitted_remove_high_risk_ai_system(Commission, AI_System) :-
    commission(Commission),
    high_risk_ai_system(AI_System),
    no_significant_risk(AI_System),
    protection_not_decreased(AI_System).

must_consider_criteria(Commission, AI_System) :-
    commission(Commission),
    high_risk_ai_system(AI_System),
    criterion_intended_purpose(AI_System),
    criterion_extent_of_use(AI_System),
    criterion_data_nature_amount(AI_System),
    criterion_autonomy_human_override(AI_System),
    criterion_harm_history(AI_System),
    criterion_potential_harm_extent(AI_System),
    criterion_dependency_of_affected_persons(AI_System),
    criterion_imbalance_of_power(AI_System),
    criterion_corrigibility(AI_System),
    criterion_benefit_magnitude_likelihood(AI_System),
    criterion_existing_union_law_measures(AI_System).

provenance(commission/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_amend_annex_by_adding_use_cases/2, 'celex:32024R1689/oj#art_7').
provenance(intended_purpose_in_annex_areas/1, 'celex:32024R1689/oj#art_7').
provenance(risk_equivalent_or_greater/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_remove_high_risk_ai_system/2, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(protection_not_decreased/1, 'celex:32024R1689/oj#art_7').
provenance(must_consider_criteria/2, 'celex:32024R1689/oj#art_7').
provenance(criterion_intended_purpose/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_extent_of_use/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_data_nature_amount/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_autonomy_human_override/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_harm_history/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_potential_harm_extent/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_dependency_of_affected_persons/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_imbalance_of_power/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_corrigibility/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_benefit_magnitude_likelihood/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_existing_union_law_measures/1, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
