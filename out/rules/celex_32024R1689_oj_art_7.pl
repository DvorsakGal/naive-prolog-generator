% unit       : celex:32024R1689/oj#art_7
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : gpt-oss:120b-cloud
% prompt sha : 20ccf3590cac7dfac1424edadfb4be25c3f38b2efad52668f850a8e226f47e2e
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred permitted_amend_annex_3/2, gloss('Commission may adopt delegated act to amend annex 3 by adding or modifying use‑cases of high‑risk AI systems'), source('celex:32024R1689/oj#art_7').
:- pred permitted_remove_high_risk_ai_system/2, gloss('Commission may adopt delegated act to remove high‑risk AI systems from annex 3'), source('celex:32024R1689/oj#art_7').
:- pred must_take_into_account/2, gloss('Commission shall take into account criteria when assessing the condition'), source('celex:32024R1689/oj#art_7').

:- pred intended_use_in_annex_3_applies/1, gloss('AI system intended to be used in an area listed in annex 3'), source('celex:32024R1689/oj#art_7').
:- pred risk_harm_or_fundamental_rights_applies/1, gloss('AI system poses a risk of harm to health and safety or an adverse impact on fundamental rights'), source('celex:32024R1689/oj#art_7').
:- pred risk_at_least_as_high_as_existing_high_risk_applies/1, gloss('Risk is equivalent to or greater than the risk of existing high‑risk AI systems'), source('celex:32024R1689/oj#art_7').

:- pred criterion_intended_purpose_applies/1, gloss('Criterion (a): intended purpose of the AI system'), source('celex:32024R1689/oj#art_7').
:- pred criterion_extent_of_use_applies/1, gloss('Criterion (b): extent to which the AI system has been used or is likely to be used'), source('celex:32024R1689/oj#art_7').
:- pred criterion_data_processed_applies/1, gloss('Criterion (c): nature and amount of data processed, especially special categories of personal data'), source('celex:32024R1689/oj#art_7').
:- pred criterion_autonomy_and_human_override_applies/1, gloss('Criterion (d): extent the AI system acts autonomously and possibility for human override'), source('celex:32024R1689/oj#art_7').
:- pred criterion_existing_harm_applies/1, gloss('Criterion (e): extent the use has already caused harm or adverse impact'), source('celex:32024R1689/oj#art_7').
:- pred criterion_potential_harm_extent_applies/1, gloss('Criterion (f): potential extent of such harm or adverse impact'), source('celex:32024R1689/oj#art_7').
:- pred criterion_dependency_of_harmed_persons_applies/1, gloss('Criterion (g): extent persons harmed are dependent on the outcome'), source('celex:32024R1689/oj#art_7').
:- pred criterion_imbalance_of_power_applies/1, gloss('Criterion (h): imbalance of power or vulnerable position of persons harmed'), source('celex:32024R1689/oj#art_7').
:- pred criterion_corrigibility_applies/1, gloss('Criterion (i): extent the outcome is easily corrigible or reversible'), source('celex:32024R1689/oj#art_7').
:- pred criterion_benefit_magnitude_applies/1, gloss('Criterion (j): magnitude and likelihood of benefit of the deployment'), source('celex:32024R1689/oj#art_7').
:- pred criterion_union_law_provisions_applies/1, gloss('Criterion (k): extent existing Union law provides effective measures of redress and risk prevention'), source('celex:32024R1689/oj#art_7').

:- pred no_significant_risk_applies/1, gloss('AI system no longer poses any significant risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_7').
:- pred protection_not_decreased_applies/1, gloss('Deletion does not decrease the overall level of protection of health, safety and fundamental rights'), source('celex:32024R1689/oj#art_7').
:- pred overall_protection_decrease/1, gloss('Deletion would decrease the overall level of protection'), source('celex:32024R1689/oj#art_7').

% -----------------------------------------------------------------
% Conditions for amendment
permitted_amend_annex_3(_Commission, add_or_modify) :-
    intended_use_in_annex_3_applies(S),
    risk_harm_or_fundamental_rights_applies(S),
    risk_at_least_as_high_as_existing_high_risk_applies(S),
    ai_system(S).

% Conditions for removal
permitted_remove_high_risk_ai_system(_Commission, removal) :-
    no_significant_risk_applies(S),
    protection_not_decreased_applies(S),
    ai_system(S).

% Assessment duties – one clause per criterion
must_take_into_account(_Commission, intended_purpose) :-
    criterion_intended_purpose_applies(S),
    ai_system(S).

