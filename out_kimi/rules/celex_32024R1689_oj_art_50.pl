% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 76f7138461f0e6e3d3b90fefa574c97a5d52f9267f445e8e419184aa76260dc6
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred must_ensure_informed_interaction/2, gloss('provider must ensure natural persons are informed they interact with an AI system'), source('celex:32024R1689/oj#art_50').
:- pred must_mark_outputs/2, gloss('provider must ensure outputs are marked as artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred must_inform_of_system_operation/2, gloss('deployer must inform natural persons of emotion recognition or biometric categorisation system operation'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose_deep_fake/2, gloss('deployer must disclose that content is artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose_synthetic_text/2, gloss('deployer must disclose that text is artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred obvious_interaction/1, gloss('interaction with AI system is obvious to reasonably well-informed person'), source('celex:32024R1689/oj#art_50').
:- pred authorised_for_criminal_offences/1, gloss('AI system authorised by law for criminal offence detection, prevention, investigation or prosecution'), source('celex:32024R1689/oj#art_50').
:- pred public_reporting_system/1, gloss('AI system available for public to report criminal offence'), source('celex:32024R1689/oj#art_50').
:- pred assistive_standard_editing/1, gloss('AI system performs assistive function for standard editing'), source('celex:32024R1689/oj#art_50').
:- pred does_not_substantially_alter_input/1, gloss('AI system does not substantially alter input data or semantics'), source('celex:32024R1689/oj#art_50').
:- pred permitted_by_law_emotion_recognition/1, gloss('emotion recognition or biometric categorisation permitted by law for criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred artistic_creative_satirical_fictional_analogous/1, gloss('content forms part of artistic, creative, satirical, fictional or analogous work'), source('celex:32024R1689/oj#art_50').
:- pred human_review_editorial_control/1, gloss('AI-generated content underwent human review or editorial control'), source('celex:32024R1689/oj#art_50').
:- pred editorial_responsibility/2, gloss('person holds editorial responsibility for publication'), source('celex:32024R1689/oj#art_50').
:- pred informing_public_on_matters_of_public_interest/1, gloss('text published with purpose of informing public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred deep_fake_content/1, gloss('content constituting a deep fake'), source('celex:32024R1689/oj#art_50').

% Article 50(1) - Providers must ensure informed interaction
must_ensure_informed_interaction(Provider, S) :-
    provider(Provider),
    ai_system(S),
    intended_interaction_with_natural_persons(S),
    \+ obvious_interaction(S),
    \+ exempt_informed_interaction(S).

exempt_informed_interaction(S) :-
    authorised_for_criminal_offences(S),
    \+ public_reporting_system(S).

% Article 50(2) - Providers must mark synthetic outputs
must_mark_outputs(Provider, S) :-
    provider(Provider),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_mark_outputs(S).

generates_synthetic_content(S) :-
    generates_synthetic_audio(S).
generates_synthetic_content(S) :-
    generates_synthetic_image(S).
generates_synthetic_content(S) :-
    generates_synthetic_video(S).
generates_synthetic_content(S) :-
    generates_synthetic_text(S).

exempt_mark_outputs(S) :-
    assistive_standard_editing(S).
exempt_mark_outputs(S) :-
    does_not_substantially_alter_input(S).
exempt_mark_outputs(S) :-
    authorised_for_criminal_offences(S).

% Article 50(3) - Deployers must inform of emotion recognition or biometric categorisation system operation
must_inform_of_system_operation(Deployer, S) :-
    deployer(Deployer),
    emotion_recognition_or_biometric_categorisation_system(S),
    \+ exempt_inform_of_system_operation(S).

emotion_recognition_or_biometric_categorisation_system(S) :-
    emotion_recognition_system(S).
emotion_recognition_or_biometric_categorisation_system(S) :-
    biometric_categorisation_system(S).

exempt_inform_of_system_operation(S) :-
    permitted_by_law_emotion_recognition(S).

% Article 50(4) first paragraph - Deployers must disclose deep fakes
must_disclose_deep_fake(Deployer, Content) :-
    deployer(Deployer),
    deep_fake_content(Content),
    generated_or_manipulated_by(Content, S),
    ai_system(S),
    \+ exempt_disclose_deep_fake(Content).

exempt_disclose_deep_fake(Content) :-
    generated_or_manipulated_by(Content, S),
    authorised_for_criminal_offences(S).

limited_disclosure_deep_fake(Content) :-
    deep_fake_content(Content),
    artistic_creative_satirical_fictional_analogous(Content).

% Article 50(4) second paragraph - Deployers must disclose synthetic text
must_disclose_synthetic_text(Deployer, Text) :-
    deployer(Deployer),
    generated_or_manipulated_text(Text),
    ai_system(S),
    generated_or_manipulated_by(Text, S),
    informing_public_on_matters_of_public_interest(Text),
    \+ exempt_disclose_synthetic_text(Text).

exempt_disclose_synthetic_text(Text) :-
    generated_or_manipulated_by(Text, S),
    authorised_for_criminal_offences(S).
exempt_disclose_synthetic_text(Text) :-
    human_review_editorial_control(Text),
    editorial_responsibility(_Person, Text).

% Article 50(5) - Timing and manner of information provision (structural, not a duty predicate)
information_timing_manner(Information) :-
    article_50_par_1_2_3_4_information(Information),
    clear_and_distinguishable(Information),
    at_latest_first_interaction_or_exposure(Information),
    conforms_accessibility_requirements(Information).

% Article 50(6) - Without prejudice clause (structural)
without_prejudice_to_chapter_3 :-
    true.

without_prejudice_to_other_transparency_obligations :-
    true.

% Article 50(7) - AI Office encouragement (not a duty on a regulated party, more institutional)
ai_office_encourages_codes_of_practice :-
    ai_office(_Office).

% Provenance
provenance(must_ensure_informed_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark_outputs/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform_of_system_operation/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_synthetic_text/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_informed_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_mark_outputs/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_inform_of_system_operation/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_disclose_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_disclose_synthetic_text/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(emotion_recognition_or_biometric_categorisation_system/1, 'celex:32024R1689/oj#art_50').
provenance(limited_disclosure_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(information_timing_manner/1, 'celex:32024R1689/oj#art_50').
provenance(without_prejudice_to_chapter_3/0, 'celex:32024R1689/oj#art_50').
provenance(without_prejudice_to_other_transparency_obligations/0, 'celex:32024R1689/oj#art_50').
provenance(ai_office_encourages_codes_of_practice/0, 'celex:32024R1689/oj#art_50').

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
