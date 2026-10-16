% unit       : celex:32024R1689/oj#art_57
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 76b101b1acebbba4671382f99a1137915d81ef8da6a8a30a4c7b40ef4332c604
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 33257f59cd29e9113dfbea4b9eae275975e3186c543894ad9b00889e478f9b12
% cached     : False
% title      : AI regulatory sandboxes
:- pred must_establish_sandbox/2, gloss('Member State must ensure competent authority establishes AI regulatory sandbox'), source('celex:32024R1689/oj#art_57/par_1').
:- pred sandbox_operational_by/2, gloss('sandbox must be operational by given date'), source('celex:32024R1689/oj#art_57/par_1').
:- pred may_establish_joint_sandbox/2, gloss('sandbox may be established jointly with other Member States'), source('celex:32024R1689/oj#art_57/par_1').
:- pred may_fulfil_obligation_by_participation/2, gloss('obligation may be fulfilled by participating in existing sandbox'), source('celex:32024R1689/oj#art_57/par_1/unp_2').
:- pred may_establish_additional_sandbox/2, gloss('additional sandboxes at regional/local level or jointly'), source('celex:32024R1689/oj#art_57/par_2').
:- pred may_establish_edps_sandbox/1, gloss('EDPS may establish sandbox for Union institutions'), source('celex:32024R1689/oj#art_57/par_3').
:- pred must_allocate_resources/2, gloss('Member State must ensure competent authorities allocate sufficient resources'), source('celex:32024R1689/oj#art_57/par_4').
:- pred must_cooperate_with_authorities/2, gloss('competent authorities shall cooperate with other relevant authorities'), source('celex:32024R1689/oj#art_57/par_4').
:- pred must_ensure_cooperation_between_sandboxes/2, gloss('Member State must ensure cooperation between sandbox authorities'), source('celex:32024R1689/oj#art_57/par_4').
:- pred sandbox_provides_controlled_environment/1, gloss('sandbox provides controlled environment for innovation'), source('celex:32024R1689/oj#art_57/par_5').
:- pred sandbox_may_include_real_world_testing/1, gloss('sandbox may include testing in real world conditions'), source('celex:32024R1689/oj#art_57/par_5').
:- pred must_provide_guidance/2, gloss('competent authority must provide guidance, supervision and support'), source('celex:32024R1689/oj#art_57/par_6').
:- pred must_provide_regulatory_guidance/2, gloss('competent authority must provide guidance on regulatory expectations'), source('celex:32024R1689/oj#art_57/par_7').
:- pred must_provide_written_proof/3, gloss('competent authority must provide written proof on request'), source('celex:32024R1689/oj#art_57/par_7').
:- pred must_provide_exit_report/2, gloss('competent authority must provide exit report'), source('celex:32024R1689/oj#art_57/par_7').
:- pred may_use_documentation_for_compliance/2, gloss('provider may use documentation to demonstrate compliance'), source('celex:32024R1689/oj#art_57/par_7').
:- pred must_take_documentation_positively/2, gloss('market surveillance authorities and notified bodies must take documentation positively'), source('celex:32024R1689/oj#art_57/par_7').
:- pred authorised_to_access_exit_reports/2, gloss('Commission and Board authorised to access exit reports'), source('celex:32024R1689/oj#art_57/par_8').
:- pred may_make_exit_report_public/1, gloss('exit report may be made publicly available'), source('celex:32024R1689/oj#art_57/par_8').
:- pred sandbox_objective/1, gloss('objective of AI regulatory sandbox'), source('celex:32024R1689/oj#art_57/par_9').
:- pred must_associate_data_protection_authorities/2, gloss('competent authority must associate data protection authorities'), source('celex:32024R1689/oj#art_57/par_10').
:- pred sandbox_not_affect_supervisory_powers/1, gloss('sandbox does not affect supervisory powers'), source('celex:32024R1689/oj#art_57/par_11').
:- pred must_mitigate_significant_risks/2, gloss('significant risks must result in adequate mitigation'), source('celex:32024R1689/oj#art_57/par_11').
:- pred may_suspend_testing/2, gloss('competent authority may suspend testing or participation'), source('celex:32024R1689/oj#art_57/par_11').
:- pred must_inform_ai_office_of_suspension/2, gloss('competent authority must inform AI Office of suspension decision'), source('celex:32024R1689/oj#art_57/par_11').
:- pred remain_liable/2, gloss('providers remain liable for damage under applicable law'), source('celex:32024R1689/oj#art_57/par_12').
:- pred exempt_from_administrative_fines/2, gloss('exempt from administrative fines under conditions'), source('celex:32024R1689/oj#art_57/par_12').
:- pred must_facilitate_cross_border_cooperation/1, gloss('sandbox must facilitate cross-border cooperation'), source('celex:32024R1689/oj#art_57/par_13').
:- pred must_coordinate_within_board/2, gloss('competent authorities must coordinate within the Board'), source('celex:32024R1689/oj#art_57/par_14').
:- pred must_inform_of_establishment/2, gloss('competent authority must inform AI Office and Board of sandbox establishment'), source('celex:32024R1689/oj#art_57/par_15').
:- pred must_maintain_sandbox_list/1, gloss('AI Office must maintain public list of sandboxes'), source('celex:32024R1689/oj#art_57/par_15').
:- pred must_submit_annual_reports/2, gloss('competent authority must submit annual reports'), source('celex:32024R1689/oj#art_57/par_16').
:- pred must_make_reports_public/2, gloss('competent authority must make annual reports public'), source('celex:32024R1689/oj#art_57/par_16').
:- pred must_develop_single_interface/1, gloss('Commission must develop single interface for sandboxes'), source('celex:32024R1689/oj#art_57/par_17').

