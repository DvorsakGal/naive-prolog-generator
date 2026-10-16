% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b6a3156c02da3933f72e473b8723df4057c8f1703d91c758b573d4d945163de8
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred must_inform/2, gloss('who is obliged, what about'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose/2, gloss('who is obliged, what about'), source('celex:32024R1689/oj#art_50').
:- pred must_mark_output/2, gloss('who is obliged, what about'), source('celex:32024R1689/oj#art_50').
:- pred exempt_from_informing/2, gloss('who is exempt, from what obligation'), source('celex:32024R1689/oj#art_50').
:- pred exempt_from_marking/2, gloss('who is exempt, from what obligation'), source('celex:32024R1689/oj#art_50').
:- pred exempt_from_disclosure/2, gloss('who is exempt, from what obligation'), source('celex:32024R1689/oj#art_50').
:- pred interacts_directly_with_natural_persons/1, gloss('AI system intended to interact directly with natural persons'), source('celex:32024R1689/oj#art_50').
:- pred obvious_interaction/1, gloss('interaction with AI is obvious to a reasonably well-informed, observant and circumspect natural person'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content/1, gloss('AI system generating synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred output_marked_machine_readable/1, gloss('output marked in machine-readable format as artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred technical_solution_effective/1, gloss('technical solution for marking is effective, interoperable, robust and reliable'), source('celex:32024R1689/oj#art_50').
:- pred assistive_function_standard_editing/1, gloss('AI system performs assistive function for standard editing'), source('celex:32024R1689/oj#art_50').
:- pred substantially_alters_input/1, gloss('AI system substantially alters input data or semantics'), source('celex:32024R1689/oj#art_50').
:- pred authorised_by_law_for_law_enforcement/1, gloss('use authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred available_for_public_to_report_crime/1, gloss('AI system available for the public to report a criminal offence'), source('celex:32024R1689/oj#art_50').
:- pred exposed_to_system/2, gloss('natural person exposed to an AI system'), source('celex:32024R1689/oj#art_50').
:- pred processes_personal_data_in_accordance_with_gdpr/1, gloss('personal data processed in accordance with GDPR, Regulation 2018/1725 and Directive 2016/680'), source('celex:32024R1689/oj#art_50').
:- pred generates_or_manipulates_deep_fake/1, gloss('AI system generates or manipulates image, audio or video content constituting a deep fake'), source('celex:32024R1689/oj#art_50').
:- pred generates_or_manipulates_text_public_interest/1, gloss('AI system generates or manipulates text published to inform public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred content_artistic_creative_satirical_fictional/1, gloss('content forms part of evidently artistic, creative, satirical, fictional or analogous work or programme'), source('celex:32024R1689/oj#art_50').
:- pred human_review_or_editorial_control/1, gloss('AI-generated content has undergone human review or editorial control with editorial responsibility'), source('celex:32024R1689/oj#art_50').
:- pred information_provided_clear_distinguishable/1, gloss('information provided in clear and distinguishable manner'), source('celex:32024R1689/oj#art_50').
:- pred information_provided_at_first_interaction/1, gloss('information provided at latest at time of first interaction or exposure'), source('celex:32024R1689/oj#art_50').
:- pred information_conforms_accessibility_requirements/1, gloss('information conforms to applicable accessibility requirements'), source('celex:32024R1689/oj#art_50').
:- pred limited_disclosure_artistic_work/1, gloss('disclosure limited to existence of generated content without hampering display or enjoyment'), source('celex:32024R1689/oj#art_50').

% Article 50(1): Providers must inform natural persons they are interacting with an AI system
must_inform(Provider, interacting_with_ai_system(S)) :-
    provider(Provider),
    interacts_directly_with_natural_persons(S),
    \+ obvious_interaction(S),
    \+ exempt_from_informing(Provider, interacting_with_ai_system(S)).

% Exception: obvious from point of view of reasonably well-informed, observant and circumspect natural person
exempt_from_informing(_Provider, interacting_with_ai_system(S)) :-
    obvious_interaction(S).

% Exception: AI systems authorised by law for law enforcement, unless available for public to report crime
exempt_from_informing(_Provider, interacting_with_ai_system(S)) :-
    authorised_by_law_for_law_enforcement(S),
    \+ available_for_public_to_report_crime(S).

% Article 50(2): Providers must mark outputs of synthetic content systems
must_mark_output(Provider, synthetic_content_output(S)) :-
    provider(Provider),
    generates_synthetic_content(S),
    \+ exempt_from_marking(Provider, synthetic_content_output(S)).

% Technical solutions must be effective, interoperable, robust and reliable
must_mark_output(Provider, synthetic_content_output(S)) :-
    provider(Provider),
    generates_synthetic_content(S),
    output_marked_machine_readable(S),
    technical_solution_effective(S).

% Exception: assistive function for standard editing or does not substantially alter input
exempt_from_marking(_Provider, synthetic_content_output(S)) :-
    assistive_function_standard_editing(S).

exempt_from_marking(_Provider, synthetic_content_output(S)) :-
    \+ substantially_alters_input(S).

% Exception: authorised by law for law enforcement
exempt_from_marking(_Provider, synthetic_content_output(S)) :-
    authorised_by_law_for_law_enforcement(S).

% Article 50(3): Deployers must inform natural persons exposed to emotion recognition or biometric categorisation
must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    emotion_recognition_system(S),
    exposed_to_system(_, S),
    \+ exempt_from_informing(Deployer, operation_of_system(S)).

must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    biometric_categorisation_system(S),
    exposed_to_system(_, S),
    \+ exempt_from_informing(Deployer, operation_of_system(S)).

% Deployers must process personal data in accordance with GDPR etc.
must_inform(Deployer, personal_data_processing(S)) :-
    deployer(Deployer),
    emotion_recognition_system(S),
    processes_personal_data_in_accordance_with_gdpr(S).

must_inform(Deployer, personal_data_processing(S)) :-
    deployer(Deployer),
    biometric_categorisation_system(S),
    processes_personal_data_in_accordance_with_gdpr(S).

% Exception: permitted by law for law enforcement with safeguards
exempt_from_informing(_Deployer, operation_of_system(S)) :-
    biometric_categorisation_system(S),
    authorised_by_law_for_law_enforcement(S).

exempt_from_informing(_Deployer, operation_of_system(S)) :-
    emotion_recognition_system(S),
    authorised_by_law_for_law_enforcement(S).

% Article 50(4): Deployers must disclose deep fake content
must_disclose(Deployer, deep_fake_content(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    \+ exempt_from_disclosure(Deployer, deep_fake_content(S)).

% Exception: authorised by law for law enforcement
exempt_from_disclosure(_Deployer, deep_fake_content(S)) :-
    authorised_by_law_for_law_enforcement(S).

% Limited disclosure for artistic, creative, satirical, fictional works
must_disclose(Deployer, deep_fake_content(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    content_artistic_creative_satirical_fictional(S),
    limited_disclosure_artistic_work(S).

% Deployers must disclose AI-generated text on matters of public interest
must_disclose(Deployer, public_interest_text(S)) :-
    deployer(Deployer),
    generates_or_manipulates_text_public_interest(S),
    \+ exempt_from_disclosure(Deployer, public_interest_text(S)).

% Exception: authorised by law for law enforcement
exempt_from_disclosure(_Deployer, public_interest_text(S)) :-
    authorised_by_law_for_law_enforcement(S).

% Exception: human review or editorial control with editorial responsibility
exempt_from_disclosure(_Deployer, public_interest_text(S)) :-
    human_review_or_editorial_control(S).

% Article 50(5): Information must be provided in clear and distinguishable manner at first interaction
must_inform(Provider, information_timing(S)) :-
    provider(Provider),
    interacts_directly_with_natural_persons(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).

must_mark_output(Provider, information_timing(S)) :-
    provider(Provider),
    generates_synthetic_content(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).

must_inform(Deployer, information_timing(S)) :-
    deployer(Deployer),
    emotion_recognition_system(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).

must_inform(Deployer, information_timing(S)) :-
    deployer(Deployer),
    biometric_categorisation_system(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).

must_disclose(Deployer, information_timing(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).

must_disclose(Deployer, information_timing(S)) :-
    deployer(Deployer),
    generates_or_manipulates_text_public_interest(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).

% Article 50(7): AI Office shall encourage codes of practice; Commission may adopt implementing acts
must_inform(ai_office, codes_of_practice_union_level).

% Provenance
provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark_output/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_from_informing/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_from_marking/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_from_disclosure/2, 'celex:32024R1689/oj#art_50').
provenance(interacts_directly_with_natural_persons/1, 'celex:32024R1689/oj#art_50').
provenance(obvious_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(output_marked_machine_readable/1, 'celex:32024R1689/oj#art_50').
provenance(technical_solution_effective/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_function_standard_editing/1, 'celex:32024R1689/oj#art_50').
provenance(substantially_alters_input/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_by_law_for_law_enforcement/1, 'celex:32024R1689/oj#art_50').
provenance(available_for_public_to_report_crime/1, 'celex:32024R1689/oj#art_50').
provenance(exposed_to_system/2, 'celex:32024R1689/oj#art_50').
provenance(processes_personal_data_in_accordance_with_gdpr/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_text_public_interest/1, 'celex:32024R1689/oj#art_50').
provenance(content_artistic_creative_satirical_fictional/1, 'celex:32024R1689/oj#art_50').
provenance(human_review_or_editorial_control/1, 'celex:32024R1689/oj#art_50').
provenance(information_provided_clear_distinguishable/1, 'celex:32024R1689/oj#art_50').
provenance(information_provided_at_first_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(information_conforms_accessibility_requirements/1, 'celex:32024R1689/oj#art_50').
provenance(limited_disclosure_artistic_work/1, 'celex:32024R1689/oj#art_50').

% References
references('celex:32024R1689/oj#art_50', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_98/par_2').
