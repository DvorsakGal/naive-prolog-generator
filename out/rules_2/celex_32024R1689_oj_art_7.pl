% unit       : celex:32024R1689/oj#art_7
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : gpt-oss:120b-cloud
% prompt sha : 7998cb76629665cd13f7918920f4067387a3302e91091da812b79033e4fbe06b
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_7').
:- pred permitted_adopt_delegated_act/2, gloss('Commission may adopt delegated act'), source('celex:32024R1689/oj#art_7').
:- pred intended_use_in_annex_area_applies/1, gloss('AI system intended for area listed in annex 3'), source('celex:32024R1689/oj#art_7').
:- pred risk_of_harm_or_fundamental_rights_applies/1, gloss('AI system poses risk of harm to health/safety or fundamental rights equivalent or greater than existing high‑risk AI systems'), source('celex:32024R1689/oj#art_7').
:- pred no_significant_risk_applies/1, gloss('AI system no longer poses significant risks to fundamental rights, health or safety'), source('celex:32024R1689/oj#art_7').
:- pred protection_not_decreased_applies/1, gloss('Deletion does not decrease overall level of protection of health, safety and fundamental rights'), source('celex:32024R1689/oj#art_7').
:- pred criterion/1, gloss('assessment criterion for risk condition'), source('celex:32024R1689/oj#art_7').
:- pred required_take_into_account/2, gloss('Commission shall take into account criterion'), source('celex:32024R1689/oj#art_7').

commission(commission).

criterion(intended_purpose).
criterion(extent_of_use).
criterion(data_processed_nature_amount).
criterion(autonomy_and_human_override).
criterion(past_harm_or_concerns).
criterion(potential_extent_of_harm).
criterion(dependence_of_affected_persons).
criterion(imbalance_of_power_vulnerability).
criterion(corrigibility_of_outcome).
criterion(magnitude_and_likelihood_of_benefit).
criterion(existing_union_law_measures).

required_take_into_account(C, Cr) :-
    commission(C),
    criterion(Cr).

permitted_adopt_delegated_act(C, add_modify_use_case) :-
    commission(C),
    intended_use_in_annex_area_applies(S),
    risk_of_harm_or_fundamental_rights_applies(S).

permitted_adopt_delegated_act(C, remove_high_risk_ai_system) :-
    commission(C),
    no_significant_risk_applies(S),
    protection_not_decreased_applies.

provenance(commission/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_adopt_delegated_act/2, 'celex:32024R1689/oj#art_7').
provenance(intended_use_in_annex_area_applies/1, 'celex:32024R1689/oj#art_7').
provenance(risk_of_harm_or_fundamental_rights_applies/1, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk_applies/1, 'celex:32024R1689/oj#art_7').
provenance(protection_not_decreased_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion/1, 'celex:32024R1689/oj#art_7').
provenance(required_take_into_account/2, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
