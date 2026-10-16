% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : e9316c63cdcb72617937d78cff18de6a99f665dd870e0438132873c8591861f9
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred must_adopt_implementing_acts/2, gloss('Commission must adopt implementing acts specifying detailed arrangements for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred implementing_acts_include_common_principles/1, gloss('implementing acts include common principles on specified issues'), source('celex:32024R1689/oj#art_58').
:- pred common_principles_on_eligibility_selection/1, gloss('common principles on eligibility and selection criteria for participation'), source('celex:32024R1689/oj#art_58').
:- pred common_principles_on_procedures/1, gloss('common principles on procedures for application, participation, monitoring, exiting and termination including sandbox plan and exit report'), source('celex:32024R1689/oj#art_58').
:- pred common_principles_on_terms_conditions/1, gloss('common principles on terms and conditions applicable to participants'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_open_to_applying_provider/1, gloss('AI regulatory sandbox open to any applying provider or prospective provider fulfilling eligibility and selection criteria'), source('celex:32024R1689/oj#art_58').
:- pred eligibility_selection_criteria_transparent_fair/1, gloss('eligibility and selection criteria are transparent and fair'), source('celex:32024R1689/oj#art_58').
:- pred inform_applicant_within_three_months/2, gloss('national competent authority informs applicant of decision within three months of application'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_allows_broad_equal_access/1, gloss('AI regulatory sandbox allows broad and equal access and keeps up with demand for participation'), source('celex:32024R1689/oj#art_58').
:- pred application_in_partnership/1, gloss('providers and prospective providers may submit applications in partnerships with deployers and other relevant third parties'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_supports_flexibility/1, gloss('detailed arrangements support flexibility for national competent authorities to establish and operate sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_access_free_for_sme/1, gloss('access to AI regulatory sandbox is free of charge for SMEs including start-ups'), source('celex:32024R1689/oj#art_58').
:- pred exceptional_costs_recoverable/1, gloss('national competent authorities may recover exceptional costs in a fair and proportionate manner'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_facilitates_conformity_assessment_compliance/1, gloss('AI regulatory sandbox facilitates providers in complying with conformity assessment obligations and voluntary application of codes of conduct'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_facilitates_ecosystem_involvement/1, gloss('AI regulatory sandbox facilitates involvement of other relevant actors within the AI ecosystem'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_procedures_simple_intelligible/1, gloss('procedures, processes and administrative requirements are simple, easily intelligible and clearly communicated'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_participation_streamlined_across_union/1, gloss('participation in sandbox is streamlined across the Union to avoid fragmentation'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_mutually_recognised_across_union/1, gloss('participation in sandbox established by Member State or EDPS is mutually and uniformly recognised with same legal effects across Union'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_participation_limited_period/1, gloss('participation in AI regulatory sandbox is limited to a period appropriate to complexity and scale of project'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_period_extendable/1, gloss('participation period may be extended by national competent authority'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_facilitates_tool_development/1, gloss('AI regulatory sandbox facilitates development of tools and infrastructure for testing, benchmarking, assessing and explaining dimensions of AI systems'), source('celex:32024R1689/oj#art_58').
:- pred must_direct_prospective_providers_to_pre_deployment_services/2, gloss('prospective providers in sandbox, in particular SMEs and start-ups, shall be directed to pre-deployment services'), source('celex:32024R1689/oj#art_58').
:- pred must_agree_terms_for_real_world_testing/2, gloss('national competent authorities specifically agree terms and conditions of real-world testing with participants'), source('celex:32024R1689/oj#art_58').
:- pred must_agree_appropriate_safeguards/2, gloss('national competent authorities agree appropriate safeguards with participants to protect fundamental rights, health and safety'), source('celex:32024R1689/oj#art_58').
:- pred must_cooperate_for_consistent_practices/2, gloss('national competent authorities cooperate with other national competent authorities to ensure consistent practices across Union'), source('celex:32024R1689/oj#art_58').

must_adopt_implementing_acts(commission, detailed_arrangements_for_ai_regulatory_sandboxes).

implementing_acts_include_common_principles(act) :-
    common_principles_on_eligibility_selection(act),
    common_principles_on_procedures(act),
    common_principles_on_terms_conditions(act).

common_principles_on_eligibility_selection(act) :-
    implementing_acts_include_common_principles(act).

common_principles_on_procedures(act) :-
    implementing_acts_include_common_principles(act).

common_principles_on_terms_conditions(act) :-
    implementing_acts_include_common_principles(act).

sandbox_open_to_applying_provider(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    eligibility_selection_criteria_transparent_fair(Sandbox).

eligibility_selection_criteria_transparent_fair(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

inform_applicant_within_three_months(Authority, Applicant) :-
    national_competent_authority(Authority),
    within(months(3), decision(Authority, Applicant)).

sandbox_allows_broad_equal_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

application_in_partnership(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_supports_flexibility(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_access_free_for_sme(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

exceptional_costs_recoverable(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_facilitates_conformity_assessment_compliance(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_facilitates_ecosystem_involvement(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_procedures_simple_intelligible(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_participation_streamlined_across_union(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_mutually_recognised_across_union(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_participation_limited_period(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_period_extendable(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

sandbox_facilitates_tool_development(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

must_direct_prospective_providers_to_pre_deployment_services(Authority, ProspectiveProvider) :-
    national_competent_authority(Authority),
    prospective_provider_in_sandbox(ProspectiveProvider).

prospective_provider_in_sandbox(P) :-
    ai_regulatory_sandbox(Sandbox),
    participant_in_sandbox(P, Sandbox).

participant_in_sandbox(P, Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    provider(P).

must_agree_terms_for_real_world_testing(Authority, Participant) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Sandbox),
    ai_regulatory_sandbox(Sandbox),
    participant_in_sandbox(Participant, Sandbox).

must_agree_appropriate_safeguards(Authority, Participant) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Sandbox),
    ai_regulatory_sandbox(Sandbox),
    participant_in_sandbox(Participant, Sandbox).

must_cooperate_for_consistent_practices(Authority, OtherAuthority) :-
    national_competent_authority(Authority),
    national_competent_authority(OtherAuthority),
    Authority \= OtherAuthority.

provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(implementing_acts_include_common_principles/1, 'celex:32024R1689/oj#art_58').
provenance(common_principles_on_eligibility_selection/1, 'celex:32024R1689/oj#art_58').
provenance(common_principles_on_procedures/1, 'celex:32024R1689/oj#art_58').
provenance(common_principles_on_terms_conditions/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_open_to_applying_provider/1, 'celex:32024R1689/oj#art_58').
provenance(eligibility_selection_criteria_transparent_fair/1, 'celex:32024R1689/oj#art_58').
provenance(inform_applicant_within_three_months/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_allows_broad_equal_access/1, 'celex:32024R1689/oj#art_58').
provenance(application_in_partnership/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_supports_flexibility/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_access_free_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(exceptional_costs_recoverable/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_facilitates_conformity_assessment_compliance/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_facilitates_ecosystem_involvement/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_procedures_simple_intelligible/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_participation_streamlined_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_mutually_recognised_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_participation_limited_period/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_period_extendable/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_facilitates_tool_development/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_prospective_providers_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_terms_for_real_world_testing/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_appropriate_safeguards/2, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_for_consistent_practices/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').
