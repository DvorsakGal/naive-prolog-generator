% unit       : celex:32024R1689/oj#art_57
% title      : AI regulatory sandboxes
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 76b101b1acebbba4671382f99a1137915d81ef8da6a8a30a4c7b40ef4332c604
% model      : gpt-oss:120b-cloud
% prompt sha : d10c26810e5fbf07e46ec9400a88c341fa2de1227c8e47a3ebcd8e4f42b2d874
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_establish_ai_regulatory_sandbox/1, gloss('competent authority must establish at least one AI regulatory sandbox'), source('celex:32024R1689/oj#art_57').
:- pred required_establish_ai_regulatory_sandbox_joint/2, gloss('competent authorities may jointly establish an AI regulatory sandbox'), source('celex:32024R1689/oj#art_57').
:- pred required_establish_additional_ai_regulatory_sandbox/1, gloss('competent authority may establish additional regional or local AI regulatory sandboxes'), source('celex:32024R1689/oj#art_57').
:- pred permitted_establish_ai_regulatory_sandbox_by_supervisor/1, gloss('European Data Protection Supervisor may establish an AI regulatory sandbox for Union institutions'), source('celex:32024R1689/oj#art_57').
:- pred required_allocate_resources/1, gloss('competent authority must allocate sufficient resources for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_57').
:- pred required_provide_controlled_environment/1, gloss('AI regulatory sandbox must provide a controlled environment fostering innovation'), source('celex:32024R1689/oj#art_57').
:- pred required_include_real_world_testing/1, gloss('AI regulatory sandbox may include testing in real world conditions'), source('celex:32024R1689/oj#art_57').
:- pred required_provide_guidance/2, gloss('competent authority must provide guidance, supervision and support within the sandbox'), source('celex:32024R1689/oj#art_57').
:- pred required_provide_exit_report/2, gloss('competent authority must provide a written exit report to the provider'), source('celex:32024R1689/oj#art_57').
:- pred permitted_access_exit_report/2, gloss('Commission and Board may access exit reports'), source('celex:32024R1689/oj#art_57').
:- pred permitted_public_release_exit_report/2, gloss('Exit report may be made publicly available with explicit agreement'), source('celex:32024R1689/oj#art_57').
:- pred objective_improving_legal_certainty/1, gloss('sandbox aims to improve legal certainty'), source('celex:32024R1689/oj#art_57').
:- pred objective_sharing_best_practices/1, gloss('sandbox aims to support sharing of best practices'), source('celex:32024R1689/oj#art_57').
:- pred objective_fostering_innovation/1, gloss('sandbox aims to foster innovation and competitiveness'), source('celex:32024R1689/oj#art_57').
:- pred objective_evidence_based_learning/1, gloss('sandbox aims to contribute to evidence‑based regulatory learning'), source('celex:32024R1689/oj#art_57').
:- pred objective_facilitating_market_access/1, gloss('sandbox aims to facilitate and accelerate market access for AI systems'), source('celex:32024R1689/oj#art_57').
:- pred required_associate_data_protection_authority/2, gloss('national competent authority must associate data protection authority with sandbox operation'), source('celex:32024R1689/oj#art_57').
:- pred prohibited_affect_supervisory_powers/1, gloss('AI regulatory sandboxes must not affect supervisory or corrective powers of competent authorities'), source('celex:32024R1689/oj#art_57').
:- pred required_suspend_testing_process/2, gloss('competent authority may suspend testing process if no effective mitigation is possible'), source('celex:32024R1689/oj#art_57').
:- pred exempt_admin_fine/1, gloss('providers are exempt from administrative fines when complying with sandbox plan and guidance'), source('celex:32024R1689/oj#art_57').
:- pred required_coordinate/1, gloss('national competent authorities must coordinate and cooperate within the Board framework'), source('celex:32024R1689/oj#art_57').
:- pred required_inform_ai_office/1, gloss('national competent authorities must inform the AI Office and the Board of sandbox establishment'), source('celex:32024R1689/oj#art_57').
:- pred required_publish_sandbox_list/0, gloss('AI Office must make publicly available a list of planned and existing sandboxes'), source('celex:32024R1689/oj#art_57').
:- pred required_submit_annual_report/2, gloss('national competent authorities must submit annual reports to the AI Office and the Board'), source('celex:32024R1689/oj#art_57').
:- pred required_develop_interface/1, gloss('Commission must develop a single dedicated interface for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_57').
:- pred required_coordinate_with_authorities/1, gloss('Commission must proactively coordinate with national competent authorities'), source('celex:32024R1689/oj#art_57').

% --- Core obligations and permissions ---

