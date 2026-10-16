% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 75735ec997ebe45d096dd8dbb4a79e30ff94357e328825690cf659064df2f72f
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred must_inform/2, gloss('obligation to inform natural persons'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose/2, gloss('obligation to disclose content as artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred must_mark_outputs/2, gloss('obligation to mark outputs as artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred must_encourage_codes_of_practice/2, gloss('obligation to encourage codes of practice'), source('celex:32024R1689/oj#art_50').
:- pred permitted_informing_exception/1, gloss('circumstance where informing obligation does not apply'), source('celex:32024R1689/oj#art_50').
:- pred permitted_marking_exception/1, gloss('circumstance where marking obligation does not apply'), source('celex:32024R1689/oj#art_50').
:- pred permitted_disclosure_exception/1, gloss('circumstance where disclosure obligation does not apply'), source('celex:32024R1689/oj#art_50').
:- pred permitted_limited_disclosure/1, gloss('circumstance where limited disclosure applies'), source('celex:32024R1689/oj#art_50').
:- pred permitted_text_disclosure_exception/1, gloss('circumstance where text disclosure obligation does not apply'), source('celex:32024R1689/oj#art_50').
:- pred deep_fake_content/1, gloss('content constituting a deep fake'), source('celex:32024R1689/oj#art_50').
:- pred synthetic_content/1, gloss('synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred artistic_work/1, gloss('evidently artistic, creative, satirical, fictional or analogous work'), source('celex:32024R1689/oj#art_50').
:- pred public_interest_text/1, gloss('text published to inform the public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred human_review/1, gloss('content has undergone human review or editorial control'), source('celex:32024R1689/oj#art_50').
:- pred editorial_responsibility/2, gloss('natural or legal person holds editorial responsibility for publication'), source('celex:32024R1689/oj#art_50').
:- pred authorised_for_criminal_offences/1, gloss('use authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred assistive_function/1, gloss('AI system performs an assistive function for standard editing'), source('celex:32024R1689/oj#art_50').
:- pred does_not_substantially_alter/1, gloss('AI system does not substantially alter input data or semantics'), source('celex:32024R1689/oj#art_50').
:- pred publicly_available_for_reporting/1, gloss('AI system available for the public to report a criminal offence'), source('celex:32024R1689/oj#art_50').

% Paragraph 1: Providers shall ensure AI systems intended to interact directly with natural persons inform them
must_inform(Provider, interaction(System)) :-
    provider(Provider),
    ai_system(System),
    intended_purpose(System, interact_directly_with_natural_persons),
    \+ obvious_interaction(System),
    \+ permitted_informing_exception(System).

permitted_informing_exception(System) :-
    ai_system(System),
    authorised_for_criminal_offences(System),
    \+ publicly_available_for_reporting(System).

obvious_interaction(System) :-
    ai_system(System),
    % obvious from the point of view of a reasonably well-informed, observant and circumspect person
    true.

% Paragraph 2: Providers of AI systems generating synthetic content shall mark outputs
must_mark_outputs(Provider, System) :-
    provider(Provider),
    ai_system(System),
    synthetic_content(System),
    \+ permitted_marking_exception(System).

permitted_marking_exception(System) :-
    ai_system(System),
    assistive_function(System).

permitted_marking_exception(System) :-
    ai_system(System),
    does_not_substantially_alter(System).

permitted_marking_exception(System) :-
    ai_system(System),
    authorised_for_criminal_offences(System).

% Paragraph 3: Deployers of emotion recognition or biometric categorisation systems shall inform
must_inform(Deployer, operation(System)) :-
    deployer(Deployer),
    emotion_recognition_system(System),
    \+ permitted_informing_exception(System).

must_inform(Deployer, operation(System)) :-
    deployer(Deployer),
    biometric_categorisation_system(System),
    \+ permitted_informing_exception(System).

permitted_informing_exception(System) :-
    ( emotion_recognition_system(System) ; biometric_categorisation_system(System) ),
    authorised_for_criminal_offences(System).

% Paragraph 4: Deployers of AI systems generating deep fakes shall disclose
must_disclose(Deployer, deep_fake(System)) :-
    deployer(Deployer),
    ai_system(System),
    deep_fake_content(System),
    \+ permitted_disclosure_exception(System),
    \+ permitted_limited_disclosure(System).

permitted_disclosure_exception(System) :-
    ai_system(System),
    authorised_for_criminal_offences(System).

permitted_limited_disclosure(System) :-
    ai_system(System),
    artistic_work(System).

% Paragraph 4 subparagraph 2: Deployers of AI systems generating text for public interest shall disclose
must_disclose(Deployer, public_interest_text(System)) :-
    deployer(Deployer),
    ai_system(System),
    public_interest_text(System),
    \+ permitted_text_disclosure_exception(System).

permitted_text_disclosure_exception(System) :-
    ai_system(System),
    authorised_for_criminal_offences(System).

permitted_text_disclosure_exception(System) :-
    ai_system(System),
    human_review(System),
    editorial_responsibility(_Person, System).

% Paragraph 7: AI Office shall encourage codes of practice
must_encourage_codes_of_practice(ai_office, codes_of_practice(detection_and_labelling)) :-
    ai_office(AI_Office).

% Provenance
provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark_outputs/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_encourage_codes_of_practice/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_informing_exception/1, 'celex:32024R1689/oj#art_50').
provenance(permitted_marking_exception/1, 'celex:32024R1689/oj#art_50').
provenance(permitted_disclosure_exception/1, 'celex:32024R1689/oj#art_50').
provenance(permitted_limited_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(permitted_text_disclosure_exception/1, 'celex:32024R1689/oj#art_50').
provenance(deep_fake_content/1, 'celex:32024R1689/oj#art_50').
provenance(synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(artistic_work/1, 'celex:32024R1689/oj#art_50').
provenance(public_interest_text/1, 'celex:32024R1689/oj#art_50').
provenance(human_review/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility/2, 'celex:32024R1689/oj#art_50').
provenance(authorised_for_criminal_offences/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_function/1, 'celex:32024R1689/oj#art_50').
provenance(does_not_substantially_alter/1, 'celex:32024R1689/oj#art_50').
provenance(publicly_available_for_reporting/1, 'celex:32024R1689/oj#art_50').

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
