% unit       : celex:32024R1689/oj#art_57
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 76b101b1acebbba4671382f99a1137915d81ef8da6a8a30a4c7b40ef4332c604
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 63eb9cfeec997f998081a659079538cc2dc708391f18f92457dc028ec85dfb8f
% cached     : False
% title      : AI regulatory sandboxes
:- pred must_establish_ai_regulatory_sandbox/2, gloss('Member State obligation to establish at least one national sandbox'), source('celex:32024R1689/oj#art_57').
:- pred operational_by_date/2, gloss('sandbox is operational by a specific date'), source('celex:32024R1689/oj#art_57').
:- pred sandbox_fulfilled_by_participation/2, gloss('obligation met by participating in existing sandbox with equivalent coverage'), source('celex:32024R1689/oj#art_57').
:- pred must_allocate_sufficient_resources/2, gloss('competent authority obligation to allocate resources for sandbox compliance'), source('celex:32024R1689/oj#art_57').
:- pred provides_controlled_environment/2, gloss('sandbox provides environment fostering innovation and testing'), source('celex:32024R1689/oj#art_57').
:- pred agreed_sandbox_plan/2, gloss('plan agreed between provider and competent authority'), source('celex:32024R1689/oj#art_57').
:- pred must_provide_guidance_and_supervision/2, gloss('competent authority obligation to guide and supervise within sandbox'), source('celex:32024R1689/oj#art_57').
:- pred must_provide_regulatory_guidance/2, gloss('competent authority obligation to provide guidance on regulatory expectations'), source('celex:32024R1689/oj#art_57').
:- pred must_provide_written_proof/2, gloss('competent authority obligation to provide proof of successful activities upon request'), source('celex:32024R1689/oj#art_57').
:- pred must_provide_exit_report/2, gloss('competent authority obligation to provide exit report detailing results'), source('celex:32024R1689/oj#art_57').
:- pred must_associate_data_protection_authority/2, gloss('obligation to involve DPA when personal data processing is involved'), source('celex:32024R1689/oj#art_57').
:- pred must_mitigate_significant_risk/2, gloss('obligation to adequately mitigate significant risks identified in sandbox'), source('celex:32024R1689/oj#art_57').
:- pred has_power_to_suspend_testing/2, gloss('authority power to suspend testing or participation if mitigation impossible'), source('celex:32024R1689/oj#art_57').
:- pred must_inform_ai_office_of_suspension/2, gloss('obligation to inform AI Office of suspension decision'), source('celex:32024R1689/oj#art_57').
:- pred exempt_from_administrative_fines/2, gloss('exemption from fines for participants observing plan and guidance in good faith'), source('celex:32024R1689/oj#art_57').
:- pred must_submit_annual_report/2, gloss('obligation to submit annual reports to AI Office and Board'), source('celex:32024R1689/oj#art_57').
:- pred must_make_report_public/2, gloss('obligation to make annual reports or abstracts available online'), source('celex:32024R1689/oj#art_57').
:- pred must_develop_single_interface/2, gloss('Commission obligation to develop dedicated interface for sandboxes'), source('celex:32024R1689/oj#art_57').
:- pred must_inform_of_sandbox_establishment/2, gloss('obligation to inform AI Office and Board of sandbox establishment'), source('celex:32024R1689/oj#art_57').

must_establish_ai_regulatory_sandbox(MemberState, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    operational_by_date(Sandbox, date(2026, 8, 2)).

sandbox_fulfilled_by_participation(MemberState, ExistingSandbox) :-
    ai_regulatory_sandbox(ExistingSandbox),
    equivalent_national_coverage(ExistingSandbox, MemberState).

operational_by_date(Sandbox, Date) :-
    ai_regulatory_sandbox(Sandbox),
    Date = date(2026, 8, 2).

must_allocate_sufficient_resources(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).

provides_controlled_environment(Sandbox, Plan) :-
    ai_regulatory_sandbox(Sandbox),
    agreed_sandbox_plan(Sandbox, Plan).

agreed_sandbox_plan(Sandbox, Plan) :-
    ai_regulatory_sandbox(Sandbox),
    sandbox_plan(Plan).

must_provide_guidance_and_supervision(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).

must_provide_regulatory_guidance(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider).

must_provide_written_proof(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider).

must_provide_exit_report(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider).

must_associate_data_protection_authority(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    involves_personal_data_processing(Sandbox).

must_mitigate_significant_risk(Authority, Risk) :-
    national_competent_authority(Authority),
    risk(Risk),
    significant_risk_to_health_safety_or_rights(Risk).

has_power_to_suspend_testing(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    \+ effective_mitigation_possible(Sandbox).

must_inform_ai_office_of_suspension(Authority, Decision) :-
    national_competent_authority(Authority),
    suspension_decision(Decision).

exempt_from_administrative_fines(Provider, Sandbox) :-
    provider(Provider),
    ai_regulatory_sandbox(Sandbox),
    observes_sandbox_plan(Provider, Sandbox),
    follows_guidance_in_good_faith(Provider, Sandbox).

must_submit_annual_report(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).

must_make_report_public(Authority, Report) :-
    national_competent_authority(Authority),
    annual_report(Report).

must_develop_single_interface(commission, Interface) :-
    single_interface(Interface).

must_inform_of_sandbox_establishment(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).

% Helper predicates for body discrimination
involves_personal_data_processing(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

significant_risk_to_health_safety_or_rights(Risk) :-
    risk(Risk).

effective_mitigation_possible(_Sandbox) :-
    fail.

observes_sandbox_plan(_Provider, _Sandbox).

follows_guidance_in_good_faith(_Provider, _Sandbox).

suspension_decision(_Decision).

annual_report(_Report).

single_interface(_Interface).

equivalent_national_coverage(_Sandbox, _MemberState).

provenance(must_establish_ai_regulatory_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(operational_by_date/2, 'celex:32024R1689/oj#art_57').
provenance(sandbox_fulfilled_by_participation/2, 'celex:32024R1689/oj#art_57').
provenance(must_allocate_sufficient_resources/2, 'celex:32024R1689/oj#art_57').
provenance(provides_controlled_environment/2, 'celex:32024R1689/oj#art_57').
provenance(agreed_sandbox_plan/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_guidance_and_supervision/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_regulatory_guidance/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_written_proof/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(must_associate_data_protection_authority/2, 'celex:32024R1689/oj#art_57').
provenance(must_mitigate_significant_risk/2, 'celex:32024R1689/oj#art_57').
provenance(has_power_to_suspend_testing/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_ai_office_of_suspension/2, 'celex:32024R1689/oj#art_57').
provenance(exempt_from_administrative_fines/2, 'celex:32024R1689/oj#art_57').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_57').
provenance(must_make_report_public/2, 'celex:32024R1689/oj#art_57').
provenance(must_develop_single_interface/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_of_sandbox_establishment/2, 'celex:32024R1689/oj#art_57').

references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').
