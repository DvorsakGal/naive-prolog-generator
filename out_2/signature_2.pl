% ============================================================
% RECONCILED VOCABULARY -- surviving names for what Phase B invented.
%
% A mechanical pass proposed candidate pairs; LLM calls adjudicated each one;
% the surviving name of each group was then chosen in code by usage count.
% Pass 2 receives signature.pl AND this file, so the names below are handed
% to the calls rather than hoped for.
%
% alias(Old/N, Canonical/N) records a merge: Old is not to be used.
%
% invented input : 1096 predicates over 125 rule files
% pairs proposed : 213
% pairs answered : 213
% verdict same   : 23
% groups         : 16
% names merged   : 20
% model          : gpt-oss:120b-cloud (temperature 0.0, seed 0)
% fingerprint   : f60af79639089d28b6324427f13da511a393b127e3eec7946b95b91eaa0f007f
%
% DO NOT EDIT BY HAND without re-running Phase B pass 2.
% ============================================================

% --- surviving names ---
:- pred adheres_to_code_of_practice/1, gloss('provider adheres to an approved code of practice'), source('reconciled').
:- pred annex_3_ai_system/1, gloss('AI system listed in annex 3'), source('reconciled').
:- pred annex_3_pnt_1_a/1, gloss('systems referred to in annex 3 point 1 (a)'), source('reconciled').
:- pred complies_with_harmonised_standard/1, gloss('provider complies with a European harmonised standard'), source('reconciled').
:- pred condition_b/1, gloss('Condition (b) for adopting common specifications is satisfied'), source('reconciled').
:- pred general_purpose_ai_model_provider/1, gloss('provider of a general‑purpose AI model'), source('reconciled').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('reconciled').
:- pred meets_requirements_art_31/1, gloss('meets the requirements laid down in article 31'), source('reconciled').
:- pred member_state/1, gloss('Member State of the Union'), source('reconciled').
:- pred must_adopt/2, gloss('Commission shall adopt implementing acts in accordance with the examination procedure'), source('reconciled').
:- pred must_designate_or_establish/2, gloss('Member State shall designate or establish a notifying authority'), source('reconciled').
:- pred must_make_publicly_available/2, gloss('obligation to make a list publicly available'), source('reconciled').
:- pred obtained_information/2, gloss('information obtained by authority'), source('reconciled').
:- pred required_risk_management_system/1, gloss('risk management system required'), source('reconciled').
:- pred safety_component_ai_system/1, gloss('AI system that is a safety component'), source('reconciled').
:- pred union_harmonisation_legislation_applies/1, gloss('legislation listed in annex I'), source('reconciled').

% --- merged away: do not use the first name, use the second ---
alias(adheres_to_approved_code_of_practice/1, adheres_to_code_of_practice/1).
alias(listed_in_annex_3/1, annex_3_ai_system/1).
alias(annex_3_pnt_1_a_applies/1, annex_3_pnt_1_a/1).
alias(complies_with_european_harmonised_standard/1, complies_with_harmonised_standard/1).
alias(required_condition_b/1, condition_b/1).
alias(provides_general_purpose_ai_model/1, general_purpose_ai_model_provider/1).
alias(provider_of_general_purpose_ai_model/1, general_purpose_ai_model_provider/1).
alias(required_high_risk_ai_system/1, high_risk_ai_system/1).
alias(high_risk_ai_system_applies/1, high_risk_ai_system/1).
alias(required_requirements_of_art_31/1, meets_requirements_art_31/1).
alias(member_state_applies/1, member_state/1).
alias(must_adopt_in_accordance/2, must_adopt/2).
alias(must_establish_or_designate/2, must_designate_or_establish/2).
alias(must_make_list_publicly_available/2, must_make_publicly_available/2).
alias(information_obtained_by/2, obtained_information/2).
alias(risk_management_system/1, required_risk_management_system/1).
alias(act_concerns_safety_component_ai_system/1, safety_component_ai_system/1).
alias(listed_in_union_harmonisation_legislation/1, union_harmonisation_legislation_applies/1).
alias(covered_by_union_harmonisation_legislation/1, union_harmonisation_legislation_applies/1).
alias(related_to_product_covered_by_harmonisation_legislation/1, union_harmonisation_legislation_applies/1).
