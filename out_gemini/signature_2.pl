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
% invented input : 991 predicates over 125 rule files
% pairs proposed : 152
% pairs answered : 152
% verdict same   : 27
% groups         : 26
% names merged   : 27
% model          : google/gemini-3.8-flash (temperature 0.0, seed 0)
% fingerprint   : 1fa98294e04bd93419e9408f471bb4d3db80885b57d376c366bfff7c977defa7
%
% DO NOT EDIT BY HAND without re-running Phase B pass 2.
% ============================================================

% --- surviving names ---
:- pred adequate_corrective_action_taken/2, gloss('operator has taken adequate corrective action for the AI system'), source('reconciled').
:- pred annex_3_point_2_system/1, gloss('AI system listed in Annex III point 2 (critical infrastructure)'), source('reconciled').
:- pred authorised_representative_of/2, gloss('authorised representative for an AI system or provider'), source('reconciled').
:- pred biometrics_annex_3_1_a/1, gloss('High-risk AI system referred to in Annex III point 1(a)'), source('reconciled').
:- pred causal_link_established_or_likely/2, gloss('causal link established or reasonably likely between AI system and serious incident'), source('reconciled').
:- pred commission/1, gloss('European Commission'), source('reconciled').
:- pred complies_with_chapter_3_section_2/1, gloss('system complies with Chapter III Section 2 requirements'), source('reconciled').
:- pred concerns_ai_safety_component/1, gloss('delegated act concerns AI systems that are safety components'), source('reconciled').
:- pred control_of_logs/2, gloss('provider has control over logs of an AI system'), source('reconciled').
:- pred covers_union_harmonisation_legislation_annex_i/1, gloss('system is covered by Union harmonisation legislation listed in Annex I'), source('reconciled').
:- pred deemed_justified/1, gloss('derogation authorisation deemed justified after objection deadline'), source('reconciled').
:- pred formal_non_compliance/2, gloss('AI system exhibits formal non-compliance under Article 83(1)'), source('reconciled').
:- pred market_surveillance_authority_for/2, gloss('authority acting as market surveillance authority for an AI system or entity'), source('reconciled').
:- pred must_comply/2, gloss('actor must comply with specified obligations'), source('reconciled').
:- pred must_decide/2, gloss('The Commission must decide on the justification of the authorisation'), source('reconciled').
:- pred must_report/2, gloss('actor must report an event to an authority'), source('reconciled').
:- pred must_submit_annual_report/2, gloss('actor must submit annual report on use to recipient'), source('reconciled').
:- pred national_measure/2, gloss('Member State has taken measures regarding system presenting risk'), source('reconciled').
:- pred non_compliant/1, gloss('AI system does not comply with requirements and obligations'), source('reconciled').
:- pred permitted_extension/2, gloss('Permitted extension of certificate validity'), source('reconciled').
:- pred permitted_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider of general-purpose AI model'), source('reconciled').
:- pred permitted_testing_in_real_world_conditions/2, gloss('entity is permitted to conduct real-world testing of a system outside sandboxes'), source('reconciled').
:- pred provider_of_general_purpose_ai_model/1, gloss('entity is a provider of a general-purpose AI model'), source('reconciled').
:- pred system_covered_by_annex_1/1, gloss('AI system covered by Annex I'), source('reconciled').
:- pred technical_documentation/1, gloss('technical documentation of an AI system'), source('reconciled').
:- pred union_institution_body_office_agency/1, gloss('Union institution, body, office or agency'), source('reconciled').

% --- merged away: do not use the first name, use the second ---
alias(takes_adequate_corrective_action/2, adequate_corrective_action_taken/2).
alias(listed_in_annex_iii_point_2/1, annex_3_point_2_system/1).
alias(authorised_representative_of_provider/2, authorised_representative_of/2).
alias(annex_3_point_1_a_system/1, biometrics_annex_3_1_a/1).
alias(causal_link_suspected_or_established/2, causal_link_established_or_likely/2).
alias(european_commission/1, commission/1).
alias(compliant_with_chapter_3_section_2/1, complies_with_chapter_3_section_2/1).
alias(concerning_ai_safety_component/1, concerns_ai_safety_component/1).
alias(logs_under_control/2, control_of_logs/2).
alias(covered_by_union_harmonisation_legislation_annex_i/1, covers_union_harmonisation_legislation_annex_i/1).
alias(deemed_justified_derogation/1, deemed_justified/1).
alias(finding_formal_non_compliance/2, formal_non_compliance/2).
alias(competent_market_surveillance_authority/2, market_surveillance_authority_for/2).
alias(must_comply_with/2, must_comply/2).
alias(must_decide_justification/2, must_decide/2).
alias(must_submit_report/2, must_report/2).
alias(must_publish_annual_report/2, must_submit_annual_report/2).
alias(national_measure_taken/2, national_measure/2).
alias(non_compliant_with_requirements/1, non_compliant/1).
alias(permitted_extension_period/2, permitted_extension/2).
alias(permitted_initiate_dialogue/2, permitted_initiate_structured_dialogue/2).
alias(authorising_testing_in_real_world_conditions/2, permitted_testing_in_real_world_conditions/2).
alias(general_purpose_ai_model_provider/1, provider_of_general_purpose_ai_model/1).
alias(covered_by_annex_1_legislation/1, system_covered_by_annex_1/1).
alias(covered_by_annex_one_legislation/1, system_covered_by_annex_1/1).
alias(required_technical_documentation/1, technical_documentation/1).
alias(union_institution_body_office_or_agency/1, union_institution_body_office_agency/1).