required_establish_ai_regulatory_sandbox(Authority) :-
    member_state(Authority),
    national_competent_authority(Authority).

required_establish_ai_regulatory_sandbox_joint(Authority1, Authority2) :-
    member_state(Authority1),
    member_state(Authority2),
    national_competent_authority(Authority1),
    national_competent_authority(Authority2).

required_establish_additional_ai_regulatory_sandbox(Authority) :-
    member_state(Authority),
    national_competent_authority(Authority).

permitted_establish_ai_regulatory_sandbox_by_supervisor(Supervisor) :-
    european_data_protection_supervisor(Supervisor).

required_allocate_resources(Authority) :-
    national_competent_authority(Authority).

required_provide_controlled_environment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

required_include_real_world_testing(Sandbox) :-
    required_provide_controlled_environment(Sandbox),
    testing_in_real_world_conditions(Sandbox).

required_provide_guidance(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).

required_provide_exit_report(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider).

permitted_access_exit_report(Actor, Report) :-
    (commission(Actor) ; board(Actor)),
    exit_report(Report).

permitted_public_release_exit_report(Provider, Report) :-
    provider(Provider),
    exit_report(Report),
    explicit_agreement(Provider, Report).

% --- Objectives of the sandbox ---

objective_improving_legal_certainty(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

objective_sharing_best_practices(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

objective_fostering_innovation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

objective_evidence_based_learning(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

objective_facilitating_market_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

% --- Cooperation with data protection authorities ---

required_associate_data_protection_authority(Authority, DataProtectionAuthority) :-
    national_competent_authority(Authority),
    data_protection_authority(DataProtectionAuthority).

% --- Supervisory powers protection ---

prohibited_affect_supervisory_powers(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

% --- Risk mitigation and suspension ---

required_suspend_testing_process(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    significant_risk_identified(Sandbox),
    \+ effective_mitigation_possible(Sandbox).

% --- Liability and fines exemption ---

exempt_admin_fine(Provider) :-
    provider(Provider),
    participating_in_sandbox(Provider, Sandbox),
    follows_sandbox_plan(Provider, Sandbox),
    follows_guidance(Provider, Sandbox).

% --- Coordination and reporting ---

required_coordinate(Authority) :-
    national_competent_authority(Authority).

required_inform_ai_office(Authority) :-
    national_competent_authority(Authority).

required_publish_sandbox_list.

required_submit_annual_report(Authority, Report) :-
    national_competent_authority(Authority),
    annual_report(Report).

% --- Commission duties ---

required_develop_interface(Commission) :-
    commission(Commission).

required_coordinate_with_authorities(Commission) :-
    commission(Commission).

% --- Provenance for each clause head ---

provenance(required_establish_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(required_establish_ai_regulatory_sandbox_joint/2, 'celex:32024R1689/oj#art_57').
provenance(required_establish_additional_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(permitted_establish_ai_regulatory_sandbox_by_supervisor/1, 'celex:32024R1689/oj#art_57').
provenance(required_allocate_resources/1, 'celex:32024R1689/oj#art_57').
provenance(required_provide_controlled_environment/1, 'celex:32024R1689/oj#art_57').
provenance(required_include_real_world_testing/1, 'celex:32024R1689/oj#art_57').
provenance(required_provide_guidance/2, 'celex:32024R1689/oj#art_57').
provenance(required_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(permitted_access_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(permitted_public_release_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(objective_improving_legal_certainty/1, 'celex:32024R1689/oj#art_57').
provenance(objective_sharing_best_practices/1, 'celex:32024R1689/oj#art_57').
provenance(objective_fostering_innovation/1, 'celex:32024R1689/oj#art_57').
provenance(objective_evidence_based_learning/1, 'celex:32024R1689/oj#art_57').
provenance(objective_facilitating_market_access/1, 'celex:32024R1689/oj#art_57').
provenance(required_associate_data_protection_authority/2, 'celex:32024R1689/oj#art_57').
provenance(prohibited_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57').
provenance(required_suspend_testing_process/2, 'celex:32024R1689/oj#art_57').
provenance(exempt_admin_fine/1, 'celex:32024R1689/oj#art_57').
provenance(required_coordinate/1, 'celex:32024R1689/oj#art_57').
provenance(required_inform_ai_office/1, 'celex:32024R1689/oj#art_57').
provenance(required_publish_sandbox_list/0, 'celex:32024R1689/oj#art_57').
provenance(required_submit_annual_report/2, 'celex:32024R1689/oj#art_57').
provenance(required_develop_interface/1, 'celex:32024R1689/oj#art_57').
provenance(required_coordinate_with_authorities/1, 'celex:32024R1689/oj#art_57').

% --- References from this provision ---

references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').
