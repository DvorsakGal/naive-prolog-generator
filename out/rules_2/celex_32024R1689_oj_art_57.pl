% unit       : celex:32024R1689/oj#art_57
% title      : AI regulatory sandboxes
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 76b101b1acebbba4671382f99a1137915d81ef8da6a8a30a4c7b40ef4332c604
% model      : gpt-oss:120b-cloud
% prompt sha : 0c0b80717d1cf3b54e9f8a07911dbea766eeebad52a478829ca220e05c302bf9
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_57').
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_57').
:- pred board/1, gloss('Board established under the AI Regulation'), source('celex:32024R1689/oj#art_57').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_57').
:- pred ai_regulatory_sandbox/1, gloss('AI regulatory sandbox'), source('celex:32024R1689/oj#art_57').
:- pred sandbox_plan/1, gloss('Specific plan and terms for participation in a sandbox'), source('celex:32024R1689/oj#art_57').
:- pred exit_report/1, gloss('Report detailing activities and outcomes of a sandbox'), source('celex:32024R1689/oj#art_57').
:- pred written_proof/1, gloss('Written proof of activities carried out in a sandbox'), source('celex:32024R1689/oj#art_57').
:- pred annual_report/1, gloss('Annual report on sandbox implementation'), source('celex:32024R1689/oj#art_57').
:- pred mitigation_measure/1, gloss('Measure to mitigate identified risks'), source('celex:32024R1689/oj#art_57').
:- pred administrative_fine/1, gloss('Administrative monetary penalty'), source('celex:32024R1689/oj#art_57').
:- pred liability/1, gloss('Legal liability for damage'), source('celex:32024R1689/oj#art_57').
:- pred established_under/2, gloss('Sandbox established under a specific paragraph'), source('celex:32024R1689/oj#art_57').
:- pred confidentiality_applies/1, gloss('Confidentiality provisions apply'), source('celex:32024R1689/oj#art_78').
:- pred agreement/2, gloss('Explicit agreement between provider and authority'), source('celex:32024R1689/oj#art_57').
:- pred national_data_protection_authority/1, gloss('National data protection authority'), source('celex:32024R1689/oj#art_57').
:- pred identified_in_sandbox/1, gloss('Risk identified during sandbox activities'), source('celex:32024R1689/oj#art_57').
:- pred decision/1, gloss('Decision to suspend testing'), source('celex:32024R1689/oj#art_57').
:- pred damage/1, gloss('Damage inflicted on third parties'), source('celex:32024R1689/oj#art_57').
:- pred complied_with_plan/1, gloss('Provider has complied with the specific sandbox plan'), source('celex:32024R1689/oj#art_57').
:- pred followed_guidance_good_faith/1, gloss('Provider has followed guidance in good faith'), source('celex:32024R1689/oj#art_57').
:- pred take_into_account/2, gloss('Authority takes a document into account'), source('celex:32024R1689/oj#art_57').
:- pred objective_improving_legal_certainty/1, gloss('Objective of improving legal certainty'), source('celex:32024R1689/oj#art_57').
:- pred objective_sharing_best_practices/1, gloss('Objective of sharing best practices'), source('celex:32024R1689/oj#art_57').
:- pred objective_fostering_innovation/1, gloss('Objective of fostering innovation'), source('celex:32024R1689/oj#art_57').
:- pred objective_evidence_based_learning/1, gloss('Objective of evidence‑based regulatory learning'), source('celex:32024R1689/oj#art_57').
:- pred objective_facilitating_market_access/1, gloss('Objective of facilitating market access'), source('celex:32024R1689/oj#art_57').
:- pred objective_cross_border_cooperation/1, gloss('Objective of cross‑border cooperation'), source('celex:32024R1689/oj#art_57').

%--- Obligations ----------------------------------------------------------------

must_establish_sandbox(NCA, national) :-
    member_state(MS),
    national_competent_authority(NCA),
    member_state(MS).

