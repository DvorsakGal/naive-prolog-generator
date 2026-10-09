% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : c01d3b540afc32817d8dcbc867dad20d73784c61a2ed0b3d46c6f25a3d566162
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred lawfully_collected_for_other_purposes/1, gloss('personal data lawfully collected for other purposes'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_a/1, gloss('AI systems developed for safeguarding substantial public interest in listed areas'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_b/1, gloss('Data necessary for complying with requirements that cannot be met with non‑personal data'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_c/1, gloss('Effective monitoring and response mechanisms for high‑risk impacts'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_d/1, gloss('Data kept in isolated, protected environment under control of prospective provider'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_e/1, gloss('Further sharing only under Union law; sandbox‑created data not shared outside'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_f/1, gloss('Processing does not lead to measures/decisions affecting data subjects or their rights'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_g/1, gloss('Technical and organisational protection; deletion after termination or end of retention'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_h/1, gloss('Logs kept for duration of sandbox participation'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_i/1, gloss('Complete description and rationale kept with testing results in technical documentation'), source('celex:32024R1689/oj#art_59').
:- pred required_condition_j/1, gloss('Short summary published on competent authority website, excluding sensitive operational data'), source('celex:32024R1689/oj#art_59').

% auxiliary predicates needed for the conditions
:- pred public_authority_applies/1, gloss('public authority'), source('celex:32024R1689/oj#art_59').
:- pred natural_or_legal_person_applies/1, gloss('natural or legal person'), source('celex:32024R1689/oj#art_59').
:- pred developed_for_public_interest/2, gloss('AI system developed for safeguarding substantial public interest'), source('celex:32024R1689/oj#art_59').
:- pred public_interest_area/1, gloss('area of substantial public interest listed in (a)'), source('celex:32024R1689/oj#art_59').
:- pred area_of_ai_system/2, gloss('AI system belongs to a specific public‑interest area'), source('celex:32024R1689/oj#art_59').

:- pred necessary_for_requirements/2, gloss('data necessary for complying with specific requirements'), source('celex:32024R1689/oj#art_59').
:- pred cannot_fulfill_with_non_personal_data/1, gloss('cannot be fulfilled with anonymised, synthetic or other non‑personal data'), source('celex:32024R1689/oj#art_59').

:- pred effective_monitoring_mechanisms/1, gloss('effective monitoring mechanisms in place'), source('celex:32024R1689/oj#art_59').
:- pred high_risk_identified/1, gloss('high risks to rights and freedoms may arise'), source('celex:32024R1689/oj#art_59').
:- pred response_mechanisms/1, gloss('response mechanisms to promptly mitigate risks'), source('celex:32024R1689/oj#art_59').

:- pred isolated_protected_environment/1, gloss('data processed in a functionally separate, isolated and protected environment'), source('celex:32024R1689/oj#art_59').
:- pred controlled_by_prospective_provider/1, gloss('environment under control of prospective provider'), source('celex:32024R1689/oj#art_59').
:- pred only_authorised_persons_have_access/1, gloss('only authorised persons have access to the data'), source('celex:32024R1689/oj#art_59').

:- pred share_allowed_under_union_law/1, gloss('further sharing only in accordance with Union data‑protection law'), source('celex:32024R1689/oj#art_59').
:- pred not_shared_outside_sandbox/1, gloss('personal data created in sandbox cannot be shared outside'), source('celex:32024R1689/oj#art_59').

:- pred not_affects_measures_or_decisions/1, gloss('processing does not lead to measures or decisions affecting data subjects'), source('celex:32024R1689/oj#art_59').
:- pred not_affects_rights/1, gloss('processing does not affect the application of data subjects’ rights'), source('celex:32024R1689/oj#art_59').

:- pred protected_by_measures/1, gloss('personal data protected by appropriate technical and organisational measures'), source('celex:32024R1689/oj#art_59').
:- pred deleted_when_termination_or_retention_end/1, gloss('personal data deleted after sandbox participation ends or retention period expires'), source('celex:32024R1689/oj#art_59').

:- pred logs_kept_for_participation_duration/1, gloss('logs of processing kept for duration of sandbox participation'), source('celex:32024R1689/oj#art_59').

:- pred description_kept_with_testing_results/1, gloss('complete description and rationale kept with testing results in technical documentation'), source('celex:32024R1689/oj#art_59').

:- pred summary_published/1, gloss('short summary of AI project published on competent authority website'), source('celex:32024R1689/oj#art_59').
:- pred not_sensitive_operational_data/1, gloss('summary does not cover sensitive operational data'), source('celex:32024R1689/oj#art_59').

% main permission
permitted_processing_of_personal_data_in_sandbox(PD) :-
    personal_data(PD),
    lawfully_collected_for_other_purposes(PD),
    required_condition_a(PD),
    required_condition_b(PD),
    required_condition_c(PD),
    required_condition_d(PD),
    required_condition_e(PD),
    required_condition_f(PD),
    required_condition_g(PD),
    required_condition_h(PD),
    required_condition_i(PD),
    required_condition_j(PD).

% condition implementations
required_condition_a(PD) :-
    ai_system(S),
    (public_authority_applies(A); natural_or_legal_person_applies(A)),
    developed_for_public_interest(S, A),
    public_interest_area(Area),
    area_of_ai_system(S, Area).

required_condition_b(PD) :-
    necessary_for_requirements(PD, chp_3_sec_2),
    cannot_fulfill_with_non_personal_data(PD).

required_condition_c(PD) :-
    effective_monitoring_mechanisms(PD),
    high_risk_identified(PD),
    response_mechanisms(PD).

required_condition_d(PD) :-
    isolated_protected_environment(PD),
    controlled_by_prospective_provider(PD),
    only_authorised_persons_have_access(PD).

required_condition_e(PD) :-
    share_allowed_under_union_law(PD),
    not_shared_outside_sandbox(PD).

required_condition_f(PD) :-
    not_affects_measures_or_decisions(PD),
    not_affects_rights(PD).

required_condition_g(PD) :-
    protected_by_measures(PD),
    deleted_when_termination_or_retention_end(PD).

required_condition_h(PD) :-
    logs_kept_for_participation_duration(PD).

required_condition_i(PD) :-
    description_kept_with_testing_results(PD).

required_condition_j(PD) :-
    summary_published(PD),
    not_sensitive_operational_data(PD).

% duty for law‑enforcement authorities (para 2)
must_base_processing_on_law(Authority, processing_of_personal_data_in_sandbox) :-
    law_enforcement_authority(Authority).

% provenance
provenance(permitted_processing_of_personal_data_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_a/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_b/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_c/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_d/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_e/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_f/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_g/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_h/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_i/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_j/1, 'celex:32024R1689/oj#art_59').
provenance(must_base_processing_on_law/2, 'celex:32024R1689/oj#art_59').

% references
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
