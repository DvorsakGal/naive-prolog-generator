% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 456bce510356186c3d6cfdc6176fafcd384b20ab3159bcea12f1705fa679dfec
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred must_process_personal_data_in_sandbox/2, gloss('obligation to process personal data in AI regulatory sandbox'), source('celex:32024R1689/oj#art_59').
:- pred public_interest_area/1, gloss('area of substantial public interest for AI system development'), source('celex:32024R1689/oj#art_59').
:- pred necessary_for_requirements/1, gloss('personal data necessary for complying with specific regulatory requirements'), source('celex:32024R1689/oj#art_59').
:- pred not_fulfillable_by_non_personal/1, gloss('requirements cannot be met by anonymised, synthetic or non‑personal data'), source('celex:32024R1689/oj#art_59').
:- pred monitoring_mechanism_exists/1, gloss('effective monitoring mechanisms to identify high risks'), source('celex:32024R1689/oj#art_59').
:- pred response_mechanism_exists/1, gloss('response mechanisms to promptly mitigate identified risks'), source('celex:32024R1689/oj#art_59').
:- pred isolated_environment/1, gloss('functionally separate, isolated and protected processing environment'), source('celex:32024R1689/oj#art_59').
:- pred authorised_access/1, gloss('only authorised persons have access to the data'), source('celex:32024R1689/oj#art_59').
:- pred sharing_allowed/1, gloss('further sharing of originally collected data only in accordance with Union data protection law'), source('celex:32024R1689/oj#art_59').
:- pred not_shared_outside/1, gloss('personal data created in the sandbox cannot be shared outside the sandbox'), source('celex:32024R1689/oj#art_59').
:- pred no_decisions_affecting_subjects/1, gloss('processing does not lead to measures or decisions affecting data subjects nor affect their rights'), source('celex:32024R1689/oj#art_59').
:- pred protected_by_measures/1, gloss('personal data protected by appropriate technical and organisational measures'), source('celex:32024R1689/oj#art_59').
:- pred deleted_after_termination/1, gloss('personal data deleted once sandbox participation has terminated or retention period ends'), source('celex:32024R1689/oj#art_59').
:- pred logs_kept_duration/1, gloss('logs of processing kept for the duration of sandbox participation'), source('celex:32024R1689/oj#art_59').
:- pred documentation_kept/1, gloss('complete description of training, testing and validation kept with technical documentation'), source('celex:32024R1689/oj#art_59').
:- pred summary_published/1, gloss('short summary of AI project published on competent authority website'), source('celex:32024R1689/oj#art_59').
:- pred not_sensitive_operational_data/1, gloss('summary does not cover sensitive operational data related to law‑enforcement activities'), source('celex:32024R1689/oj#art_59').

must_process_personal_data_in_sandbox(Actor, PD) :-
    personal_data(PD),
    ai_regulatory_sandbox(_Sandbox),
    provider(Actor),
    ai_system(AS),
    intended_purpose(AS),
    public_interest_area(Area),
    public_interest_area(Area),
    necessary_for_requirements(PD),
    not_fulfillable_by_non_personal(PD),
    monitoring_mechanism_exists(PD),
    response_mechanism_exists(PD),
    isolated_environment(PD),
    authorised_access(PD),
    sharing_allowed(PD),
    not_shared_outside(PD),
    no_decisions_affecting_subjects(PD),
    protected_by_measures(PD),
    deleted_after_termination(PD),
    logs_kept_duration(PD),
    documentation_kept(PD),
    summary_published(PD),
    not_sensitive_operational_data(PD).

provenance(must_process_personal_data_in_sandbox/2, 'celex:32024R1689/oj#art_59').

references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
