% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : cbe1bc601f86f91328973304eb764190231387f5870a7481ab0307f8edde48c9
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred intended_as_safety_component_of_product/1, gloss('AI system intended to be used as a safety component of a product'), source('celex:32024R1689/oj#art_6').
:- pred ai_system_is_product/1, gloss('AI system is itself a product'), source('celex:32024R1689/oj#art_6').
:- pred product_covered_by_union_harmonisation_legislation/1, gloss('product covered by Union harmonisation legislation listed in Annex I'), source('celex:32024R1689/oj#art_6').
:- pred product_requires_third_party_conformity_assessment/1, gloss('product required to undergo third-party conformity assessment'), source('celex:32024R1689/oj#art_6').
:- pred ai_system_referred_to_in_annex_3/1, gloss('AI system referred to in Annex III'), source('celex:32024R1689/oj#art_6').
:- pred poses_no_significant_risk_of_harm/1, gloss('does not pose a significant risk of harm to health, safety or fundamental rights of natural persons'), source('celex:32024R1689/oj#art_6').
:- pred does_not_materially_influence_decision_making/1, gloss('does not materially influence the outcome of decision making'), source('celex:32024R1689/oj#art_6').
:- pred intended_to_perform_narrow_procedural_task/1, gloss('AI system intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred intended_to_improve_result_of_previously_completed_human_activity/1, gloss('AI system intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred intended_to_detect_decision_making_patterns/1, gloss('AI system intended to detect decision-making patterns or deviations from prior decision-making patterns'), source('celex:32024R1689/oj#art_6').
:- pred not_meant_to_replace_or_influence_human_assessment/1, gloss('not meant to replace or influence the previously completed human assessment without proper human review'), source('celex:32024R1689/oj#art_6').
:- pred intended_to_perform_preparatory_task/1, gloss('AI system intended to perform a preparatory task to an assessment relevant for Annex III use cases'), source('celex:32024R1689/oj#art_6').
:- pred performs_profiling_of_natural_persons/1, gloss('AI system performs profiling of natural persons'), source('celex:32024R1689/oj#art_6').
:- pred provider_documents_assessment/2, gloss('provider documents assessment that AI system is not high-risk before placing on market or putting into service'), source('celex:32024R1689/oj#art_6').
:- pred provider_subject_to_registration_obligation/1, gloss('provider subject to registration obligation under Article 49(2)'), source('celex:32024R1689/oj#art_6').
:- pred provider_provides_documentation_upon_request/2, gloss('provider provides documentation of assessment upon request of national competent authorities'), source('celex:32024R1689/oj#art_6').
:- pred commission_provides_guidelines/0, gloss('Commission provides guidelines on practical implementation of Article 6'), source('celex:32024R1689/oj#art_6').
:- pred commission_empowered_to_adopt_delegated_acts_to_add_conditions/0, gloss('Commission empowered to adopt delegated acts to add or modify conditions in Article 6(3)'), source('celex:32024R1689/oj#art_6').
:- pred commission_must_adopt_delegated_acts_to_delete_conditions/0, gloss('Commission must adopt delegated acts to delete conditions where necessary'), source('celex:32024R1689/oj#art_6').
:- pred amendment_does_not_decrease_level_of_protection/1, gloss('amendment does not decrease overall level of protection of health, safety and fundamental rights'), source('celex:32024R1689/oj#art_6').
:- pred amendment_ensures_consistency_with_delegated_acts/1, gloss('amendment ensures consistency with delegated acts adopted pursuant to Article 7(1)'), source('celex:32024R1689/oj#art_6').
:- pred amendment_takes_account_of_market_and_technological_developments/1, gloss('amendment takes account of market and technological developments'), source('celex:32024R1689/oj#art_6').
:- pred concrete_and_reliable_evidence_exists/1, gloss('concrete and reliable evidence exists of AI systems falling under Annex III scope but not posing significant risk'), source('celex:32024R1689/oj#art_6').
:- pred concrete_and_reliable_evidence_necessary_to_maintain_protection/1, gloss('concrete and reliable evidence that deletion is necessary to maintain level of protection'), source('celex:32024R1689/oj#art_6').

high_risk_ai_system(S) :-
    ai_system(S),
    intended_as_safety_component_of_product(S),
    product_covered_by_union_harmonisation_legislation(S),
    product_requires_third_party_conformity_assessment(S).

high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_is_product(S),
    product_covered_by_union_harmonisation_legislation(S),
    product_requires_third_party_conformity_assessment(S).

high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_referred_to_in_annex_3(S),
    \+ exempt_from_high_risk_classification(S).

exempt_from_high_risk_classification(S) :-
    ai_system_referred_to_in_annex_3(S),
    poses_no_significant_risk_of_harm(S),
    does_not_materially_influence_decision_making(S),
    narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S).

narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S) :-
    intended_to_perform_narrow_procedural_task(S).

narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S) :-
    intended_to_improve_result_of_previously_completed_human_activity(S).

narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S) :-
    intended_to_detect_decision_making_patterns(S),
    not_meant_to_replace_or_influence_human_assessment(S).

narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S) :-
    intended_to_perform_preparatory_task(S).

high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_referred_to_in_annex_3(S),
    performs_profiling_of_natural_persons(S).

must_document_assessment(P, S) :-
    provider(P),
    ai_system_referred_to_in_annex_3(S),
    concluded_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).

must_comply_with_registration(P, S) :-
    provider(P),
    ai_system_referred_to_in_annex_3(S),
    concluded_not_high_risk(S).

must_provide(P, documentation(assessment(S))) :-
    provider(P),
    ai_system_referred_to_in_annex_3(S),
    concluded_not_high_risk(S),
    national_competent_authority(_A).

commission_provides_guidelines.

commission_empowered_to_adopt_delegated_acts_to_add_conditions :-
    concrete_and_reliable_evidence_exists(_E).

commission_must_adopt_delegated_acts_to_delete_conditions :-
    concrete_and_reliable_evidence_necessary_to_maintain_protection(_E).

amendment_does_not_decrease_level_of_protection(A) :-
    amendment_to_conditions(A).

amendment_ensures_consistency_with_delegated_acts(A) :-
    amendment_to_conditions(A).

amendment_takes_account_of_market_and_technological_developments(A) :-
    amendment_to_conditions(A).

amendment_to_conditions(A) :-
    delegated_act_concerning_ai_safety_components(A).

provenance(intended_as_safety_component_of_product/1, 'celex:32024R1689/oj#art_6').
provenance(ai_system_is_product/1, 'celex:32024R1689/oj#art_6').
provenance(product_covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_6').
provenance(product_requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(ai_system_referred_to_in_annex_3/1, 'celex:32024R1689/oj#art_6').
provenance(poses_no_significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(does_not_materially_influence_decision_making/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_perform_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_improve_result_of_previously_completed_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_detect_decision_making_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(not_meant_to_replace_or_influence_human_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_perform_preparatory_task/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling_of_natural_persons/1, 'celex:32024R1689/oj#art_6').
provenance(provider_documents_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(provider_subject_to_registration_obligation/1, 'celex:32024R1689/oj#art_6').
provenance(provider_provides_documentation_upon_request/2, 'celex:32024R1689/oj#art_6').
provenance(commission_provides_guidelines/0, 'celex:32024R1689/oj#art_6').
provenance(commission_empowered_to_adopt_delegated_acts_to_add_conditions/0, 'celex:32024R1689/oj#art_6').
provenance(commission_must_adopt_delegated_acts_to_delete_conditions/0, 'celex:32024R1689/oj#art_6').
provenance(amendment_does_not_decrease_level_of_protection/1, 'celex:32024R1689/oj#art_6').
provenance(amendment_ensures_consistency_with_delegated_acts/1, 'celex:32024R1689/oj#art_6').
provenance(amendment_takes_account_of_market_and_technological_developments/1, 'celex:32024R1689/oj#art_6').
provenance(concrete_and_reliable_evidence_exists/1, 'celex:32024R1689/oj#art_6').
provenance(concrete_and_reliable_evidence_necessary_to_maintain_protection/1, 'celex:32024R1689/oj#art_6').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_from_high_risk_classification/1, 'celex:32024R1689/oj#art_6').
provenance(narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide/2, 'celex:32024R1689/oj#art_6').
provenance(commission_provides_guidelines/0, 'celex:32024R1689/oj#art_6').
provenance(commission_empowered_to_adopt_delegated_acts_to_add_conditions/0, 'celex:32024R1689/oj#art_6').
provenance(commission_must_adopt_delegated_acts_to_delete_conditions/0, 'celex:32024R1689/oj#art_6').
provenance(amendment_does_not_decrease_level_of_protection/1, 'celex:32024R1689/oj#art_6').
provenance(amendment_ensures_consistency_with_delegated_acts/1, 'celex:32024R1689/oj#art_6').
provenance(amendment_takes_account_of_market_and_technological_developments/1, 'celex:32024R1689/oj#art_6').
provenance(amendment_to_conditions/1, 'celex:32024R1689/oj#art_6').

references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').
