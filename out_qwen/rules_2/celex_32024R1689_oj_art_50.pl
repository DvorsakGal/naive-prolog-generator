% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : d266e20042a0e9d4e85b3e0ee86e9467d04e35b94fc9251574c342ba51b306e9
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred interacts_directly_with_natural_persons/1, gloss('AI system intended to interact directly with natural persons'), source('celex:32024R1689/oj#art_50').
:- pred interaction_with_ai_is_obvious/1, gloss('interaction with AI system is obvious to a reasonably well-informed person'), source('celex:32024R1689/oj#art_50').
:- pred authorised_for_criminal_offence_purposes/1, gloss('AI system authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred available_to_report_criminal_offence/1, gloss('AI system available for the public to report a criminal offence'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content/1, gloss('AI system generating synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred performs_assistive_editing_function/1, gloss('AI system performs an assistive function for standard editing'), source('celex:32024R1689/oj#art_50').
:- pred substantially_alters_input_data/1, gloss('AI system substantially alters input data or semantics thereof'), source('celex:32024R1689/oj#art_50').
:- pred must_mark_outputs_as_artificial/2, gloss('provider must ensure outputs are marked as artificially generated'), source('celex:32024R1689/oj#art_50').
:- pred must_inform_of_interaction/2, gloss('provider must inform natural persons they are interacting with an AI system'), source('celex:32024R1689/oj#art_50').
:- pred must_inform_of_system_operation/2, gloss('deployer must inform exposed persons of system operation'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose_deep_fake/2, gloss('deployer must disclose content is artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose_ai_generated_text/2, gloss('deployer must disclose text published to inform public is AI-generated'), source('celex:32024R1689/oj#art_50').
:- pred artistic_or_fictional_work/1, gloss('content forms part of an evidently artistic, creative, satirical, fictional or analogous work'), source('celex:32024R1689/oj#art_50').
:- pred informs_public_on_matters_of_public_interest/1, gloss('text published with purpose of informing public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred subject_to_human_editorial_control/1, gloss('AI-generated content has undergone human review and editorial control'), source('celex:32024R1689/oj#art_50').
:- pred must_encourage_codes_of_practice/2, gloss('AI Office must encourage drawing up of codes of practice'), source('celex:32024R1689/oj#art_50').

interacts_directly_with_natural_persons(S) :-
    ai_system(S),
    intended_purpose(S),
    % Intended to interact directly with natural persons
    true. 

interaction_with_ai_is_obvious(S) :-
    interacts_directly_with_natural_persons(S).

authorised_for_criminal_offence_purposes(S) :-
    ai_system(S).

available_to_report_criminal_offence(S) :-
    ai_system(S).

generates_synthetic_content(S) :-
    ai_system(S).

performs_assistive_editing_function(S) :-
    generates_synthetic_content(S).

substantially_alters_input_data(S) :-
    generates_synthetic_content(S).

artistic_or_fictional_work(C) :-
    deep_fake(C).

informs_public_on_matters_of_public_interest(T) :-
    ai_system(_S).

subject_to_human_editorial_control(C) :-
    ai_system(_S).

must_inform_of_interaction(P, S) :-
    provider(P),
    interacts_directly_with_natural_persons(S),
    \+ interaction_with_ai_is_obvious(S),
    \+ exempt_from_interaction_transparency(S).

exempt_from_interaction_transparency(S) :-
    authorised_for_criminal_offence_purposes(S),
    \+ available_to_report_criminal_offence(S).

must_mark_outputs_as_artificial(P, S) :-
    provider(P),
    generates_synthetic_content(S),
    \+ exempt_from_content_marking(S).

exempt_from_content_marking(S) :-
    performs_assistive_editing_function(S).
exempt_from_content_marking(S) :-
    \+ substantially_alters_input_data(S).
exempt_from_content_marking(S) :-
    authorised_for_criminal_offence_purposes(S).

must_inform_of_system_operation(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    \+ exempt_emotion_or_categorisation(S).
must_inform_of_system_operation(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    \+ exempt_emotion_or_categorisation(S).

exempt_emotion_or_categorisation(S) :-
    authorised_for_criminal_offence_purposes(S).

must_disclose_deep_fake(D, C) :-
    deployer(D),
    deep_fake(C),
    \+ authorised_for_criminal_offence_purposes(C).

must_disclose_ai_generated_text(D, T) :-
    deployer(D),
    informs_public_on_matters_of_public_interest(T),
    \+ authorised_for_criminal_offence_purposes(T),
    \+ subject_to_human_editorial_control(T).

must_encourage_codes_of_practice(AI, detection_and_labelling) :-
    ai_office(AI).

provenance(interacts_directly_with_natural_persons/1, 'celex:32024R1689/oj#art_50').
provenance(interaction_with_ai_is_obvious/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_for_criminal_offence_purposes/1, 'celex:32024R1689/oj#art_50').
provenance(available_to_report_criminal_offence/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(performs_assistive_editing_function/1, 'celex:32024R1689/oj#art_50').
provenance(substantially_alters_input_data/1, 'celex:32024R1689/oj#art_50').
provenance(must_mark_outputs_as_artificial/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform_of_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform_of_system_operation/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_ai_generated_text/2, 'celex:32024R1689/oj#art_50').
provenance(artistic_or_fictional_work/1, 'celex:32024R1689/oj#art_50').
provenance(informs_public_on_matters_of_public_interest/1, 'celex:32024R1689/oj#art_50').
provenance(subject_to_human_editorial_control/1, 'celex:32024R1689/oj#art_50').
provenance(must_encourage_codes_of_practice/2, 'celex:32024R1689/oj#art_50').

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