must_establish_sandbox(MemberState, sandbox(national)) :-
    member_state(MemberState).

sandbox_operational_by(sandbox(national), date(2026, 8, 2)).

may_establish_joint_sandbox(MemberState, sandbox(joint(OtherStates))) :-
    member_state(MemberState),
    member_states(OtherStates).

may_fulfil_obligation_by_participation(MemberState, existing_sandbox(S)) :-
    member_state(MemberState),
    ai_regulatory_sandbox(S),
    participation_provides_equivalent_coverage(S, MemberState).

may_establish_additional_sandbox(MemberState, sandbox(regional)) :-
    member_state(MemberState).
may_establish_additional_sandbox(MemberState, sandbox(local)) :-
    member_state(MemberState).
may_establish_additional_sandbox(MemberState, sandbox(joint(OtherStates))) :-
    member_state(MemberState),
    member_states(OtherStates).

may_establish_edps_sandbox(sandbox(edps)) :-
    edps(edps).

must_allocate_resources(MemberState, sandbox_authorities) :-
    member_state(MemberState).

must_cooperate_with_authorities(Authority, other_relevant_authorities) :-
    national_competent_authority(Authority).

must_ensure_cooperation_between_sandboxes(MemberState, sandbox_authorities) :-
    member_state(MemberState).

sandbox_provides_controlled_environment(S) :-
    ai_regulatory_sandbox(S).

sandbox_may_include_real_world_testing(S) :-
    ai_regulatory_sandbox(S).

must_provide_guidance(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).

must_provide_regulatory_guidance(Authority, participants(Provider)) :-
    national_competent_authority(Authority),
    provider(Provider).

must_provide_written_proof(Authority, Provider, activities(S)) :-
    national_competent_authority(Authority),
    provider(Provider),
    ai_regulatory_sandbox(S).

must_provide_exit_report(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).

may_use_documentation_for_compliance(Provider, documentation(exit_report, written_proof)) :-
    provider(Provider).

must_take_documentation_positively(Authority, documentation(exit_report, written_proof)) :-
    market_surveillance_authority(Authority).
must_take_documentation_positively(Body, documentation(exit_report, written_proof)) :-
    notified_body(Body).

authorised_to_access_exit_reports(commission_and_board, exit_reports) :-
    true.

may_make_exit_report_public(exit_report) :-
    true.

sandbox_objective(improving_legal_certainty).
sandbox_objective(sharing_best_practices).
sandbox_objective(fostering_innovation).
sandbox_objective(evidence_based_regulatory_learning).
sandbox_objective(facilitating_market_access).

