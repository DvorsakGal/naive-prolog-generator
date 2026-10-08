% unit       : celex:32024R1689/oj#art_59
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : gpt-oss:120b-cloud
% prompt sha : c2f0ee6a1a125d8871a543fd3f5fef0ccf199d1ec6acb7f44fef99969130d7f3
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred public_authority/1, gloss('public authority'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_ai_system/1, gloss('AI system operating in the regulatory sandbox'), source('celex:32024R1689/oj#art_59').
:- pred objective_develop_train_test/1, gloss('purpose of developing, training and testing AI systems'), source('celex:32024R1689/oj#art_59').
:- pred objective_public_interest_area/2, gloss('public‑interest area in which AI system is developed'), source('celex:32024R1689/oj#art_59').
:- pred public_interest_area/1, gloss('specific public‑interest area'), source('celex:32024R1689/oj#art_59').
:- pred condition_a/1, gloss('condition a of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred condition_b/2, gloss('condition b of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred condition_c/1, gloss('condition c of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred condition_d/2, gloss('condition d of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred condition_e/2, gloss('condition e of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred condition_f/1, gloss('condition f of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred condition_g/1, gloss('condition g of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred condition_h/1, gloss('condition h of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred condition_i/1, gloss('condition i of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred condition_j/1, gloss('condition j of Article 59'), source('celex:32024R1689/oj#art_59').
:- pred permitted_processing_personal_data/2, gloss('permission to process personal data in the sandbox for AI development, training and testing'), source('celex:32024R1689/oj#art_59').
:- pred share_allowed_by_union_law/2, gloss('sharing of data is allowed by Union law'), source('celex:32024R1689/oj#art_59').
:- pred not_shared_outside_sandbox/1, gloss('personal data not shared outside the sandbox'), source('celex:32024R1689/oj#art_59').
:- pred monitoring_mechanisms/1, gloss('effective monitoring mechanisms are in place'), source('celex:32024R1689/oj#art_59').
:- pred high_risk_identified/1, gloss('high risks to data subjects may arise'), source('celex:32024R1689/oj#art_59').
:- pred isolated_environment/1, gloss('data are in an isolated processing environment'), source('celex:32024R1689/oj#art_59').
:- pred control_of_provider/1, gloss('environment under control of prospective provider'), source('celex:32024R1689/oj#art_59').
:- pred authorised_person_access/1, gloss('only authorised persons have access'), source('celex:32024R1689/oj#art_59').
:- pred protected_by_measures/1, gloss('data protected by technical and organisational measures'), source('celex:32024R1689/oj#art_59').
:- pred deleted_after_termination/1, gloss('data deleted after sandbox participation ends'), source('celex:32024R1689/oj#art_59').
:- pred logs_kept_for_participation/1, gloss('logs kept for duration of participation'), source('celex:32024R1689/oj#art_59').
:- pred documentation_kept/1, gloss('process description and rationale kept with testing results'), source('celex:32024R1689/oj#art_59').
:- pred summary_published/1, gloss('short summary published on competent authority website'), source('celex:32024R1689/oj#art_59').
:- pred not_sensitive_operational_data_in_summary/1, gloss('summary excludes sensitive operational data'), source('celex:32024R1689/oj#art_59').
:- pred no_measures_affecting_subjects/1, gloss('processing does not lead to measures affecting data subjects'), source('celex:32024R1689/oj#art_59').
:- pred no_effect_on_rights/1, gloss('processing does not affect data subjects\' rights'), source('celex:32024R1689/oj#art_59').
:- pred requirement_cannot_be_fulfilled_by_non_personal/1, gloss('requirements cannot be met with non‑personal data'), source('celex:32024R1689/oj#art_59').

% Public authority (approximated by law enforcement authority)
public_authority(P) :-
    law_enforcement_authority(P),
    law_enforcement_authority(P).

% Sandbox AI system
sandbox_ai_system(AI) :-
    ai_system(AI),
    ai_system(AI).

% Purpose of development, training and testing
objective_develop_train_test(AI) :-
    sandbox_ai_system(AI),
    sandbox_ai_system(AI).

% Public‑interest areas (enumerated)
public_interest_area(public_safety_and_health).
public_interest_area(environment_protection).
public_interest_area(energy_sustainability).
public_interest_area(transport_safety_resilience).
public_interest_area(public_administration_efficiency).

objective_public_interest_area(AI, Area) :-
    ai_system(AI),
    public_interest_area(Area).

% Condition a
condition_a(AI) :-
    ai_system(AI),
    provider(P),
    public_authority(P),
    objective_public_interest_area(AI, _).

% Condition b
condition_b(PD, AI) :-
    personal_data(PD),
    ai_system(AI),
    requirement_cannot_be_fulfilled_by_non_personal(PD).

% Condition c
condition_c(AI) :-
    monitoring_mechanisms(AI),
    high_risk_identified(AI).

monitoring_mechanisms(AI) :-
    ai_system(AI),
    ai_system(AI).

high_risk_identified(AI) :-
    ai_system(AI),
    ai_system(AI).

% Condition d
condition_d(PD, AI) :-
    isolated_environment(PD),
    control_of_provider(AI),
    authorised_person_access(PD),
    ai_system(AI).

isolated_environment(PD) :-
    personal_data(PD),
    personal_data(PD).

control_of_provider(AI) :-
    provider(P),
    ai_system(AI),
    ai_system(AI).

authorised_person_access(PD) :-
    personal_data(PD),
    personal_data(PD).

% Condition e
condition_e(AI, PD) :-
    share_allowed_by_union_law(AI, PD),
    not_shared_outside_sandbox(PD),
    provider(AI).

share_allowed_by_union_law(AI, PD) :-
    provider(AI),
    personal_data(PD).

not_shared_outside_sandbox(PD) :-
    personal_data(PD),
    personal_data(PD).

% Condition f
condition_f(PD) :-
    no_measures_affecting_subjects(PD),
    no_effect_on_rights(PD).

no_measures_affecting_subjects(PD) :-
    personal_data(PD),
    personal_data(PD).

no_effect_on_rights(PD) :-
    personal_data(PD),
    personal_data(PD).

% Condition g
condition_g(PD) :-
    protected_by_measures(PD),
    deleted_after_termination(PD).

protected_by_measures(PD) :-
    personal_data(PD),
    personal_data(PD).

deleted_after_termination(PD) :-
    personal_data(PD),
    personal_data(PD).

% Condition h
condition_h(AI) :-
    logs_kept_for_participation(AI).

logs_kept_for_participation(AI) :-
    ai_system(AI),
    ai_system(AI).

% Condition i
condition_i(AI) :-
    documentation_kept(AI).

documentation_kept(AI) :-
    ai_system(AI),
    ai_system(AI).

% Condition j
condition_j(AI) :-
    summary_published(AI),
    not_sensitive_operational_data_in_summary(AI).

summary_published(AI) :-
    ai_system(AI),
    ai_system(AI).

not_sensitive_operational_data_in_summary(AI) :-
    ai_system(AI),
    ai_system(AI).

% Permission to process personal data in the sandbox
permitted_processing_personal_data(PD, AI) :-
    personal_data(PD),
    ai_system(AI),
    sandbox_ai_system(AI),
    objective_develop_train_test(AI),
    condition_a(AI),
    condition_b(PD, AI),
    condition_c(AI),
    condition_d(PD, AI),
    condition_e(AI, PD),
    condition_f(PD),
    condition_g(PD),
    condition_h(AI),
    condition_i(AI),
    condition_j(AI).

% Provenance
provenance(public_authority/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_ai_system/1, 'celex:32024R1689/oj#art_59').
provenance(objective_develop_train_test/1, 'celex:32024R1689/oj#art_59').
provenance(objective_public_interest_area/2, 'celex:32024R1689/oj#art_59').
provenance(public_interest_area/1, 'celex:32024R1689/oj#art_59').
provenance(condition_a/1, 'celex:32024R1689/oj#art_59').
provenance(condition_b/2, 'celex:32024R1689/oj#art_59').
provenance(condition_c/1, 'celex:32024R1689/oj#art_59').
provenance(condition_d/2, 'celex:32024R1689/oj#art_59').
provenance(condition_e/2, 'celex:32024R1689/oj#art_59').
provenance(condition_f/1, 'celex:32024R1689/oj#art_59').
provenance(condition_g/1, 'celex:32024R1689/oj#art_59').
provenance(condition_h/1, 'celex:32024R1689/oj#art_59').
provenance(condition_i/1, 'celex:32024R1689/oj#art_59').
provenance(condition_j/1, 'celex:32024R1689/oj#art_59').
provenance(permitted_processing_personal_data/2, 'celex:32024R1689/oj#art_59').
provenance(share_allowed_by_union_law/2, 'celex:32024R1689/oj#art_59').
provenance(not_shared_outside_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(monitoring_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(high_risk_identified/1, 'celex:32024R1689/oj#art_59').
provenance(isolated_environment/1, 'celex:32024R1689/oj#art_59').
provenance(control_of_provider/1, 'celex:32024R1689/oj#art_59').
provenance(authorised_person_access/1, 'celex:32024R1689/oj#art_59').
provenance(protected_by_measures/1, 'celex:32024R1689/oj#art_59').
provenance(deleted_after_termination/1, 'celex:32024R1689/oj#art_59').
provenance(logs_kept_for_participation/1, 'celex:32024R1689/oj#art_59').
provenance(documentation_kept/1, 'celex:32024R1689/oj#art_59').
provenance(summary_published/1, 'celex:32024R1689/oj#art_59').
provenance(not_sensitive_operational_data_in_summary/1, 'celex:32024R1689/oj#art_59').
provenance(no_measures_affecting_subjects/1, 'celex:32024R1689/oj#art_59').
provenance(no_effect_on_rights/1, 'celex:32024R1689/oj#art_59').
provenance(requirement_cannot_be_fulfilled_by_non_personal/1, 'celex:32024R1689/oj#art_59').

% References
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
