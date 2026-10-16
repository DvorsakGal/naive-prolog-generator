% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 881937fe7d9cfc8b6081647640b5de799510c48b9a9a49b19d5ec095252cce2d
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred must_inform_interaction/2, gloss('provider must ensure natural persons are informed they are interacting with an AI system'), source('celex:32024R1689/oj#art_50/par_1').
:- pred must_mark_outputs/2, gloss('provider must ensure synthetic outputs are marked as artificially generated'), source('celex:32024R1689/oj#art_50/par_2').
:- pred must_inform_operation/2, gloss('deployer must inform natural persons of the operation of an emotion recognition or biometric categorisation system'), source('celex:32024R1689/oj#art_50/par_3').
:- pred must_disclose_deep_fake/2, gloss('deployer must disclose that content is a deep fake'), source('celex:32024R1689/oj#art_50/par_4').
:- pred must_disclose_generated_text/2, gloss('deployer must disclose that published text is artificially generated'), source('celex:32024R1689/oj#art_50/par_4').
:- pred must_provide_information_clearly/2, gloss('information must be provided clearly and distinguishably at first interaction or exposure'), source('celex:32024R1689/oj#art_50/par_5').
:- pred must_encourage_codes_of_practice/1, gloss('AI Office must encourage codes of practice for detection and labelling'), source('celex:32024R1689/oj#art_50/par_7').

:- pred interaction_obvious/1, gloss('interaction with AI system is obvious to a reasonably well-informed person'), source('celex:32024R1689/oj#art_50/par_1').
:- pred authorised_for_criminal_offences/1, gloss('AI system authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50/par_1').
:- pred available_for_public_reporting/1, gloss('AI system available for the public to report a criminal offence'), source('celex:32024R1689/oj#art_50/par_1').
:- pred assistive_editing_function/1, gloss('AI system performs an assistive function for standard editing'), source('celex:32024R1689/oj#art_50/par_2').
:- pred does_not_substantially_alter_input/1, gloss('AI system does not substantially alter input data or semantics'), source('celex:32024R1689/oj#art_50/par_2').
:- pred deep_fake_content/1, gloss('content constituting a deep fake'), source('celex:32024R1689/oj#art_50/par_4').
:- pred artistic_or_analogous_work/1, gloss('content forms part of an artistic, creative, satirical, fictional or analogous work'), source('celex:32024R1689/oj#art_50/par_4').
:- pred published_for_public_interest/1, gloss('text published with the purpose of informing the public on matters of public interest'), source('celex:32024R1689/oj#art_50/par_4').
:- pred human_review_or_editorial_control/1, gloss('content has undergone human review or editorial control with editorial responsibility'), source('celex:32024R1689/oj#art_50/par_4').

must_inform_interaction(Provider, S) :-
    provider(Provider),
    ai_system(S),
    intended_purpose(interact_directly_with_natural_persons(S)),
    \+ interaction_obvious(S),
    \+ (authorised_for_criminal_offences(S), \+ available_for_public_reporting(S)).

must_mark_outputs(Provider, S) :-
    provider(Provider),
    ai_system(S),
    generates_synthetic_content(S),
    \+ assistive_editing_function(S),
    \+ does_not_substantially_alter_input(S),
    \+ authorised_for_criminal_offences(S).

must_inform_operation(Deployer, S) :-
    deployer(Deployer),
    (emotion_recognition_system(S); biometric_categorisation_system(S)),
    \+ (authorised_for_criminal_offences(S), biometric_categorisation_or_emotion_recognition(S)).

must_disclose_deep_fake(Deployer, Content) :-
    deployer(Deployer),
    deep_fake_content(Content),
    \+ authorised_for_criminal_offences(Content).

must_disclose_generated_text(Deployer, Text) :-
    deployer(Deployer),
    generated_or_manipulated_text(Text),
    published_for_public_interest(Text),
    \+ authorised_for_criminal_offences(Text),
    \+ human_review_or_editorial_control(Text).

must_provide_information_clearly(_Entity, Info) :-
    information_referred_to_in_paras_1_to_4(Info).

must_encourage_codes_of_practice(AI_Office) :-
    ai_office(AI_Office).

% Exceptions and qualifications
interaction_obvious(S) :-
    ai_system(S),
    obvious_to_reasonably_well_informed_person(S).

authorised_for_criminal_offences(S) :-
    ai_system(S),
    authorised_by_law(S, detect_prevent_investigate_prosecute_criminal_offences).

available_for_public_reporting(S) :-
    ai_system(S),
    available_for_public(S, report_criminal_offence).

assistive_editing_function(S) :-
    ai_system(S),
    performs_assistive_function(S, standard_editing).

does_not_substantially_alter_input(S) :-
    ai_system(S),
    does_not_substantially_alter(S, input_data_or_semantics).

deep_fake_content(Content) :-
    deep_fake(Content).

artistic_or_analogous_work(Content) :-
    deep_fake_content(Content),
    forms_part_of_work(Content, artistic_creative_satirical_fictional_analogous).

published_for_public_interest(Text) :-
    generated_or_manipulated_text(Text),
    published_with_purpose(Text, inform_public_on_matters_of_public_interest).

human_review_or_editorial_control(Text) :-
    generated_or_manipulated_text(Text),
    undergone_human_review_or_editorial_control(Text),
    editorial_responsibility_held(Text).

% Supporting predicates
generates_synthetic_content(S) :-
    ai_system(S),
    generates(S, synthetic_audio_image_video_text).

generated_or_manipulated_text(Text) :-
    ai_system(_S),
    generates_or_manipulates(Text, text).

biometric_categorisation_or_emotion_recognition(S) :-
    biometric_categorisation_system(S); emotion_recognition_system(S).

information_referred_to_in_paras_1_to_4(Info) :-
    (must_inform_interaction(_, Info);
     must_mark_outputs(_, Info);
     must_inform_operation(_, Info);
     must_disclose_deep_fake(_, Info);
     must_disclose_generated_text(_, Info)).

% Provenance
provenance(must_inform_interaction/2, 'celex:32024R1689/oj#art_50/par_1').
provenance(must_mark_outputs/2, 'celex:32024R1689/oj#art_50/par_2').
provenance(must_inform_operation/2, 'celex:32024R1689/oj#art_50/par_3').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(must_disclose_generated_text/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(must_provide_information_clearly/2, 'celex:32024R1689/oj#art_50/par_5').
provenance(must_encourage_codes_of_practice/1, 'celex:32024R1689/oj#art_50/par_7').

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
