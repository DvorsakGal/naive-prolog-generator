% unit       : celex:32024R1689/oj#art_50
% title      : Transparency obligations for providers and deployers of certain AI systems
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : gpt-oss:120b-cloud
% prompt sha : 66683d08a0f5e65956d81773cad05ef0be1b9a1c153b7865aa0c9073187c54e0
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred interacts_directly_with_natural_persons/1, gloss('AI system designed to interact directly with natural persons'), source('celex:32024R1689/oj#art_50').
:- pred authorised_for_criminal_offence/1, gloss('AI system authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred permitted_exemption_from_inform/2, gloss('exemption from the obligation to inform natural persons of AI interaction'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content/2, gloss('AI system generates synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred permitted_exemption_from_marking/2, gloss('exemption from the obligation to mark synthetic content'), source('celex:32024R1689/oj#art_50').
:- pred permitted_exemption_from_technical_solution/2, gloss('exemption from the obligation to ensure effective technical solutions for synthetic content'), source('celex:32024R1689/oj#art_50').
:- pred permitted_exemption_from_inform_deployer/2, gloss('exemption from the obligation of deployers to inform natural persons of operation of emotion or biometric systems'), source('celex:32024R1689/oj#art_50').
:- pred system_permitted_for_criminal_offence/1, gloss('AI system permitted by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred permitted_exemption_from_disclosure_deep_fake/2, gloss('exemption from the obligation to disclose deep‑fake content'), source('celex:32024R1689/oj#art_50').
:- pred artistic_work/1, gloss('content forms part of an artistic, creative, satirical, fictional or analogous work'), source('celex:32024R1689/oj#art_50').
:- pred generates_text_content/1, gloss('AI system generates or manipulates text content'), source('celex:32024R1689/oj#art_50').
:- pred public_interest_purpose/1, gloss('text is published with the purpose of informing the public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred permitted_exemption_from_disclosure_text/2, gloss('exemption from the obligation to disclose AI‑generated text'), source('celex:32024R1689/oj#art_50').
:- pred required_inform_natural_persons_of_ai_interaction/2, gloss('obligation for providers to inform natural persons they are interacting with an AI system'), source('celex:32024R1689/oj#art_50').
:- pred required_mark_output/2, gloss('obligation for providers to mark synthetic AI‑generated content in a machine‑readable way'), source('celex:32024R1689/oj#art_50').
:- pred required_technical_solution_effective/2, gloss('obligation for providers to ensure technical solutions are effective, interoperable, robust and reliable'), source('celex:32024R1689/oj#art_50').
:- pred required_inform_deployer/2, gloss('obligation for deployers of emotion or biometric categorisation systems to inform natural persons of the operation'), source('celex:32024R1689/oj#art_50').
:- pred required_process_personal_data_accordingly/2, gloss('obligation for deployers to process personal data in accordance with GDPR and related directives'), source('celex:32024R1689/oj#art_50').
:- pred required_disclose_deep_fake/2, gloss('obligation for deployers of deep‑fake AI systems to disclose artificial generation or manipulation'), source('celex:32024R1689/oj#art_50').
:- pred required_disclose_generated_text/2, gloss('obligation for deployers of AI‑generated text of public‑interest to disclose artificial generation or manipulation'), source('celex:32024R1689/oj#art_50').
:- pred required_provide_information_at_latest_first_interaction/2, gloss('obligation to provide transparency information in a clear, distinguishable and accessible manner at the latest at first interaction'), source('celex:32024R1689/oj#art_50').
:- pred conforms_to_accessibility_requirements/1, gloss('information meets applicable accessibility requirements'), source('celex:32024R1689/oj#art_50').
:- pred must_encourage_ai_office_codes_of_practice/0, gloss('AI Office shall encourage and facilitate drawing up codes of practice'), source('celex:32024R1689/oj#art_50').

% Paragraph 1 – providers must inform natural persons of AI interaction
required_inform_natural_persons_of_ai_interaction(Provider, System) :-
    provider(Provider),
    ai_system(System),
    interacts_directly_with_natural_persons(System),
    \+ permitted_exemption_from_inform(Provider, System).

permitted_exemption_from_inform(Provider, System) :-
    provider(Provider),
    ai_system(System),
    authorised_for_criminal_offence(System).

% Paragraph 2 – providers must mark synthetic content and ensure effective technical solutions
required_mark_output(Provider, System) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Type),
    \+ permitted_exemption_from_marking(Provider, System).

permitted_exemption_from_marking(Provider, System) :-
    provider(Provider),
    ai_system(System),
    (assistive_editing_function(System) ; \+ substantially_alters_input_data(System) ; authorised_for_criminal_offence(System)).

required_technical_solution_effective(Provider, System) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Type),
    \+ permitted_exemption_from_technical_solution(Provider, System).

permitted_exemption_from_technical_solution(Provider, System) :-
    provider(Provider),
    ai_system(System),
    (assistive_editing_function(System) ; \+ substantially_alters_input_data(System) ; authorised_for_criminal_offence(System)).

% Paragraph 3 – deployers of emotion recognition or biometric categorisation systems
required_inform_deployer(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    (emotion_recognition_system(System) ; biometric_categorisation_system(System)),
    \+ permitted_exemption_from_inform_deployer(Deployer, System).

permitted_exemption_from_inform_deployer(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    system_permitted_for_criminal_offence(System).

required_process_personal_data_accordingly(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    (emotion_recognition_system(System) ; biometric_categorisation_system(System)),
    % compliance with GDPR and related directives is assumed by this predicate
    true.

% Paragraph 4 – deep‑fake content disclosure
required_disclose_deep_fake(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    deep_fake(System),
    \+ permitted_exemption_from_disclosure_deep_fake(Deployer, System).

permitted_exemption_from_disclosure_deep_fake(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    authorised_for_criminal_offence(System).

% Limited disclosure for artistic works (still a permission, not a prohibition)
permitted_limited_disclosure_for_artistic(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    deep_fake(System),
    artistic_work(System).

% Paragraph 4 – AI‑generated text of public interest disclosure
required_disclose_generated_text(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    generates_text_content(System),
    public_interest_purpose(System),
    \+ permitted_exemption_from_disclosure_text(Deployer, System).

permitted_exemption_from_disclosure_text(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    (authorised_for_criminal_offence(System) ;
     (human_review(System), editorial_responsibility(System))).

% Paragraph 5 – provision of transparency information at first interaction, conforming to accessibility
required_provide_information_at_latest_first_interaction(Actor, System) :-
    (provider(Actor) ; deployer(Actor)),
    ai_system(System),
    (   required_inform_natural_persons_of_ai_interaction(Actor, System)
    ;   required_mark_output(Actor, System)
    ;   required_technical_solution_effective(Actor, System)
    ;   required_inform_deployer(Actor, System)
    ;   required_disclose_deep_fake(Actor, System)
    ;   required_disclose_generated_text(Actor, System)
    ),
    conforms_to_accessibility_requirements(Actor).

% Paragraph 7 – AI Office duty
must_encourage_ai_office_codes_of_practice :-
    ai_office(_).

% Provenance
provenance(required_inform_natural_persons_of_ai_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_inform/2, 'celex:32024R1689/oj#art_50').
provenance(required_mark_output/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_marking/2, 'celex:32024R1689/oj#art_50').
provenance(required_technical_solution_effective/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_technical_solution/2, 'celex:32024R1689/oj#art_50').
provenance(required_inform_deployer/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_inform_deployer/2, 'celex:32024R1689/oj#art_50').
provenance(required_process_personal_data_accordingly/2, 'celex:32024R1689/oj#art_50').
provenance(required_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_disclosure_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_limited_disclosure_for_artistic/2, 'celex:32024R1689/oj#art_50').
provenance(required_disclose_generated_text/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_disclosure_text/2, 'celex:32024R1689/oj#art_50').
provenance(required_provide_information_at_latest_first_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(conforms_to_accessibility_requirements/1, 'celex:32024R1689/oj#art_50').
provenance(must_encourage_ai_office_codes_of_practice/0, 'celex:32024R1689/oj#art_50').

% References
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