must_take_into_account(_Commission, extent_of_use) :-
    criterion_extent_of_use_applies(S),
    ai_system(S).

must_take_into_account(_Commission, data_processed) :-
    criterion_data_processed_applies(S),
    ai_system(S).

must_take_into_account(_Commission, autonomy_and_human_override) :-
    criterion_autonomy_and_human_override_applies(S),
    ai_system(S).

must_take_into_account(_Commission, existing_harm) :-
    criterion_existing_harm_applies(S),
    ai_system(S).

must_take_into_account(_Commission, potential_harm_extent) :-
    criterion_potential_harm_extent_applies(S),
    ai_system(S).

must_take_into_account(_Commission, dependency_of_harmed_persons) :-
    criterion_dependency_of_harmed_persons_applies(S),
    ai_system(S).

must_take_into_account(_Commission, imbalance_of_power) :-
    criterion_imbalance_of_power_applies(S),
    ai_system(S).

must_take_into_account(_Commission, corrigibility) :-
    criterion_corrigibility_applies(S),
    ai_system(S).

must_take_into_account(_Commission, benefit_magnitude) :-
    criterion_benefit_magnitude_applies(S),
    ai_system(S).

must_take_into_account(_Commission, union_law_provisions) :-
    criterion_union_law_provisions_applies(S),
    ai_system(S).

% -----------------------------------------------------------------
% Definitions of the condition predicates
intended_use_in_annex_3_applies(S) :-
    intended_purpose(S),
    ai_system(S).

risk_harm_or_fundamental_rights_applies(S) :-
    risk(S),
    ai_system(S).

risk_at_least_as_high_as_existing_high_risk_applies(S) :-
    risk(S),
    ai_system(S).

no_significant_risk_applies(S) :-
    \+ risk_harm_or_fundamental_rights_applies(S),
    ai_system(S).

protection_not_decreased_applies(S) :-
    \+ overall_protection_decrease(S),
    ai_system(S).

overall_protection_decrease(_S) :- false.

% -----------------------------------------------------------------
% Criterion implementations (placeholder bodies)
criterion_intended_purpose_applies(S) :-
    intended_purpose(S),
    ai_system(S).

criterion_extent_of_use_applies(S) :-
    % placeholder: assume extent of use can be derived from usage data
    usage_data(S),
    ai_system(S).

criterion_data_processed_applies(S) :-
    training_data(S),
    ai_system(S).

criterion_autonomy_and_human_override_applies(S) :-
    autonomy(S),
    human_override_possible(S),
    ai_system(S).

criterion_existing_harm_applies(S) :-
    serious_incident(S),
    ai_system(S).

criterion_potential_harm_extent_applies(S) :-
    potential_harm_intensity(S),
    ai_system(S).

criterion_dependency_of_harmed_persons_applies(S) :-
    dependency_on_outcome(S),
    ai_system(S).

criterion_imbalance_of_power_applies(S) :-
    power_imbalance(S),
    ai_system(S).

criterion_corrigibility_applies(S) :-
    corrigible(S),
    ai_system(S).

criterion_benefit_magnitude_applies(S) :-
    benefit_magnitude(S),
    ai_system(S).

criterion_union_law_provisions_applies(S) :-
    national_competent_authority(_A),
    ai_system(S).

% -----------------------------------------------------------------
% Provenance
provenance(permitted_amend_annex_3/2, 'celex:32024R1689/oj#art_7').
provenance(permitted_remove_high_risk_ai_system/2, 'celex:32024R1689/oj#art_7').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').
provenance(intended_use_in_annex_3_applies/1, 'celex:32024R1689/oj#art_7').
provenance(risk_harm_or_fundamental_rights_applies/1, 'celex:32024R1689/oj#art_7').
provenance(risk_at_least_as_high_as_existing_high_risk_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_intended_purpose_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_extent_of_use_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_data_processed_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_autonomy_and_human_override_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_existing_harm_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_potential_harm_extent_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_dependency_of_harmed_persons_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_imbalance_of_power_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_corrigibility_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_benefit_magnitude_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_union_law_provisions_applies/1, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk_applies/1, 'celex:32024R1689/oj#art_7').
provenance(protection_not_decreased_applies/1, 'celex:32024R1689/oj#art_7').
provenance(overall_protection_decrease/1, 'celex:32024R1689/oj#art_7').

% -----------------------------------------------------------------
% References
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
