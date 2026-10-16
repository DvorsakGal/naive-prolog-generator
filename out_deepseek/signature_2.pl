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
% invented input : 1807 predicates over 125 rule files
% pairs proposed : 310
% pairs answered : 310
% verdict same   : 43
% groups         : 36
% names merged   : 41
% model          : deepseek/deepseek-v4-pro (temperature 0.0, seed 0)
% fingerprint   : 462c954906fd12477461ec0235cf837f493db0d26c38ef03bbe422a4ecdfc9e3
%
% DO NOT EDIT BY HAND without re-running Phase B pass 2.
% ============================================================

% --- surviving names ---
:- pred adverse_legal_effect_decision/1, gloss('decision producing adverse legal effect based solely on system output'), source('reconciled').
:- pred annex_3_point_1_a_system/1, gloss('high-risk AI system referred to in Annex III point 1(a)'), source('reconciled').
:- pred annex_3_point_2_system/1, gloss('high-risk AI system listed in Annex III point 2'), source('reconciled').
:- pred bias_mitigation_measures_identified/1, gloss('measures to detect, prevent and mitigate biases are identified'), source('reconciled').
:- pred contains_eu_declaration_of_conformity/1, gloss('documentation includes a copy of the EU declaration of conformity'), source('reconciled').
:- pred established_in_third_country/1, gloss('established in third country'), source('reconciled').
:- pred evaluation_finds_high_risk/2, gloss('evaluation finds AI system is high-risk'), source('reconciled').
:- pred experts_designated_by_member_states/1, gloss('experts designated by member states'), source('reconciled').
:- pred extension_of_scope/1, gloss('extension of scope'), source('reconciled').
:- pred fine_cap/2, gloss('maximum fine for an infringement'), source('reconciled').
:- pred for_substantial_public_interest/1, gloss('for substantial public interest'), source('reconciled').
:- pred free_and_open_source_licence/1, gloss('released under free and open-source licence'), source('reconciled').
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III'), source('reconciled').
:- pred human_oversight_aims_to_prevent_risks/1, gloss('human oversight aims to prevent or minimise risks'), source('reconciled').
:- pred involved_in_application/1, gloss('involved in application'), source('reconciled').
:- pred law_enforcement_migration_asylum_border/1, gloss('system in areas of law enforcement, migration, asylum and border control management'), source('reconciled').
:- pred made_available_on_union_market/2, gloss('made available on union market'), source('reconciled').
:- pred must_comply_with_registration/2, gloss('authorised representative must comply with registration obligations'), source('reconciled').
:- pred must_document_impartiality_structure/1, gloss('notified body must document a structure to safeguard impartiality'), source('reconciled').
:- pred must_immediately_inform/2, gloss('entity must immediately inform others'), source('reconciled').
:- pred must_inform_commission_and_member_states/2, gloss('Member State must inform Commission and other Member States'), source('reconciled').
:- pred must_prepare_annual_report/1, gloss('Commission must publish annual report on use'), source('reconciled').
:- pred must_report_serious_incident/2, gloss('provider must report serious incident to market surveillance authority'), source('reconciled').
:- pred must_take_corrective_actions/2, gloss('provider must take necessary corrective actions and provide information'), source('reconciled').
:- pred offers_conformity_assessment_activities/1, gloss('offers conformity assessment activities'), source('reconciled').
:- pred only_authorised_persons_access/1, gloss('only authorised persons have access with confidentiality obligations'), source('reconciled').
:- pred open_source_exception_applies/1, gloss('exception for free and open-source models applies'), source('reconciled').
:- pred parameters_publicly_available/1, gloss('parameters publicly available'), source('reconciled').
:- pred presumed_conformity/1, gloss('system or model presumed to conform to requirements'), source('reconciled').
:- pred requires_conformity_assessment/1, gloss('required to undergo third-party conformity assessment'), source('reconciled').
:- pred residual_risk_acceptable/1, gloss('residual risk judged acceptable'), source('reconciled').
:- pred risk_presenting_system/1, gloss('high-risk AI system presenting a risk under Article 79(1)'), source('reconciled').
:- pred sandbox_may_include_real_world_testing/1, gloss('sandbox may include testing in real world conditions'), source('reconciled').
:- pred supervised_within/2, gloss('testing is supervised within a sandbox'), source('reconciled').
:- pred systemic_risk_classification_applies/1, gloss('general-purpose AI model classified as having systemic risk'), source('reconciled').
:- pred tested_for_risk_management/1, gloss('tested to identify risk management measures'), source('reconciled').

