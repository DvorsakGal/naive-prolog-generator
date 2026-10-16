% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 32d7baa489400498e8c91baf0875d88b375a04bc9bbeda0c72050c14be5a3126
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred permitted_processing/2, gloss('Entity or operation is permitted to process specified personal data for AI system development, training and testing in a sandbox'), source('celex:32024R1689/oj#art_59').
:- pred lawfully_collected_for_other_purposes/1, gloss('Personal data was lawfully collected for other purposes'), source('celex:32024R1689/oj#art_59').
:- pred objective_substantial_public_interest_area/1, gloss('AI system is developed for safeguarding substantial public interest in specified qualifying areas'), source('celex:32024R1689/oj#art_59').
:- pred necessary_for_complying_requirements/2, gloss('Processing of personal data is necessary for compliance with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_59').
:- pred cannot_effectively_fulfil_with_non_personal_data/2, gloss('Requirements cannot effectively be fulfilled by processing non-personal data'), source('celex:32024R1689/oj#art_59').
:- pred effective_monitoring_and_response_mechanisms_present/1, gloss('Sandbox experimentation has effective monitoring and prompt risk-mitigation response mechanisms'), source('celex:32024R1689/oj#art_59').
:- pred isolated_protected_processing_environment/2, gloss('Data in sandbox is in a functionally separate, isolated, protected environment under provider control with access restricted to authorised persons'), source('celex:32024R1689/oj#art_59').
:- pred compliant_data_sharing_controls/2, gloss('Originally collected data shared only per Union data protection law and newly created personal data not shared outside sandbox'), source('celex:32024R1689/oj#art_59').
:- pred no_adverse_impact_on_data_subjects_or_rights/1, gloss('Processing neither leads to measures or decisions affecting data subjects nor affects their data protection rights'), source('celex:32024R1689/oj#art_59').
:- pred technical_and_organisational_protection_and_deletion/1, gloss('Data protected by technical and organisational measures and deleted upon termination or retention end'), source('celex:32024R1689/oj#art_59').
:- pred processing_logs_retained/1, gloss('Logs of data processing in sandbox are kept for the duration of participation unless otherwise provided'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_training_testing_documented/2, gloss('Complete and detailed description of training, testing, validation process and results kept in technical documentation'), source('celex:32024R1689/oj#art_59').
:- pred project_summary_published_on_authority_website/1, gloss('Short summary of AI sandbox project, objectives and results published on competent authority website excluding sensitive operational data'), source('celex:32024R1689/oj#art_59').
:- pred objective_law_enforcement_purpose/1, gloss('Processing is for prevention, investigation, detection, prosecution of criminal offences or execution of criminal penalties'), source('celex:32024R1689/oj#art_59').
:- pred based_on_specific_union_or_national_law/1, gloss('Processing of personal data in sandbox is based on specific Union or national law'), source('celex:32024R1689/oj#art_59').
:- pred under_control_of_law_enforcement/1, gloss('Operation is under the control and responsibility of law enforcement authorities'), source('celex:32024R1689/oj#art_59').

% Article 59(1): Further processing of personal data in AI regulatory sandboxes
permitted_processing(Provider, sandbox_development(System, Data)) :-
    provider(Provider),
    ai_system(System),
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    objective_substantial_public_interest_area(System),
    necessary_for_complying_requirements(Data, System),
    cannot_effectively_fulfil_with_non_personal_data(Data, System),
    effective_monitoring_and_response_mechanisms_present(System),
    isolated_protected_processing_environment(Provider, Data),
    compliant_data_sharing_controls(Provider, Data),
    no_adverse_impact_on_data_subjects_or_rights(Data),
    technical_and_organisational_protection_and_deletion(Data),
    processing_logs_retained(Data),
    sandbox_training_testing_documented(Provider, System),
    project_summary_published_on_authority_website(System).

% Article 59(2): Processing in AI regulatory sandboxes for law enforcement purposes
permitted_processing(Authority, sandbox_law_enforcement(System, Data)) :-
    law_enforcement_authority(Authority),
    ai_system(System),
    personal_data(Data),
    objective_law_enforcement_purpose(System),
    under_control_of_law_enforcement(Authority),
    based_on_specific_union_or_national_law(System),
    permitted_processing(_Provider, sandbox_development(System, Data)).

% Provenance facts
provenance(permitted_processing/2, 'celex:32024R1689/oj#art_59').

% Cross references
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
