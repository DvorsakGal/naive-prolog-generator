% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 6b93453d6d3761b3b9c9fe319609e3681788c6ba069c5df30d017a501ce7b654
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred must_ensure_interaction_disclosure/2, gloss('provider must ensure natural persons are informed they interact with an AI system'), source('celex:32024R1689/oj#art_50/par_1').
:- pred obvious_from_context/1, gloss('interaction with AI system is obvious to reasonably well-informed observant and circumspect natural person'), source('celex:32024R1689/oj#art_50/par_1').
:- pred authorised_for_criminal_offence_detection/1, gloss('AI system authorised by law to detect prevent investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50/par_1').
:- pred available_for_public_crime_reporting/1, gloss('AI system available for public to report criminal offence'), source('celex:32024R1689/oj#art_50/par_1').
:- pred must_ensure_output_marking/2, gloss('provider must ensure AI system outputs are marked as artificially generated or manipulated'), source('celex:32024R1689/oj#art_50/par_2').
:- pred synthetic_content/1, gloss('AI system generates synthetic audio image video or text content'), source('celex:32024R1689/oj#art_50/par_2').
:- pred assistive_standard_editing/1, gloss('AI system performs assistive function for standard editing'), source('celex:32024R1689/oj#art_50/par_2').
:- pred does_not_substantially_alter_input/1, gloss('AI system does not substantially alter input data or semantics'), source('celex:32024R1689/oj#art_50/par_2').
:- pred must_inform_of_system_operation/2, gloss('deployer must inform natural persons exposed of system operation'), source('celex:32024R1689/oj#art_50/par_3').
:- pred must_disclose_deep_fake/2, gloss('deployer must disclose content has been artificially generated or manipulated'), source('celex:32024R1689/oj#art_50/par_4').
:- pred deep_fake_content/1, gloss('AI system generates or manipulates image audio or video content constituting deep fake'), source('celex:32024R1689/oj#art_50/par_4').
:- pred artistic_creative_satirical_fictional_work/1, gloss('content forms part of evidently artistic creative satirical fictional or analogous work or programme'), source('celex:32024R1689/oj#art_50/par_4').
:- pred must_disclose_ai_generated_text/2, gloss('deployer must disclose text has been artificially generated or manipulated'), source('celex:32024R1689/oj#art_50/par_4').
:- pred public_interest_text/1, gloss('text published with purpose of informing public on matters of public interest'), source('celex:32024R1689/oj#art_50/par_4').
:- pred human_review_editorial_control/1, gloss('AI-generated content underwent human review or editorial control'), source('celex:32024R1689/oj#art_50/par_4').
:- pred editorial_responsibility/2, gloss('natural or legal person holds editorial responsibility for publication'), source('celex:32024R1689/oj#art_50/par_4').
:- pred must_provide_information_clearly/2, gloss('information must be provided clearly and distinguishably at latest at first interaction or exposure'), source('celex:32024R1689/oj#art_50/par_5').
:- pred conforms_accessibility_requirements/1, gloss('information conforms to applicable accessibility requirements'), source('celex:32024R1689/oj#art_50/par_5').
:- pred transparency_obligations/1, gloss('transparency obligations under Article 50 apply'), source('celex:32024R1689/oj#art_50').
:- pred must_encourage_codes_of_practice/2, gloss('AI Office shall encourage and facilitate drawing up codes of practice'), source('celex:32024R1689/oj#art_50/par_7').
:- pred may_adopt_implementing_act_approval/2, gloss('Commission may adopt implementing act to approve code of practice'), source('celex:32024R1689/oj#art_50/par_7').
:- pred may_adopt_implementing_act_common_rules/2, gloss('Commission may adopt implementing act specifying common rules'), source('celex:32024R1689/oj#art_50/par_7').
:- pred code_inadequate/1, gloss('Commission deems code of practice not adequate'), source('celex:32024R1689/oj#art_50/par_7').

% Article 50(1) - Provider obligation to inform natural persons of AI interaction
must_ensure_interaction_disclosure(P, S) :-
    provider(P),
    ai_system(S),
    intended_to_interact_with_natural_persons(S),
    \+ obvious_from_context(S),
    \+ authorised_for_criminal_offence_detection(S),
    \+ available_for_public_crime_reporting(S).

must_ensure_interaction_disclosure(P, S) :-
    provider(P),
    ai_system(S),
    intended_to_interact_with_natural_persons(S),
    \+ obvious_from_context(S),
    authorised_for_criminal_offence_detection(S),
    appropriate_safeguards(S),
    \+ available_for_public_crime_reporting(S).

% Article 50(2) - Provider obligation to mark synthetic content outputs
must_ensure_output_marking(P, S) :-
    provider(P),
    ai_system(S),
    synthetic_content(S),
    \+ assistive_standard_editing(S),
    \+ does_not_substantially_alter_input(S),
    \+ authorised_for_criminal_offence_detection(S).