% --- merged away: do not use the first name, use the second ---
alias(produces_adverse_legal_effect/1, adverse_legal_effect_decision/1).
alias(referred_to_in_annex_3_point_1_a/1, annex_3_point_1_a_system/1).
alias(system_listed_under_point_2_of_annex_3/1, annex_3_point_2_system/1).
alias(bias_mitigation_measures_required/1, bias_mitigation_measures_identified/1).
alias(eu_declaration_of_conformity_accompanies/1, contains_eu_declaration_of_conformity/1).
alias(accompanied_by_eu_declaration_of_conformity/1, contains_eu_declaration_of_conformity/1).
alias(established_under_third_country_law/1, established_in_third_country/1).
alias(finds_risk_after_evaluation/2, evaluation_finds_high_risk/2).
alias(designated_representatives_of_member_states/1, experts_designated_by_member_states/1).
alias(extension_of_scope_applies/1, extension_of_scope/1).
alias(fine_amount_cap/2, fine_cap/2).
alias(condition_substantial_public_interest/1, for_substantial_public_interest/1).
alias(released_under_free_open_source_licence/1, free_and_open_source_licence/1).
alias(high_risk_ai_system_listed_in_annex_3/1, high_risk_ai_system/1).
alias(annex_3_system/1, high_risk_ai_system/1).
alias(annex_3_high_risk_ai_system/1, high_risk_ai_system/1).
alias(oversight_aims_to_prevent_or_minimise_risks/1, human_oversight_aims_to_prevent_risks/1).
alias(involved_in_application_of_regulation/1, involved_in_application/1).
alias(law_enforcement_migration_asylum_border_system/1, law_enforcement_migration_asylum_border/1).
alias(placed_on_market_or_made_available_in/2, made_available_on_union_market/2).
alias(must_comply_with_registration_obligations/2, must_comply_with_registration/2).
alias(must_implement_impartiality_structure/1, must_document_impartiality_structure/1).
alias(immediately_inform/2, must_immediately_inform/2).
alias(must_notify_commission_and_member_states/2, must_inform_commission_and_member_states/2).
alias(must_publish_annual_report/1, must_prepare_annual_report/1).
alias(must_report_serious_incidents/2, must_report_serious_incident/2).
alias(must_take_corrective_action/2, must_take_corrective_actions/2).
alias(concerns_conformity_assessment_activities/1, offers_conformity_assessment_activities/1).
alias(description_of_conformity_assessment_activities/1, offers_conformity_assessment_activities/1).
alias(only_authorised_persons_have_access/1, only_authorised_persons_access/1).
alias(free_and_open_source_exception/1, open_source_exception_applies/1).
alias(parameters_made_publicly_available/1, parameters_publicly_available/1).
alias(presumed_conformity_with_requirements/1, presumed_conformity/1).
alias(requires_third_party_conformity_assessment/1, requires_conformity_assessment/1).
alias(overall_residual_risk_acceptable/1, residual_risk_acceptable/1).
alias(ai_system_presenting_risk/1, risk_presenting_system/1).
alias(testing_may_include_real_world_conditions/1, sandbox_may_include_real_world_testing/1).
alias(supervised_within_sandbox/2, supervised_within/2).
alias(advising_on_classification_systemic_risk/1, systemic_risk_classification_applies/1).
alias(general_purpose_ai_model_with_systemic_risk/1, systemic_risk_classification_applies/1).
alias(tested_to_identify_risk_management_measures/1, tested_for_risk_management/1).