provenance(must_establish_sandbox/2, 'celex:32024R1689/oj#art_57').

required_operational_by(Sandbox, date('2026-08-02')) :-
    ai_regulatory_sandbox(Sandbox).

provenance(required_operational_by/2, 'celex:32024R1689/oj#art_57').

must_allocate_resources(NCA) :-
    national_competent_authority(NCA).

provenance(must_allocate_resources/1, 'celex:32024R1689/oj#art_57').

must_cooperate(NCA, MSA) :-
    national_competent_authority(NCA),
    market_surveillance_authority(MSA).

provenance(must_cooperate/2, 'celex:32024R1689/oj#art_57').

must_provide_controlled_environment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).

provenance(must_provide_controlled_environment/1, 'celex:32024R1689/oj#art_57').

must_facilitate_development(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).

provenance(must_facilitate_development/1, 'celex:32024R1689/oj#art_57').

must_include_testing_in_real_world_conditions(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).

provenance(must_include_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_57').

must_provide_guidance(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).

provenance(must_provide_guidance/2, 'celex:32024R1689/oj#art_57').

must_provide_supervision(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).

provenance(must_provide_supervision/2, 'celex:32024R1689/oj#art_57').

must_provide_support(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).

provenance(must_provide_support/2, 'celex:32024R1689/oj#art_57').

must_provide_exit_report(NCA, Provider, Report) :-
    national_competent_authority(NCA),
    provider(Provider),
    exit_report(Report),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).

provenance(must_provide_exit_report/3, 'celex:32024R1689/oj#art_57').

must_provide_written_proof(NCA, Provider, Proof) :-
    national_competent_authority(NCA),
    provider(Provider),
    written_proof(Proof),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).

provenance(must_provide_written_proof/3, 'celex:32024R1689/oj#art_57').

must_submit_annual_report(NCA, Report) :-
    national_competent_authority(NCA),
    annual_report(Report),
    sandbox_established_since_one_year(NCA).

provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_57').

must_inform(ai_office, NCA, sandbox_established) :-
    ai_office(AO),
    national_competent_authority(NCA).

provenance(must_inform/3, 'celex:32024R1689/oj#art_57').

must_make_public(ai_office, sandbox_list) :-
    ai_office(AO).

provenance(must_make_public/2, 'celex:32024R1689/oj#art_57').

must_coordinate(NCA, Board) :-
    national_competent_authority(NCA),
    board(Board).

provenance(must_coordinate/2, 'celex:32024R1689/oj#art_57').

must_exercise_supervisory_powers(NCA) :-
    national_competent_authority(NCA).

provenance(must_exercise_supervisory_powers/1, 'celex:32024R1689/oj#art_57').

must_suspend_testing(NCA) :-
    national_competent_authority(NCA),
    risk(Risk),
    identified_in_sandbox(Risk),
    \+ mitigation_measure(Risk).

provenance(must_suspend_testing/1, 'celex:32024R1689/oj#art_57').

must_inform(ai_office, NCA, Decision) :-
    ai_office(AO),
    national_competent_authority(NCA),
    decision(Decision).

provenance(must_inform/3, 'celex:32024R1689/oj#art_57').

must_develop_interface(Commission) :-
    commission(Commission).

provenance(must_develop_interface/1, 'celex:32024R1689/oj#art_57').

must_coordinate(Commission, NCA) :-
    commission(Commission),
    national_competent_authority(NCA).

provenance(must_coordinate/2, 'celex:32024R1689/oj#art_57').

%--- Permissions ----------------------------------------------------------------

permitted_establish_joint_sandbox(NCA, OtherMS) :-
    member_state(OtherMS),
    national_competent_authority(NCA).

provenance(permitted_establish_joint_sandbox/2, 'celex:32024R1689/oj#art_57').

permitted_establish_sandbox(NCA, regional) :-
    national_competent_authority(NCA).

