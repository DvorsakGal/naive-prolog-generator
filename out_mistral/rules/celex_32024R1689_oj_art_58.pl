% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 50b409184530509c0c3d5277d328d3882fb3eedc87775a16ace7da9cb948a773
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred must_adopt_implementing_acts/1, gloss('Commission must adopt implementing acts for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred implementing_acts_specify/1, gloss('implementing acts specify detailed arrangements for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred common_principle/2, gloss('common principle on a specified issue'), source('celex:32024R1689/oj#art_58').
:- pred eligibility_and_selection_criteria/1, gloss('eligibility and selection criteria for participation'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_procedures/1, gloss('procedures for application, participation, monitoring, exiting and termination'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_terms_and_conditions/1, gloss('terms and conditions applicable to participants'), source('celex:32024R1689/oj#art_58').
:- pred adopted_by_examination_procedure/1, gloss('act adopted in accordance with examination procedure'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_open_to_applicant/1, gloss('sandbox open to applying provider or prospective provider fulfilling criteria'), source('celex:32024R1689/oj#art_58').
:- pred transparent_and_fair_criteria/1, gloss('eligibility and selection criteria are transparent and fair'), source('celex:32024R1689/oj#art_58').
:- pred decision_within_period/2, gloss('national competent authority informs applicant of decision within period'), source('celex:32024R1689/oj#art_58').
:- pred broad_and_equal_access/1, gloss('sandbox allows broad and equal access and keeps up with demand'), source('celex:32024R1689/oj#art_58').
:- pred partnership_application/1, gloss('application may be submitted in partnership with deployers and third parties'), source('celex:32024R1689/oj#art_58').
:- pred flexibility_for_national_authorities/1, gloss('arrangements support flexibility for national competent authorities'), source('celex:32024R1689/oj#art_58').
:- pred free_access_for_sme/1, gloss('access to sandbox is free of charge for SMEs including start-ups'), source('celex:32024R1689/oj#art_58').
:- pred exceptional_costs_recoverable/1, gloss('national competent authorities may recover exceptional costs in fair and proportionate manner'), source('celex:32024R1689/oj#art_58').
:- pred facilitate_conformity_assessment/1, gloss('sandbox facilitates compliance with conformity assessment obligations'), source('celex:32024R1689/oj#art_58').
:- pred facilitate_voluntary_codes_of_conduct/1, gloss('sandbox facilitates voluntary application of codes of conduct'), source('celex:32024R1689/oj#art_58').
:- pred facilitate_ecosystem_involvement/1, gloss('sandbox facilitates involvement of other relevant actors in AI ecosystem'), source('celex:32024R1689/oj#art_58').
:- pred simple_procedures_for_sme/1, gloss('procedures and requirements are simple, intelligible and clearly communicated for SMEs'), source('celex:32024R1689/oj#art_58').
:- pred streamlined_across_union/1, gloss('procedures streamlined across Union to avoid fragmentation'), source('celex:32024R1689/oj#art_58').
:- pred mutual_recognition_across_union/1, gloss('participation in sandbox is mutually and uniformly recognised across Union'), source('celex:32024R1689/oj#art_58').
:- pred participation_period_appropriate/1, gloss('participation limited to period appropriate to complexity and scale of project'), source('celex:32024R1689/oj#art_58').
:- pred participation_period_extendable/1, gloss('participation period may be extended by national competent authority'), source('celex:32024R1689/oj#art_58').
:- pred facilitate_development_of_tools/1, gloss('sandbox facilitates development of tools and infrastructure for testing, benchmarking, assessing and explaining'), source('celex:32024R1689/oj#art_58').
:- pred must_direct_prospective_providers/2, gloss('prospective providers directed to pre-deployment services'), source('celex:32024R1689/oj#art_58').
:- pred pre_deployment_service/1, gloss('pre-deployment service such as guidance, standardisation help, certification, testing facilities, EDIHs, centres of excellence'), source('celex:32024R1689/oj#art_58').
:- pred must_agree_real_world_testing_terms/2, gloss('national competent authority must agree terms and conditions of real-world testing with participants'), source('celex:32024R1689/oj#art_58').
:- pred appropriate_safeguards/1, gloss('appropriate safeguards to protect fundamental rights, health and safety'), source('celex:32024R1689/oj#art_58').
:- pred must_cooperate_for_consistent_practices/1, gloss('national competent authorities cooperate to ensure consistent practices across Union'), source('celex:32024R1689/oj#art_58').

must_adopt_implementing_acts(ai_office) :-
    ai_office(ai_office).

implementing_acts_specify(acts(ai_regulatory_sandbox)) :-
    must_adopt_implementing_acts(ai_office).

common_principle(acts(ai_regulatory_sandbox), eligibility_and_selection_criteria(participation)) :-
    implementing_acts_specify(acts(ai_regulatory_sandbox)).

common_principle(acts(ai_regulatory_sandbox), sandbox_procedures(application_participation_monitoring_exiting_termination)) :-
    implementing_acts_specify(acts(ai_regulatory_sandbox)).

common_principle(acts(ai_regulatory_sandbox), sandbox_terms_and_conditions(participants)) :-
    implementing_acts_specify(acts(ai_regulatory_sandbox)).

adopted_by_examination_procedure(acts(ai_regulatory_sandbox)).

sandbox_open_to_applicant(S) :-
    ai_regulatory_sandbox(S),
    provider(P),
    applies_for_participation(P, S).

sandbox_open_to_applicant(S) :-
    ai_regulatory_sandbox(S),
    prospective_provider(P),
    applies_for_participation(P, S).

transparent_and_fair_criteria(S) :-
    ai_regulatory_sandbox(S),
    eligibility_and_selection_criteria(C),
    transparent(C),
    fair(C).

decision_within_period(A, months(3)) :-
    national_competent_authority(A),
    informs_applicant_of_decision(A, _Applicant, _Decision).

broad_and_equal_access(S) :-
    ai_regulatory_sandbox(S).

partnership_application(S) :-
    ai_regulatory_sandbox(S),
    provider(P),
    deployer(D),
    applies_in_partnership(P, D, S).

flexibility_for_national_authorities(S) :-
    ai_regulatory_sandbox(S),
    national_competent_authority(A),
    operates_sandbox(A, S).

free_access_for_sme(S) :-
    ai_regulatory_sandbox(S),
    sme(P),
    participates(P, S).

exceptional_costs_recoverable(S) :-
    ai_regulatory_sandbox(S),
    national_competent_authority(A),
    recovers_exceptional_costs(A, S, fair_and_proportionate).

facilitate_conformity_assessment(S) :-
    ai_regulatory_sandbox(S),
    provider(P),
    participates(P, S),
    conformity_assessment(O),
    learns_from_sandbox(P, S, O).

facilitate_voluntary_codes_of_conduct(S) :-
    ai_regulatory_sandbox(S),
    provider(P),
    participates(P, S),
    learns_from_sandbox(P, S, voluntary_application(codes_of_conduct)).

facilitate_ecosystem_involvement(S) :-
    ai_regulatory_sandbox(S),
    actor(A),
    relevant_ai_ecosystem_actor(A),
    involves_in_sandbox(A, S).

simple_procedures_for_sme(S) :-
    ai_regulatory_sandbox(S),
    sme(P),
    participates(P, S),
    simple_procedure(P, S),
    easily_intelligible(P, S),
    clearly_communicated(P, S).

streamlined_across_union(S) :-
    ai_regulatory_sandbox(S),
    streamlined_procedure(S).

mutual_recognition_across_union(S) :-
    ai_regulatory_sandbox(S),
    member_state(M1),
    member_state(M2),
    participates_in_sandbox(P, S, M1),
    recognised_in(P, S, M2).

participation_period_appropriate(S) :-
    ai_regulatory_sandbox(S),
    participant(P),
    participates(P, S),
    period(P, S, appropriate_to(complexity_and_scale(project(P)))).

participation_period_extendable(S) :-
    ai_regulatory_sandbox(S),
    national_competent_authority(A),
    extends_period(A, S, _Participant).

facilitate_development_of_tools(S) :-
    ai_regulatory_sandbox(S),
    develops_tools(S, testing_benchmarking_assessing_explaining).

must_direct_prospective_providers(A, pre_deployment_service(S)) :-
    national_competent_authority(A),
    prospective_provider(P),
    in_sandbox(P, S),
    sme(P),
    directs_to(A, P, pre_deployment_service(S)).

must_direct_prospective_providers(A, pre_deployment_service(S)) :-
    national_competent_authority(A),
    prospective_provider(P),
    in_sandbox(P, S),
    start_up(P),
    directs_to(A, P, pre_deployment_service(S)).

must_agree_real_world_testing_terms(A, terms_and_conditions(testing_in_real_world_conditions, safeguards)) :-
    national_competent_authority(A),
    ai_regulatory_sandbox(S),
    authorises_testing_in_real_world_conditions(A, S),
    participant(P),
    participates(P, S),
    agrees_terms(A, P, testing_in_real_world_conditions),
    agrees_safeguards(A, P, appropriate_safeguards).

appropriate_safeguards(protect(fundamental_rights, health, safety)).

must_cooperate_for_consistent_practices(A) :-
    national_competent_authority(A),
    authorises_testing_in_real_world_conditions(A, _S),
    cooperates_with_other_authorities(A).

% Helper predicates
prospective_provider(P) :-
    provider(P).

sme(P) :-
    provider(P).

start_up(P) :-
    provider(P).

applies_for_participation(P, S) :-
    provider(P),
    ai_regulatory_sandbox(S).

applies_in_partnership(P, D, S) :-
    provider(P),
    deployer(D),
    ai_regulatory_sandbox(S).

transparent(C) :-
    eligibility_and_selection_criteria(C).

fair(C) :-
    eligibility_and_selection_criteria(C).

informs_applicant_of_decision(A, Applicant, Decision) :-
    national_competent_authority(A),
    applicant(Applicant),
    decision(Decision).

operates_sandbox(A, S) :-
    national_competent_authority(A),
    ai_regulatory_sandbox(S).

recovers_exceptional_costs(A, S, fair_and_proportionate) :-
    national_competent_authority(A),
    ai_regulatory_sandbox(S).

learns_from_sandbox(P, S, O) :-
    provider(P),
    ai_regulatory_sandbox(S),
    learning_outcome(O).

actor(A) :-
    notified_body(A).
actor(A) :-
    standardisation_organisation(A).
actor(A) :-
    sme(A).
actor(A) :-
    start_up(A).
actor(A) :-
    enterprise(A).
actor(A) :-
    innovator(A).
actor(A) :-
    testing_and_experimentation_facility(A).
actor(A) :-
    research_and_experimentation_lab(A).
actor(A) :-
    european_digital_innovation_hub(A).
actor(A) :-
    centre_of_excellence(A).
actor(A) :-
    individual_researcher(A).

relevant_ai_ecosystem_actor(A) :-
    actor(A).

involves_in_sandbox(A, S) :-
    actor(A),
    ai_regulatory_sandbox(S).

simple_procedure(P, S) :-
    sme(P),
    ai_regulatory_sandbox(S).

easily_intelligible(P, S) :-
    sme(P),
    ai_regulatory_sandbox(S).

clearly_communicated(P, S) :-
    sme(P),
    ai_regulatory_sandbox(S).

streamlined_procedure(S) :-
    ai_regulatory_sandbox(S).

member_state(M) :-
    eu_member_state(M).

participates_in_sandbox(P, S, M) :-
    participant(P),
    ai_regulatory_sandbox(S),
    established_in(S, M).

recognised_in(P, S, M) :-
    participant(P),
    ai_regulatory_sandbox(S),
    member_state(M).

participant(P) :-
    provider(P).
participant(P) :-
    prospective_provider(P).

period(P, S, appropriate_to(complexity_and_scale(project(P)))) :-
    participant(P),
    ai_regulatory_sandbox(S).

extends_period(A, S, P) :-
    national_competent_authority(A),
    participant(P),
    ai_regulatory_sandbox(S).

develops_tools(S, testing_benchmarking_assessing_explaining) :-
    ai_regulatory_sandbox(S).

in_sandbox(P, S) :-
    prospective_provider(P),
    ai_regulatory_sandbox(S),
    participates(P, S).

directs_to(A, P, pre_deployment_service(S)) :-
    national_competent_authority(A),
    prospective_provider(P),
    ai_regulatory_sandbox(S).

authorises_testing_in_real_world_conditions(A, S) :-
    national_competent_authority(A),
    ai_regulatory_sandbox(S),
    testing_in_real_world_conditions(T),
    supervised_within_framework(T, S).

agrees_terms(A, P, testing_in_real_world_conditions) :-
    national_competent_authority(A),
    participant(P).

agrees_safeguards(A, P, appropriate_safeguards) :-
    national_competent_authority(A),
    participant(P).

cooperates_with_other_authorities(A) :-
    national_competent_authority(A).

applicant(P) :-
    provider(P).
applicant(P) :-
    prospective_provider(P).

decision(D) :-
    accepted(D).
decision(D) :-
    rejected(D).

accepted(D) :- decision(D).
rejected(D) :- decision(D).

pre_deployment_service(guidance_on_implementation).
pre_deployment_service(help_with_standardisation_documents).
pre_deployment_service(certification).
pre_deployment_service(testing_and_experimentation_facilities).
pre_deployment_service(european_digital_innovation_hubs).
pre_deployment_service(centres_of_excellence).

notified_body(B) :-
    conformity_assessment_body(B),
    notified(B).

standardisation_organisation(O).
enterprise(E).
innovator(I).
testing_and_experimentation_facility(F).
research_and_experimentation_lab(L).
european_digital_innovation_hub(H).
centre_of_excellence(C).
individual_researcher(R).

eu_member_state(M).

established_in(S, M) :-
    ai_regulatory_sandbox(S),
    eu_member_state(M).

learning_outcome(conformity_assessment(O)) :-
    conformity_assessment(O).
learning_outcome(voluntary_application(codes_of_conduct)).

supervised_within_framework(T, S) :-
    testing_in_real_world_conditions(T),
    ai_regulatory_sandbox(S).

% Provenance
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_58').
provenance(implementing_acts_specify/1, 'celex:32024R1689/oj#art_58').
provenance(common_principle/2, 'celex:32024R1689/oj#art_58').
provenance(eligibility_and_selection_criteria/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_procedures/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_terms_and_conditions/1, 'celex:32024R1689/oj#art_58').
provenance(adopted_by_examination_procedure/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_open_to_applicant/1, 'celex:32024R1689/oj#art_58').
provenance(transparent_and_fair_criteria/1, 'celex:32024R1689/oj#art_58').
provenance(decision_within_period/2, 'celex:32024R1689/oj#art_58').
provenance(broad_and_equal_access/1, 'celex:32024R1689/oj#art_58').
provenance(partnership_application/1, 'celex:32024R1689/oj#art_58').
provenance(flexibility_for_national_authorities/1, 'celex:32024R1689/oj#art_58').
provenance(free_access_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(exceptional_costs_recoverable/1, 'celex:32024R1689/oj#art_58').
provenance(facilitate_conformity_assessment/1, 'celex:32024R1689/oj#art_58').
provenance(facilitate_voluntary_codes_of_conduct/1, 'celex:32024R1689/oj#art_58').
provenance(facilitate_ecosystem_involvement/1, 'celex:32024R1689/oj#art_58').
provenance(simple_procedures_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(streamlined_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(mutual_recognition_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(participation_period_appropriate/1, 'celex:32024R1689/oj#art_58').
provenance(participation_period_extendable/1, 'celex:32024R1689/oj#art_58').
provenance(facilitate_development_of_tools/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_prospective_providers/2, 'celex:32024R1689/oj#art_58').
provenance(pre_deployment_service/1, 'celex:32024R1689/oj#art_58').
provenance(must_agree_real_world_testing_terms/2, 'celex:32024R1689/oj#art_58').
provenance(appropriate_safeguards/1, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_for_consistent_practices/1, 'celex:32024R1689/oj#art_58').

% References
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').
