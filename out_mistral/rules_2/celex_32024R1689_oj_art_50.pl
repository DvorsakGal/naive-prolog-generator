% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 0286791cdb95328417140ff9b5789c4a8e84112bb99c605e0d9161ed91af1200
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred must_inform_natural_person_interacting_with_ai/2, gloss('provider must inform natural person they are interacting with an AI system'), source('celex:32024R1689/oj#art_50').
:- pred obvious_interaction_with_ai/1, gloss('interaction with AI system is obvious from point of view of reasonably well-informed, observant and circumspect natural person'), source('celex:32024R1689/oj#art_50').
:- pred ai_system_authorised_by_law_for_criminal_offences/1, gloss('AI system authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred available_for_public_to_report_criminal_offence/1, gloss('AI system available for the public to report a criminal offence'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content/1, gloss('AI system generates synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred output_marked_machine_readable/1, gloss('output of AI system is marked in machine-readable format and detectable as artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred technical_solution_effective_interoperable_robust_reliable/1, gloss('technical solution is effective, interoperable, robust and reliable as far as technically feasible'), source('celex:32024R1689/oj#art_50').
:- pred assistive_function_standard_editing/1, gloss('AI system performs an assistive function for standard editing'), source('celex:32024R1689/oj#art_50').
:- pred does_not_substantially_alter_input/1, gloss('AI system does not substantially alter the input data provided by deployer or the semantics thereof'), source('celex:32024R1689/oj#art_50').
:- pred must_inform_of_emotion_recognition_or_biometric_categorisation/2, gloss('deployer must inform natural persons exposed of operation of emotion recognition or biometric categorisation system'), source('celex:32024R1689/oj#art_50').
:- pred processes_personal_data_in_accordance_with_gdpr/1, gloss('personal data processed in accordance with GDPR, LED and Data Protection Directive as applicable'), source('celex:32024R1689/oj#art_50').
:- pred biometric_categorisation_or_emotion_recognition_permitted_by_law/1, gloss('biometric categorisation or emotion recognition AI system permitted by law to detect, prevent or investigate criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred generates_or_manipulates_deep_fake_content/1, gloss('AI system generates or manipulates image, audio or video content constituting a deep fake'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose_deep_fake/2, gloss('deployer must disclose that content has been artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred deep_fake_use_authorised_by_law/1, gloss('use of deep fake AI system authorised by law to detect, prevent, investigate or prosecute criminal offence'), source('celex:32024R1689/oj#art_50').
:- pred content_forms_part_of_artistic_work/1, gloss('content forms part of an evidently artistic, creative, satirical, fictional or analogous work or programme'), source('celex:32024R1689/oj#art_50').
:- pred generates_or_manipulates_text_for_public_interest/1, gloss('AI system generates or manipulates text published with purpose of informing public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose_artificially_generated_text/2, gloss('deployer must disclose that text has been artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred text_use_authorised_by_law/1, gloss('use of AI system for text generation authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred text_underwent_human_review_editorial_control/1, gloss('AI-generated content has undergone a process of human review or editorial control'), source('celex:32024R1689/oj#art_50').
:- pred editorial_responsibility_held/1, gloss('natural or legal person holds editorial responsibility for the publication of the content'), source('celex:32024R1689/oj#art_50').
:- pred information_provided_clear_distinguishable_manner/1, gloss('information provided to natural persons in a clear and distinguishable manner'), source('celex:32024R1689/oj#art_50').
:- pred information_provided_at_first_interaction_or_exposure/1, gloss('information provided at latest at time of first interaction or exposure'), source('celex:32024R1689/oj#art_50').
:- pred information_conforms_to_accessibility_requirements/1, gloss('information conforms to applicable accessibility requirements'), source('celex:32024R1689/oj#art_50').
:- pred transparency_obligations_without_prejudice_to_chapter_3/0, gloss('transparency obligations in Article 50 do not affect requirements and obligations in Chapter 3'), source('celex:32024R1689/oj#art_50').
:- pred transparency_obligations_without_prejudice_to_other_law/0, gloss('transparency obligations in Article 50 are without prejudice to other transparency obligations in Union or national law'), source('celex:32024R1689/oj#art_50').
:- pred ai_office_shall_encourage_codes_of_practice/0, gloss('AI Office shall encourage and facilitate drawing up of codes of practice at Union level for detection and labelling of artificially generated or manipulated content'), source('celex:32024R1689/oj#art_50').
:- pred commission_may_adopt_implementing_acts_approving_codes/0, gloss('Commission may adopt implementing acts to approve codes of practice'), source('celex:32024R1689/oj#art_50').
:- pred commission_may_adopt_common_rules_if_code_inadequate/0, gloss('Commission may adopt implementing act specifying common rules if code is not adequate'), source('celex:32024R1689/oj#art_50').

must_inform_natural_person_interacting_with_ai(P, S) :-
    provider(P),
    ai_system(S),
    intended_to_interact_directly_with_natural_persons(S),
    \+ obvious_interaction_with_ai(S),
    \+ exempt_from_informing_ai_interaction(S).

intended_to_interact_directly_with_natural_persons(S) :-
    ai_system(S),
    interacts_directly_with_natural_persons(S).

exempt_from_informing_ai_interaction(S) :-
    ai_system_authorised_by_law_for_criminal_offences(S),
    \+ available_for_public_to_report_criminal_offence(S).

must_mark_synthetic_content_output(P, S) :-
    provider(P),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_from_marking_synthetic_content(S).

exempt_from_marking_synthetic_content(S) :-
    assistive_function_standard_editing(S).
exempt_from_marking_synthetic_content(S) :-
    does_not_substantially_alter_input(S).
exempt_from_marking_synthetic_content(S) :-
    ai_system_authorised_by_law_for_criminal_offences(S).

output_marked_machine_readable(S) :-
    generates_synthetic_content(S),
    marked_in_machine_readable_format(S),
    detectable_as_artificially_generated_or_manipulated(S).

technical_solution_effective_interoperable_robust_reliable(S) :-
    generates_synthetic_content(S),
    solution_effective(S),
    solution_interoperable(S),
    solution_robust(S),
    solution_reliable(S),
    technically_feasible(S).

must_inform_of_emotion_recognition_or_biometric_categorisation(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    \+ exempt_from_informing_emotion_recognition(S).

must_inform_of_emotion_recognition_or_biometric_categorisation(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    \+ exempt_from_informing_biometric_categorisation(S).

exempt_from_informing_emotion_recognition(S) :-
    biometric_categorisation_or_emotion_recognition_permitted_by_law(S).

exempt_from_informing_biometric_categorisation(S) :-
    biometric_categorisation_or_emotion_recognition_permitted_by_law(S).

processes_personal_data_in_accordance_with_gdpr(S) :-
    emotion_recognition_system(S),
    personal_data_processed_in_accordance_with_regulation_2016_679(S).
processes_personal_data_in_accordance_with_gdpr(S) :-
    biometric_categorisation_system(S),
    personal_data_processed_in_accordance_with_regulation_2016_679(S).

must_disclose_deep_fake(D, S) :-
    deployer(D),
    generates_or_manipulates_deep_fake_content(S),
    \+ deep_fake_use_authorised_by_law(S),
    \+ content_forms_part_of_artistic_work(S).

must_disclose_deep_fake(D, S) :-
    deployer(D),
    generates_or_manipulates_deep_fake_content(S),
    \+ deep_fake_use_authorised_by_law(S),
    content_forms_part_of_artistic_work(S),
    disclose_existence_in_appropriate_manner(S).

must_disclose_artificially_generated_text(D, S) :-
    deployer(D),
    generates_or_manipulates_text_for_public_interest(S),
    \+ text_use_authorised_by_law(S),
    \+ text_underwent_human_review_editorial_control(S).

must_disclose_artificially_generated_text(D, S) :-
    deployer(D),
    generates_or_manipulates_text_for_public_interest(S),
    \+ text_use_authorised_by_law(S),
    text_underwent_human_review_editorial_control(S),
    editorial_responsibility_held(S).

information_provided_clear_distinguishable_manner(S) :-
    ai_system(S),
    information_provided_to_natural_persons(S),
    clear_and_distinguishable_manner(S).

information_provided_at_first_interaction_or_exposure(S) :-
    ai_system(S),
    information_provided_to_natural_persons(S),
    at_latest_at_time_of_first_interaction_or_exposure(S).

information_conforms_to_accessibility_requirements(S) :-
    ai_system(S),
    information_provided_to_natural_persons(S),
    conforms_to_applicable_accessibility_requirements(S).

transparency_obligations_without_prejudice_to_chapter_3.

transparency_obligations_without_prejudice_to_other_law.

ai_office_shall_encourage_codes_of_practice :-
    ai_office(O),
    encourage_and_facilitate_drawing_up_codes_of_practice(O).

commission_may_adopt_implementing_acts_approving_codes.

commission_may_adopt_common_rules_if_code_inadequate.

provenance(must_inform_natural_person_interacting_with_ai/2, 'celex:32024R1689/oj#art_50').
provenance(obvious_interaction_with_ai/1, 'celex:32024R1689/oj#art_50').
provenance(ai_system_authorised_by_law_for_criminal_offences/1, 'celex:32024R1689/oj#art_50').
provenance(available_for_public_to_report_criminal_offence/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(output_marked_machine_readable/1, 'celex:32024R1689/oj#art_50').
provenance(technical_solution_effective_interoperable_robust_reliable/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_function_standard_editing/1, 'celex:32024R1689/oj#art_50').
provenance(does_not_substantially_alter_input/1, 'celex:32024R1689/oj#art_50').
provenance(must_inform_of_emotion_recognition_or_biometric_categorisation/2, 'celex:32024R1689/oj#art_50').
provenance(processes_personal_data_in_accordance_with_gdpr/1, 'celex:32024R1689/oj#art_50').
provenance(biometric_categorisation_or_emotion_recognition_permitted_by_law/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_deep_fake_content/1, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(deep_fake_use_authorised_by_law/1, 'celex:32024R1689/oj#art_50').
provenance(content_forms_part_of_artistic_work/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_text_for_public_interest/1, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_artificially_generated_text/2, 'celex:32024R1689/oj#art_50').
provenance(text_use_authorised_by_law/1, 'celex:32024R1689/oj#art_50').
provenance(text_underwent_human_review_editorial_control/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility_held/1, 'celex:32024R1689/oj#art_50').
provenance(information_provided_clear_distinguishable_manner/1, 'celex:32024R1689/oj#art_50').
provenance(information_provided_at_first_interaction_or_exposure/1, 'celex:32024R1689/oj#art_50').
provenance(information_conforms_to_accessibility_requirements/1, 'celex:32024R1689/oj#art_50').
provenance(transparency_obligations_without_prejudice_to_chapter_3/0, 'celex:32024R1689/oj#art_50').
provenance(transparency_obligations_without_prejudice_to_other_law/0, 'celex:32024R1689/oj#art_50').
provenance(ai_office_shall_encourage_codes_of_practice/0, 'celex:32024R1689/oj#art_50').
provenance(commission_may_adopt_implementing_acts_approving_codes/0, 'celex:32024R1689/oj#art_50').
provenance(commission_may_adopt_common_rules_if_code_inadequate/0, 'celex:32024R1689/oj#art_50').

references('celex:32024R1689/oj#art_50', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_98/par_2').