% Article 50(3) - Deployer obligation to inform about emotion recognition or biometric categorisation
must_inform_of_system_operation(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    \+ authorised_for_criminal_offence_detection(S).

must_inform_of_system_operation(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    \+ authorised_for_criminal_offence_detection(S).

must_inform_of_system_operation(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    authorised_for_criminal_offence_detection(S),
    appropriate_safeguards(S).

must_inform_of_system_operation(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    authorised_for_criminal_offence_detection(S),
    appropriate_safeguards(S).

% Article 50(4) - Deployer obligation to disclose deep fakes
must_disclose_deep_fake(D, S) :-
    deployer(D),
    deep_fake_content(S),
    \+ authorised_for_criminal_offence_detection(S),
    \+ artistic_creative_satirical_fictional_work(S).

must_disclose_deep_fake(D, S) :-
    deployer(D),
    deep_fake_content(S),
    \+ authorised_for_criminal_offence_detection(S),
    artistic_creative_satirical_fictional_work(S).

% Article 50(4) - Deployer obligation to disclose AI-generated public interest text
must_disclose_ai_generated_text(D, S) :-
    deployer(D),
    ai_system(S),
    synthetic_text(S),
    public_interest_text(S),
    \+ authorised_for_criminal_offence_detection(S),
    \+ human_review_editorial_control(S).

must_disclose_ai_generated_text(D, S) :-
    deployer(D),
    ai_system(S),
    synthetic_text(S),
    public_interest_text(S),
    \+ authorised_for_criminal_offence_detection(S),
    human_review_editorial_control(S),
    \+ editorial_responsibility(_Person, S).

% Article 50(5) - Timing and manner of information provision
must_provide_information_clearly(_ProviderOrDeployer, S) :-
    transparency_obligations(S).

conforms_accessibility_requirements(S) :-
    transparency_obligations(S).

% Article 50(7) - AI Office and Commission powers regarding codes of practice
must_encourage_codes_of_practice(Office, detection_labelling_obligations) :-
    ai_office(Office).

may_adopt_implementing_act_approval(Commission, Code) :-
    commission(Commission),
    code_of_practice(Code),
    detection_labelling_obligations(Code).

may_adopt_implementing_act_common_rules(Commission, detection_labelling_obligations) :-
    commission(Commission),
    code_of_practice(Code),
    detection_labelling_obligations(Code),
    code_inadequate(Code).

% Provenance
provenance(must_ensure_interaction_disclosure/2, 'celex:32024R1689/oj#art_50/par_1').
provenance(obvious_from_context/1, 'celex:32024R1689/oj#art_50/par_1').
provenance(authorised_for_criminal_offence_detection/1, 'celex:32024R1689/oj#art_50/par_1').
provenance(available_for_public_crime_reporting/1, 'celex:32024R1689/oj#art_50/par_1').
provenance(must_ensure_output_marking/2, 'celex:32024R1689/oj#art_50/par_2').
provenance(synthetic_content/1, 'celex:32024R1689/oj#art_50/par_2').
provenance(assistive_standard_editing/1, 'celex:32024R1689/oj#art_50/par_2').
provenance(does_not_substantially_alter_input/1, 'celex:32024R1689/oj#art_50/par_2').
provenance(must_inform_of_system_operation/2, 'celex:32024R1689/oj#art_50/par_3').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(deep_fake_content/1, 'celex:32024R1689/oj#art_50/par_4').
provenance(artistic_creative_satirical_fictional_work/1, 'celex:32024R1689/oj#art_50/par_4').
provenance(must_disclose_ai_generated_text/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(public_interest_text/1, 'celex:32024R1689/oj#art_50/par_4').
provenance(human_review_editorial_control/1, 'celex:32024R1689/oj#art_50/par_4').
provenance(editorial_responsibility/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(must_provide_information_clearly/2, 'celex:32024R1689/oj#art_50/par_5').
provenance(conforms_accessibility_requirements/1, 'celex:32024R1689/oj#art_50/par_5').
provenance(transparency_obligations/1, 'celex:32024R1689/oj#art_50').
provenance(must_encourage_codes_of_practice/2, 'celex:32024R1689/oj#art_50/par_7').
provenance(may_adopt_implementing_act_approval/2, 'celex:32024R1689/oj#art_50/par_7').
provenance(may_adopt_implementing_act_common_rules/2, 'celex:32024R1689/oj#art_50/par_7').
provenance(code_inadequate/1, 'celex:32024R1689/oj#art_50/par_7').

% References
references('celex:32024R1689/oj#art_50/par_3', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50/par_3', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50/par_3', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50/par_4', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50/par_5', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50/par_5', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50/par_5', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50/par_5', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50/par_7', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50/par_7', 'celex:32024R1689/oj#art_98/par_2').
