% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d10804185ca1a529db4a6034c83c65bb84a1947d7f846234ff19f4434cfeaf70
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred must_adopt_implementing_acts/2, gloss('Commission shall adopt implementing acts specifying detailed arrangements for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_open_to/2, gloss('AI regulatory sandbox is open to an applicant'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_access_free_for/2, gloss('access to AI regulatory sandbox is free of charge for an entity'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_participation_limited_period/1, gloss('participation in AI regulatory sandbox is limited to an appropriate period'), source('celex:32024R1689/oj#art_58').
:- pred must_direct_to_pre_deployment_services/2, gloss('prospective providers shall be directed to pre-deployment services'), source('celex:32024R1689/oj#art_58').
:- pred must_agree_terms_for_testing/2, gloss('national competent authorities shall agree terms and conditions for testing in real world conditions within sandbox'), source('celex:32024R1689/oj#art_58').

must_adopt_implementing_acts(Commission, ai_regulatory_sandbox) :-
    ai_office(Commission).

sandbox_open_to(Sandbox, Applicant) :-
    ai_regulatory_sandbox(Sandbox),
    ( provider(Applicant) ; prospective_provider(Applicant) ),
    fulfils_eligibility_and_selection_criteria(Applicant, Sandbox).

sandbox_access_free_for(Sandbox, Entity) :-
    ai_regulatory_sandbox(Sandbox),
    sme(Entity),
    \+ exceptional_costs_recovered(Entity, Sandbox).

sandbox_participation_limited_period(Participation) :-
    period_appropriate_to_project(Participation).

must_direct_to_pre_deployment_services(Authority, ProspectiveProvider) :-
    national_competent_authority(Authority),
    prospective_provider(ProspectiveProvider),
    sme_or_startup(ProspectiveProvider).

must_agree_terms_for_testing(Authority, Participant) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within_sandbox(Testing, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    must_agree_terms(Authority, terms(Testing, Participant)).

% Supporting predicates
:- pred prospective_provider/1, gloss('entity that intends to become a provider of an AI system'), source('celex:32024R1689/oj#art_58').
:- pred fulfils_eligibility_and_selection_criteria/2, gloss('applicant fulfils eligibility and selection criteria for sandbox'), source('celex:32024R1689/oj#art_58').
:- pred sme/1, gloss('small or medium-sized enterprise, including start-ups'), source('celex:32024R1689/oj#art_58').
:- pred exceptional_costs_recovered/2, gloss('exceptional costs recovered by national competent authority'), source('celex:32024R1689/oj#art_58').
:- pred period_appropriate_to_project/1, gloss('period appropriate to complexity and scale of the project'), source('celex:32024R1689/oj#art_58').
:- pred sme_or_startup/1, gloss('SME or start-up'), source('celex:32024R1689/oj#art_58').
:- pred supervised_within_sandbox/2, gloss('testing supervised within the framework of an AI regulatory sandbox'), source('celex:32024R1689/oj#art_58').
:- pred must_agree_terms/2, gloss('authority shall agree terms and conditions with participants'), source('celex:32024R1689/oj#art_58').

provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_open_to/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_access_free_for/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_participation_limited_period/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_terms_for_testing/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
