% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 856dce53a3b7a490d271b2ff441547242a103b00efc2a56288f4393224b21c58
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred permitted_sandbox_data_processing/2, gloss('processing of personal data in sandbox is permitted for developing, training and testing an AI system'), source('celex:32024R1689/oj#art_59').
:- pred lawful_data_collection/1, gloss('personal data was lawfully collected for other purposes'), source('celex:32024R1689/oj#art_59').
:- pred public_interest_area/1, gloss('AI system is developed for safeguarding substantial public interest in a specified area'), source('celex:32024R1689/oj#art_59').
:- pred necessary_for_chapter_3_section_2/1, gloss('processing is necessary for requirements in chapter 3 section 2 and cannot be fulfilled by non-personal data'), source('celex:32024R1689/oj#art_59').
:- pred monitoring_and_response_mechanisms_in_place/1, gloss('effective monitoring and risk mitigation mechanisms in place'), source('celex:32024R1689/oj#art_59').
:- pred isolated_processing_environment/1, gloss('data is in a functionally separate, isolated, protected environment under provider control with access restricted'), source('celex:32024R1689/oj#art_59').
:- pred data_sharing_compliant/1, gloss('data sharing restrictions are observed'), source('celex:32024R1689/oj#art_59').
:- pred no_adverse_effect_on_subjects/1, gloss('processing neither leads to measures affecting subjects nor affects their data protection rights'), source('celex:32024R1689/oj#art_59').
:- pred data_protected_and_deleted/1, gloss('personal data protected by measures and deleted post participation or retention period'), source('celex:32024R1689/oj#art_59').
:- pred logs_kept/1, gloss('processing logs are kept for duration of sandbox participation'), source('celex:32024R1689/oj#art_59').
:- pred process_description_and_results_kept/1, gloss('description of process and testing results kept as part of technical documentation'), source('celex:32024R1689/oj#art_59').
:- pred project_summary_published/1, gloss('short summary of project, objectives and results published on authority website'), source('celex:32024R1689/oj#art_59').
:- pred based_on_specific_law/1, gloss('processing is based on specific Union or national law for law enforcement purposes'), source('celex:32024R1689/oj#art_59').
:- pred law_enforcement_purpose/1, gloss('purpose relates to criminal offences, penalties, or threats to public security under law enforcement authority'), source('celex:32024R1689/oj#art_59').

% Article 59(1): General conditions for further processing in the sandbox
permitted_sandbox_data_processing(Data, System) :-
    personal_data(Data),
    ai_system(System),
    lawful_data_collection(Data),
    public_interest_area(System),
    necessary_for_chapter_3_section_2(Data),
    monitoring_and_response_mechanisms_in_place(System),
    isolated_processing_environment(Data),
    data_sharing_compliant(Data),
    no_adverse_effect_on_subjects(Data),
    data_protected_and_deleted(Data),
    logs_kept(Data),
    process_description_and_results_kept(System),
    project_summary_published(System).

% Article 59(2): Law enforcement sandbox processing
permitted_sandbox_data_processing(Data, System) :-
    personal_data(Data),
    ai_system(System),
    law_enforcement_purpose(System),
    based_on_specific_law(System),
    lawful_data_collection(Data),
    public_interest_area(System),
    necessary_for_chapter_3_section_2(Data),
    monitoring_and_response_mechanisms_in_place(System),
    isolated_processing_environment(Data),
    data_sharing_compliant(Data),
    no_adverse_effect_on_subjects(Data),
    data_protected_and_deleted(Data),
    logs_kept(Data),
    process_description_and_results_kept(System),
    project_summary_published(System).

% Provenance
provenance(permitted_sandbox_data_processing/2, 'celex:32024R1689/oj#art_59').

% References
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