must_associate_data_protection_authorities(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).

sandbox_not_affect_supervisory_powers(S) :-
    ai_regulatory_sandbox(S).

must_mitigate_significant_risks(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).

may_suspend_testing(Authority, testing_process) :-
    national_competent_authority(Authority).
may_suspend_testing(Authority, participation_in_sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).

must_inform_ai_office_of_suspension(Authority, decision(suspension)) :-
    national_competent_authority(Authority).

remain_liable(Provider, damage_to_third_parties) :-
    provider(Provider).

exempt_from_administrative_fines(Provider, regulation(celex:32024R1689)) :-
    provider(Provider),
    observed_sandbox_plan(Provider),
    followed_guidance_in_good_faith(Provider).

must_facilitate_cross_border_cooperation(S) :-
    ai_regulatory_sandbox(S).

must_coordinate_within_board(Authority, board) :-
    national_competent_authority(Authority).

must_inform_of_establishment(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).

must_maintain_sandbox_list(ai_office) :-
    true.

must_submit_annual_reports(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).

must_make_reports_public(Authority, annual_reports) :-
    national_competent_authority(Authority).

must_develop_single_interface(commission) :-
    true.

% Provenance
provenance(must_establish_sandbox/2, 'celex:32024R1689/oj#art_57/par_1').
provenance(sandbox_operational_by/2, 'celex:32024R1689/oj#art_57/par_1').
provenance(may_establish_joint_sandbox/2, 'celex:32024R1689/oj#art_57/par_1').
provenance(may_fulfil_obligation_by_participation/2, 'celex:32024R1689/oj#art_57/par_1/unp_2').
provenance(may_establish_additional_sandbox/2, 'celex:32024R1689/oj#art_57/par_2').
provenance(may_establish_edps_sandbox/1, 'celex:32024R1689/oj#art_57/par_3').
provenance(must_allocate_resources/2, 'celex:32024R1689/oj#art_57/par_4').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_57/par_4').
provenance(must_ensure_cooperation_between_sandboxes/2, 'celex:32024R1689/oj#art_57/par_4').
provenance(sandbox_provides_controlled_environment/1, 'celex:32024R1689/oj#art_57/par_5').
provenance(sandbox_may_include_real_world_testing/1, 'celex:32024R1689/oj#art_57/par_5').
provenance(must_provide_guidance/2, 'celex:32024R1689/oj#art_57/par_6').
provenance(must_provide_regulatory_guidance/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(must_provide_written_proof/3, 'celex:32024R1689/oj#art_57/par_7').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(may_use_documentation_for_compliance/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(must_take_documentation_positively/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(authorised_to_access_exit_reports/2, 'celex:32024R1689/oj#art_57/par_8').
provenance(may_make_exit_report_public/1, 'celex:32024R1689/oj#art_57/par_8').
provenance(sandbox_objective/1, 'celex:32024R1689/oj#art_57/par_9').
provenance(must_associate_data_protection_authorities/2, 'celex:32024R1689/oj#art_57/par_10').
provenance(sandbox_not_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57/par_11').
provenance(must_mitigate_significant_risks/2, 'celex:32024R1689/oj#art_57/par_11').
provenance(may_suspend_testing/2, 'celex:32024R1689/oj#art_57/par_11').
provenance(must_inform_ai_office_of_suspension/2, 'celex:32024R1689/oj#art_57/par_11').
provenance(remain_liable/2, 'celex:32024R1689/oj#art_57/par_12').
provenance(exempt_from_administrative_fines/2, 'celex:32024R1689/oj#art_57/par_12').
provenance(must_facilitate_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57/par_13').
provenance(must_coordinate_within_board/2, 'celex:32024R1689/oj#art_57/par_14').
provenance(must_inform_of_establishment/2, 'celex:32024R1689/oj#art_57/par_15').
provenance(must_maintain_sandbox_list/1, 'celex:32024R1689/oj#art_57/par_15').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_57/par_16').
provenance(must_make_reports_public/2, 'celex:32024R1689/oj#art_57/par_16').
provenance(must_develop_single_interface/1, 'celex:32024R1689/oj#art_57/par_17').

% References
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').