provenance(permitted_establish_sandbox/2, 'celex:32024R1689/oj#art_57').

permitted_establish_sandbox(NCA, local) :-
    national_competent_authority(NCA).

provenance(permitted_establish_sandbox/2, 'celex:32024R1689/oj#art_57').

permitted_establish_sandbox(EDS, union_institutions) :-
    european_data_protection_supervisor(EDS).

provenance(permitted_establish_sandbox/2, 'celex:32024R1689/oj#art_57').

permitted_provide_technical_support(Commission, NCA) :-
    commission(Commission),
    national_competent_authority(NCA).

provenance(permitted_provide_technical_support/2, 'celex:32024R1689/oj#art_57').

permitted_access_exit_report(Commission, Report) :-
    commission(Commission),
    exit_report(Report),
    confidentiality_applies(Report).

provenance(permitted_access_exit_report/2, 'celex:32024R1689/oj#art_57').

permitted_access_exit_report(Board, Report) :-
    board(Board),
    exit_report(Report),
    confidentiality_applies(Report).

provenance(permitted_access_exit_report/2, 'celex:32024R1689/oj#art_57').

permitted_public_release(Report) :-
    exit_report(Report),
    agreement(Provider, NCA),
    provider(Provider),
    national_competent_authority(NCA).

provenance(permitted_public_release/1, 'celex:32024R1689/oj#art_57').

%--- Prohibitions ---------------------------------------------------------------

prohibited_affect_other_sandboxes(NCA) :-
    national_competent_authority(NCA).

provenance(prohibited_affect_other_sandboxes/1, 'celex:32024R1689/oj#art_57').

prohibited_affect_supervisory_powers(NCA) :-
    national_competent_authority(NCA).

provenance(prohibited_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57').

%--- Exemptions -----------------------------------------------------------------

exempt_administrative_fine(Provider) :-
    provider(Provider),
    complied_with_plan(Provider),
    followed_guidance_good_faith(Provider).

provenance(exempt_administrative_fine/1, 'celex:32024R1689/oj#art_57').

%--- Objectives ------------------------------------------------------------------

objective_improving_legal_certainty(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

provenance(objective_improving_legal_certainty/1, 'celex:32024R1689/oj#art_57').

objective_sharing_best_practices(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

provenance(objective_sharing_best_practices/1, 'celex:32024R1689/oj#art_57').

objective_fostering_innovation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

provenance(objective_fostering_innovation/1, 'celex:32024R1689/oj#art_57').

objective_evidence_based_learning(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

provenance(objective_evidence_based_learning/1, 'celex:32024R1689/oj#art_57').

objective_facilitating_market_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

provenance(objective_facilitating_market_access/1, 'celex:32024R1689/oj#art_57').

objective_cross_border_cooperation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

provenance(objective_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57').

%--- Associations ---------------------------------------------------------------

must_associate_authority(NCA, DPA) :-
    national_competent_authority(NCA),
    national_data_protection_authority(DPA).

provenance(must_associate_authority/2, 'celex:32024R1689/oj#art_57').

must_associate_authority(NCA, OtherAuthority) :-
    national_competent_authority(NCA),
    authority(OtherAuthority).

provenance(must_associate_authority/2, 'celex:32024R1689/oj#art_57').

%--- Liability ------------------------------------------------------------------

liability(Provider, Damage) :-
    provider(Provider),
    damage(Damage).

provenance(liability/2, 'celex:32024R1689/oj#art_57').

%--- Document handling -----------------------------------------------------------

take_into_account(MSA, Report) :-
    market_surveillance_authority(MSA),
    exit_report(Report).

provenance(take_into_account/2, 'celex:32024R1689/oj#art_57').

take_into_account(NB, Report) :-
    notified_body(NB),
    exit_report(Report).

provenance(take_into_account/2, 'celex:32024R1689/oj#art_57').

%--- References -----------------------------------------------------------------

references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
