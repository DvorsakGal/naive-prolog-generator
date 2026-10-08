% unit       : celex:32024R1689/oj#art_50
% title      : Transparency obligations for providers and deployers of certain AI systems
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : gpt-oss:120b-cloud
% prompt sha : 69f028873c8d5cf140b50189450539b3fb7d6da8d92492b15e5157e662eba32a
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_inform_natural_persons/2, gloss('provider must ensure natural persons are informed they are interacting with an AI system'), source('celex:32024R1689/oj#art_50').
:- pred interacts_directly_with_natural_persons/1, gloss('AI system is intended to interact directly with natural persons'), source('celex:32024R1689/oj#art_50').
:- pred obvious_interaction/1, gloss('the AI interaction is obvious to a reasonably well‑informed natural person'), source('celex:32024R1689/oj#art_50').
:- pred authorised_by_law_to_detect_prevent_investigate_prosecute_criminal_offences/1, gloss('AI system is authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred public_reporting/1, gloss('the AI system is available for the public to report a criminal offence'), source('celex:32024R1689/oj#art_50').
:- pred exempt_authorised_criminal_detection/1, gloss('exemption applies to AI systems authorised for criminal‑offence detection and not publicly reportable'), source('celex:32024R1689/oj#art_50').

required_inform_natural_persons(Provider, S) :-
    provider(Provider),
    ai_system(S),
    interacts_directly_with_natural_persons(S),
    \+ obvious_interaction(S),
    \+ exempt_authorised_criminal_detection(S).

exempt_authorised_criminal_detection(S) :-
    authorised_by_law_to_detect_prevent_investigate_prosecute_criminal_offences(S),
    \+ public_reporting(S).

provenance(required_inform_natural_persons/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_authorised_criminal_detection/1, 'celex:32024R1689/oj#art_50').

:- pred required_mark_output_machine_readable/2, gloss('provider must ensure AI‑generated synthetic content is marked in a machine‑readable, detectable way'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content/1, gloss('AI system generates synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred exempt_mark_output/1, gloss('exemption from marking obligations'), source('celex:32024R1689/oj#art_50').
:- pred assistive_function_for_standard_editing/1, gloss('AI system performs an assistive function for standard editing'), source('celex:32024R1689/oj#art_50').
:- pred not_substantially_alter_input/1, gloss('AI system does not substantially alter the input data provided by the deployer'), source('celex:32024R1689/oj#art_50').

required_mark_output_machine_readable(Provider, S) :-
    provider(Provider),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_mark_output(S).

exempt_mark_output(S) :-
    assistive_function_for_standard_editing(S).
exempt_mark_output(S) :-
    not_substantially_alter_input(S).
exempt_mark_output(S) :-
    authorised_by_law_to_detect_prevent_investigate_prosecute_criminal_offences(S).

provenance(required_mark_output_machine_readable/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_mark_output/1, 'celex:32024R1689/oj#art_50').

:- pred required_inform_natural_persons_deployer/2, gloss('deployer must inform natural persons exposed to emotion‑recognition or biometric‑categorisation systems of the system’s operation'), source('celex:32024R1689/oj#art_50').

required_inform_natural_persons_deployer(Deployer, S) :-
    deployer(Deployer),
    ai_system(S),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ exempt_authorised_criminal_detection(S).

provenance(required_inform_natural_persons_deployer/2, 'celex:32024R1689/oj#art_50').

:- pred required_disclose_generated_content/2, gloss('deployer must disclose that AI‑generated or manipulated content has been artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred generates_or_manipulates_content/1, gloss('AI system generates or manipulates image, audio, video or text content'), source('celex:32024R1689/oj#art_50').

required_disclose_generated_content(Deployer, S) :-
    deployer(Deployer),
    ai_system(S),
    generates_or_manipulates_content(S),
    \+ exempt_authorised_criminal_detection(S).

provenance(required_disclose_generated_content/2, 'celex:32024R1689/oj#art_50').

:- pred required_provide_information/2, gloss('information required by paragraphs 1‑4 must be provided to natural persons in a clear, distinguishable manner at the latest at the first interaction'), source('celex:32024R1689/oj#art_50').
:- pred before_first_interaction/1, gloss('information is provided no later than the first interaction or exposure'), source('celex:32024R1689/oj#art_50').
:- pred accessibility_requirements_conform/1, gloss('information conforms to applicable accessibility requirements'), source('celex:32024R1689/oj#art_50').

required_provide_information(Actor, S) :-
    (provider(Actor) ; deployer(Actor)),
    ai_system(S),
    ( required_inform_natural_persons(Actor, S)
    ; required_inform_natural_persons_deployer(Actor, S)
    ; required_mark_output_machine_readable(Actor, S)
    ; required_disclose_generated_content(Actor, S)
    ),
    before_first_interaction(S),
    accessibility_requirements_conform(S).

provenance(required_provide_information/2, 'celex:32024R1689/oj#art_50').

:- pred required_encourage_codes_of_practice/1, gloss('AI Office shall encourage and facilitate the drawing up of Union‑level codes of practice for transparency obligations'), source('celex:32024R1689/oj#art_50').

required_encourage_codes_of_practice(AIOffice) :-
    ai_office(AIOffice).

provenance(required_encourage_codes_of_practice/1, 'celex:32024R1689/oj#art_50').

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
