% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 7aa04ee38765972fb3de27050e74116f87aca0ed64f85f525c0c6b47b30d3a9a
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_7').
:- pred area_listed_in_annex_3/1, gloss('AI system intended for an area listed in annex 3'), source('celex:32024R1689/oj#art_7').
:- pred risk_equivalent_or_greater/1, gloss('Risk posed by AI system is equivalent to or greater than that of existing high‑risk AI systems'), source('celex:32024R1689/oj#art_7').
:- pred no_significant_risk/1, gloss('AI system no longer poses any significant risk to fundamental rights, health or safety'), source('celex:32024R1689/oj#art_7').
:- pred not_decrease_protection/1, gloss('Removal does not decrease overall level of protection under Union law'), source('celex:32024R1689/oj#art_7').
:- pred permitted_adopt_delegated_act/1, gloss('Commission may adopt delegated act'), source('celex:32024R1689/oj#art_7').
:- pred objective_assessment_criterion/1, gloss('Criterion taken into account when assessing condition'), source('celex:32024R1689/oj#art_7').

% Permission to adopt delegated acts adding or modifying use‑cases of high‑risk AI systems
permitted_adopt_delegated_act(adopt_delegated_act(Commission, amendment(annex_3, add_or_modify_use_cases(S)))) :-
    commission(Commission),
    high_risk_ai_system(S),
    area_listed_in_annex_3(S),
    risk_equivalent_or_greater(S).

provenance(permitted_adopt_delegated_act/1, 'celex:32024R1689/oj#art_7').

% Permission to adopt delegated acts removing high‑risk AI systems
permitted_adopt_delegated_act(remove_high_risk_ai_system(Commission, S)) :-
    commission(Commission),
    high_risk_ai_system(S),
    no_significant_risk(S),
    not_decrease_protection(S).

provenance(permitted_adopt_delegated_act/1, 'celex:32024R1689/oj#art_7').

% Criteria the Commission shall take into account when assessing the condition
objective_assessment_criterion(intended_purpose).
objective_assessment_criterion(extent_of_use_or_likelihood_of_use).
objective_assessment_criterion(data_nature_and_amount).
objective_assessment_criterion(autonomy_and_human_override).
objective_assessment_criterion(past_harm_or_adverse_impact).
objective_assessment_criterion(potential_extent_of_harm_or_impact).
objective_assessment_criterion(dependence_of_affected_persons).
objective_assessment_criterion(imbalance_of_power_or_vulnerability).
objective_assessment_criterion(corrigibility_or_reversibility).
objective_assessment_criterion(magnitude_and_likelihood_of_benefit).
objective_assessment_criterion(existing_union_law_measures).

provenance(objective_assessment_criterion/1, 'celex:32024R1689/oj#art_7').

% References
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
