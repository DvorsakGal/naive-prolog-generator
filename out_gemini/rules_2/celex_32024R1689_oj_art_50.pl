% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 39ba2f847fbc0d110b8851f5b356c198ee5b1f5655e1b288314705805426dbbf
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred interacts_directly_with_natural_persons/1, gloss('AI system is intended to interact directly with natural persons'), source('celex:32024R1689/oj#art_50').
:- pred interaction_obviously_ai/1, gloss('interaction with AI system is obvious to a reasonably observant person'), source('celex:32024R1689/oj#art_50').
:- pred authorised_by_law_for_criminal_investigation/1, gloss('system is authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred available_to_public_to_report_crime/1, gloss('system is available for the public to report a criminal offence'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content/1, gloss('AI system generates synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred assistive_function_for_standard_editing/1, gloss('AI system performs an assistive function for standard editing'), source('celex:32024R1689/oj#art_50').
:- pred does_not_substantially_alter_input_data/1, gloss('AI system does not substantially alter input data or semantics'), source('celex:32024R1689/oj#art_50').
:- pred generates_or_manipulates_deep_fake/1, gloss('AI system generates or manipulates image, audio or video content constituting a deep fake'), source('celex:32024R1689/oj#art_50').
:- pred artistic_or_creative_work/1, gloss('content forms part of an artistic, creative, satirical or fictional work'), source('celex:32024R1689/oj#art_50').
:- pred publishes_text_for_public_interest_information/1, gloss('system generates or manipulates text published to inform the public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred editorial_responsibility_held/1, gloss('content has undergone human review/editorial control and a person holds editorial responsibility'), source('celex:32024R1689/oj#art_50').
:- pred provider_of/2, gloss('provider developed or placed the AI system'), source('celex:32024R1689/oj#art_50').
:- pred deployer_of/2, gloss('deployer uses the AI system'), source('celex:32024R1689/oj#art_50').
:- pred exempt_transparency_interaction/1, gloss('exemption from AI interaction disclosure obligation'), source('celex:32024R1689/oj#art_50').
:- pred exempt_transparency_marking/1, gloss('exemption from synthetic content marking obligation'), source('celex:32024R1689/oj#art_50').
:- pred exempt_transparency_biometric/1, gloss('exemption from biometric categorisation or emotion recognition notification'), source('celex:32024R1689/oj#art_50').
:- pred exempt_deep_fake_disclosure/1, gloss('exemption from deep fake disclosure obligation'), source('celex:32024R1689/oj#art_50').
:- pred exempt_public_interest_text_disclosure/1, gloss('exemption from public interest text disclosure obligation'), source('celex:32024R1689/oj#art_50').

% Paragraph 1: Direct interaction transparency
exempt_transparency_interaction(S) :-
    interaction_obviously_ai(S).
exempt_transparency_interaction(S) :-
    authorised_by_law_for_criminal_investigation(S),
    \+ available_to_public_to_report_crime(S).

must_comply(Provider, design_and_develop_for_interaction_disclosure(S)) :-
    provider(Provider),
    provider_of(Provider, S),
    ai_system(S),
    interacts_directly_with_natural_persons(S),
    \+ exempt_transparency_interaction(S).

% Paragraph 2: Marking synthetic content
exempt_transparency_marking(S) :-
    assistive_function_for_standard_editing(S).
exempt_transparency_marking(S) :-
    does_not_substantially_alter_input_data(S).
exempt_transparency_marking(S) :-
    authorised_by_law_for_criminal_investigation(S).

must_comply(Provider, mark_detectable_synthetic_content(S)) :-
    provider(Provider),
    provider_of(Provider, S),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_transparency_marking(S).

% Paragraph 3: Biometric categorisation and emotion recognition disclosure
exempt_transparency_biometric(S) :-
    authorised_by_law_for_criminal_investigation(S).

must_comply(Deployer, inform_exposed_natural_persons(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    emotion_recognition_system(S),
    \+ exempt_transparency_biometric(S).

must_comply(Deployer, inform_exposed_natural_persons(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    biometric_categorisation_system(S),
    \+ exempt_transparency_biometric(S).

% Paragraph 4: Deep fake and text disclosure
exempt_deep_fake_disclosure(S) :-
    authorised_by_law_for_criminal_investigation(S).

must_comply(Deployer, disclose_deep_fake(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    ai_system(S),
    generates_or_manipulates_deep_fake(S),
    \+ artistic_or_creative_work(S),
    \+ exempt_deep_fake_disclosure(S).

must_comply(Deployer, disclose_artistic_deep_fake(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    ai_system(S),
    generates_or_manipulates_deep_fake(S),
    artistic_or_creative_work(S),
    \+ exempt_deep_fake_disclosure(S).

exempt_public_interest_text_disclosure(S) :-
    authorised_by_law_for_criminal_investigation(S).
exempt_public_interest_text_disclosure(S) :-
    editorial_responsibility_held(S).

must_comply(Deployer, disclose_public_interest_text(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    ai_system(S),
    publishes_text_for_public_interest_information(S),
    \+ exempt_public_interest_text_disclosure(S).

% Paragraph 7: AI Office role on codes of practice
must_comply(Office, facilitate_codes_of_practice(labelling_and_detection)) :-
    ai_office(Office).

% Provenance facts
provenance(interacts_directly_with_natural_persons/1, 'celex:32024R1689/oj#art_50').
provenance(interaction_obviously_ai/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_by_law_for_criminal_investigation/1, 'celex:32024R1689/oj#art_50').
provenance(available_to_public_to_report_crime/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_function_for_standard_editing/1, 'celex:32024R1689/oj#art_50').
provenance(does_not_substantially_alter_input_data/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(artistic_or_creative_work/1, 'celex:32024R1689/oj#art_50').
provenance(publishes_text_for_public_interest_information/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility_held/1, 'celex:32024R1689/oj#art_50').
provenance(provider_of/2, 'celex:32024R1689/oj#art_50').
provenance(deployer_of/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_transparency_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_transparency_marking/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_transparency_biometric/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_deep_fake_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_public_interest_text_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(must_comply/2, 'celex:32024R1689/oj#art_50').

% References
references('celex:32024R1689/oj#art_50', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_98/par_2').
