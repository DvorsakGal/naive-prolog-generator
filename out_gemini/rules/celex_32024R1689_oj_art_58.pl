% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 96c0d769f52c262c6093d62a4bfc926d3dd793c46411b312153bb3684251d153
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_58').
:- pred prospective_provider/1, gloss('entity intending to become a provider of an AI system'), source('celex:32024R1689/oj#art_58').
:- pred small_or_medium_enterprise/1, gloss('micro, small or medium-sized enterprise, including start-up'), source('celex:32024R1689/oj#art_58').
:- pred must_adopt(Actor, Object), gloss('actor is required to adopt an act or measure'), source('celex:32024R1689/oj#art_58').
:- pred must_inform(Actor, Object), gloss('actor is required to inform another party of a decision or matter'), source('celex:32024R1689/oj#art_58').
:- pred must_direct(Actor, Object), gloss('actor is required to direct participants to support services'), source('celex:32024R1689/oj#art_58').
:- pred must_agree(Actor, Object), gloss('actor must agree terms, conditions or safeguards with participants'), source('celex:32024R1689/oj#art_58').
:- pred eligible_for_sandbox(Actor, Sandbox), gloss('actor satisfies eligibility and selection criteria for a sandbox'), source('celex:32024R1689/oj#art_58').
:- pred permitted_application(Actor, Sandbox), gloss('actor is permitted to submit an application to a sandbox'), source('celex:32024R1689/oj#art_58').
:- pred exempt_fees(Actor, Sandbox), gloss('actor is exempt from fees for participating in a sandbox'), source('celex:32024R1689/oj#art_58').
:- pred authorising_testing_in_real_world_conditions(Authority, Sandbox), gloss('competent authority considers authorising testing in real-world conditions within sandbox'), source('celex:32024R1689/oj#art_58').

% Article 58(1): Commission obligation to adopt implementing acts
must_adopt(Commission, implementing_act(ai_regulatory_sandboxes)) :-
    commission(Commission).

% Article 58(2)(a): National competent authority decision notification deadline
must_inform(Authority, decision(Application, within(months(3)))) :-
    national_competent_authority(Authority),
    Application = sandbox_application(_Applicant, _Sandbox).

% Article 58(2)(a) & (b): Access and eligibility for providers and prospective providers
permitted_application(Applicant, Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    provider(Applicant),
    eligible_for_sandbox(Applicant, Sandbox).

permitted_application(Applicant, Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    prospective_provider(Applicant),
    eligible_for_sandbox(Applicant, Sandbox).

permitted_application(partnership(LeadApplicant, Partner), Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    ( provider(LeadApplicant) ; prospective_provider(LeadApplicant) ),
    eligible_for_sandbox(LeadApplicant, Sandbox),
    ( deployer(Partner) ; operator(Partner) ).

% Article 58(2)(d): Free of charge access for SMEs including start-ups
exempt_fees(Applicant, Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    small_or_medium_enterprise(Applicant),
    permitted_application(Applicant, Sandbox).

% Article 58(3): Directing prospective providers to pre-deployment services
must_direct(Authority, prospective_provider_support(Applicant, pre_deployment_services)) :-
    national_competent_authority(Authority),
    prospective_provider(Applicant),
    permitted_application(Applicant, _Sandbox).

% Article 58(4): Agreeing terms, conditions and safeguards for real-world testing
must_agree(Authority, terms_and_safeguards(Testing, Participants)) :-
    national_competent_authority(Authority),
    authorising_testing_in_real_world_conditions(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    Testing = testing_in_real_world_conditions(Sandbox, Participants).

provenance(must_adopt/2, 'celex:32024R1689/oj#art_58').
provenance(must_inform/2, 'celex:32024R1689/oj#art_58').
provenance(permitted_application/2, 'celex:32024R1689/oj#art_58').
provenance(exempt_fees/2, 'celex:32024R1689/oj#art_58').
provenance(must_direct/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').
