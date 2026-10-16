% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4622dabef74b5c06f5b3a54e03cb5cfaf38ed6f627d101758045dce89aa5fd0b
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred interacts_directly_with_natural_persons/1, gloss('AI system intended to interact directly with natural persons'), source('celex:32024R1689/oj#art_50').
:- pred interaction_obviously_ai/1, gloss('interaction is obvious from the point of view of a reasonably well-informed, observant and circumspect natural person'), source('celex:32024R1689/oj#art_50').
:- pred authorised_by_law_for_criminal_investigation/1, gloss('AI system authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred public_reporting_of_criminal_offence/1, gloss('AI system available for the public to report a criminal offence'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content/1, gloss('AI system generating synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred standard_editing_assistive_function/1, gloss('AI system performs an assistive function for standard editing or does not substantially alter input data or semantics'), source('celex:32024R1689/oj#art_50').
:- pred generates_or_manipulates_deep_fake/1, gloss('AI system generates or manipulates image, audio or video content constituting a deep fake'), source('celex:32024R1689/oj#art_50').
:- pred generates_or_manipulates_public_interest_text/1, gloss('AI system generates or manipulates text published with the purpose of informing the public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred artistic_or_satirical_work/1, gloss('content forms part of an evidently artistic, creative, satirical, fictional or analogous work or programme'), source('celex:32024R1689/oj#art_50').
:- pred editorial_responsibility_held/1, gloss('AI-generated content has undergone human review or editorial control with editorial responsibility held'), source('celex:32024R1689/oj#art_50').
:- pred must_ensure/2, gloss('actor must ensure a condition or requirement regarding an object'), source('celex:32024R1689/oj#art_50').
:- pred must_inform/2, gloss('actor must inform natural persons regarding a system or content'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose/2, gloss('actor must disclose artificial generation or manipulation of content'), source('celex:32024R1689/oj#art_50').
:- pred exempt_transparency_interaction/1, gloss('AI system exempt from interaction transparency obligation'), source('celex:32024R1689/oj#art_50').
:- pred exempt_synthetic_marking/1, gloss('AI system exempt from synthetic marking obligation'), source('celex:32024R1689/oj#art_50').
:- pred exempt_biometric_transparency/1, gloss('AI system exempt from biometric transparency obligation'), source('celex:32024R1689/oj#art_50').
:- pred exempt_deep_fake_disclosure/1, gloss('AI system exempt from deep fake disclosure obligation'), source('celex:32024R1689/oj#art_50').
:- pred exempt_text_disclosure/1, gloss('AI system exempt from public interest text disclosure obligation'), source('celex:32024R1689/oj#art_50').
:- pred must_encourage/2, gloss('actor must encourage an initiative'), source('celex:32024R1689/oj#art_50').

% Paragraph 1: Direct interaction with natural persons
exempt_transparency_interaction(S) :-
    interaction_obviously_ai(S).
exempt_transparency_interaction(S) :-
    authorised_by_law_for_criminal_investigation(S),
    \+ public_reporting_of_criminal_offence(S).

must_ensure(Provider, designed_to_inform_interaction(S)) :-
    provider(Provider),
    interacts_directly_with_natural_persons(S),
    \+ exempt_transparency_interaction(S).

% Paragraph 2: Generation of synthetic content
exempt_synthetic_marking(S) :-
    standard_editing_assistive_function(S).
exempt_synthetic_marking(S) :-
    authorised_by_law_for_criminal_investigation(S).

must_ensure(Provider, machine_readable_marking(S)) :-
    provider(Provider),
    generates_synthetic_content(S),
    \+ exempt_synthetic_marking(S).

% Paragraph 3: Emotion recognition and biometric categorisation
exempt_biometric_transparency(S) :-
    authorised_by_law_for_criminal_investigation(S).

must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    emotion_recognition_system(S),
    \+ exempt_biometric_transparency(S).

must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    biometric_categorisation_system(S),
    \+ exempt_biometric_transparency(S).

% Paragraph 4: Deep fakes and public interest text
exempt_deep_fake_disclosure(S) :-
    authorised_by_law_for_criminal_investigation(S).

must_disclose(Deployer, deep_fake_content(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    \+ artistic_or_satirical_work(S),
    \+ exempt_deep_fake_disclosure(S).

must_disclose(Deployer, existence_of_deep_fake_content(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    artistic_or_satirical_work(S),
    \+ exempt_deep_fake_disclosure(S).

exempt_text_disclosure(S) :-
    authorised_by_law_for_criminal_investigation(S).
exempt_text_disclosure(S) :-
    editorial_responsibility_held(S).

must_disclose(Deployer, artificially_generated_text(S)) :-
    deployer(Deployer),
    generates_or_manipulates_public_interest_text(S),
    \+ exempt_text_disclosure(S).

% Paragraph 7: AI Office role regarding codes of practice
must_encourage(ai_office, drawing_up_codes_of_practice(detection_and_labelling)).

% Provenance
provenance(interacts_directly_with_natural_persons/1, 'celex:32024R1689/oj#art_50').
provenance(interaction_obviously_ai/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_by_law_for_criminal_investigation/1, 'celex:32024R1689/oj#art_50').
provenance(public_reporting_of_criminal_offence/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(standard_editing_assistive_function/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_public_interest_text/1, 'celex:32024R1689/oj#art_50').
provenance(artistic_or_satirical_work/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility_held/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_transparency_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_synthetic_marking/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_biometric_transparency/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_deep_fake_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_text_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_50').

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
