% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 819835f24ff71f10eb0e460ab8b63c0124ac1f761a798419d504b8db225fbfa8
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred must_adopt_implementing_acts_for_sandbox/2, gloss('Commission obligation to adopt implementing acts for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_eligibility_criteria_applies/1, gloss('eligibility and selection criteria for participation in the AI regulatory sandbox'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_procedures_apply/1, gloss('procedures for application, participation, monitoring, exiting and termination of the AI regulatory sandbox'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_terms_and_conditions_apply/1, gloss('terms and conditions applicable to participants in the AI regulatory sandbox'), source('celex:32024R1689/oj#art_58').
:- pred must_inform_applicant_of_decision/3, gloss('national competent authority obligation to inform applicant of decision within time limit'), source('celex:32024R1689/oj#art_58').
:- pred free_of_charge_for_sme/1, gloss('access to AI regulatory sandbox is free of charge for SMEs'), source('celex:32024R1689/oj#art_58').
:- pred must_direct_to_pre_deployment_services/2, gloss('obligation to direct prospective providers to pre-deployment services'), source('celex:32024R1689/oj#art_58').
:- pred must_agree_testing_terms_and_safeguards/3, gloss('obligation to agree terms and safeguards for testing in real world conditions within sandbox'), source('celex:32024R1689/oj#art_58').
:- pred must_cooperate_with_other_authorities/2, gloss('obligation to cooperate with other national competent authorities for consistent practices'), source('celex:32024R1689/oj#art_58').

must_adopt_implementing_acts_for_sandbox(commission, ai_regulatory_sandbox) :-
    ai_regulatory_sandbox(S),
    sandbox_eligibility_criteria_applies(S),
    sandbox_procedures_apply(S),
    sandbox_terms_and_conditions_apply(S).

sandbox_procedures_apply(S) :-
    ai_regulatory_sandbox(S),
    sandbox_plan(S),
    exit_report(S).

must_inform_applicant_of_decision(Authority, Applicant, Decision) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(_S),
    within(months(3), application(Applicant)).

free_of_charge_for_sme(S) :-
    ai_regulatory_sandbox(S),
    sme(Participant),
    access(S, Participant).

must_direct_to_pre_deployment_services(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider),
    ai_regulatory_sandbox(_S),
    relevant(pre_deployment_services).

must_agree_testing_terms_and_safeguards(Authority, Participant, Testing) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Testing),
    ai_regulatory_sandbox(_S),
    participant(Participant),
    safeguards(fundamental_rights, health, safety).

must_cooperate_with_other_authorities(Authority, OtherAuthority) :-
    national_competent_authority(Authority),
    national_competent_authority(OtherAuthority),
    Authority \= OtherAuthority,
    consistent_practices_across_union.

provenance(must_adopt_implementing_acts_for_sandbox/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_eligibility_criteria_applies/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_procedures_apply/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_terms_and_conditions_apply/1, 'celex:32024R1689/oj#art_58').
provenance(must_inform_applicant_of_decision/3, 'celex:32024R1689/oj#art_58').
provenance(free_of_charge_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_testing_terms_and_safeguards/3, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_with_other_authorities/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
