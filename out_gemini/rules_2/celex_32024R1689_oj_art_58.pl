% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 17cf2eb804527cb3e3ada3fa76c6c35863f691a63d10b7d3c5aa5cd01759cbff
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred must_adopt_implementing_acts/2, gloss('actor must adopt implementing acts on a matter'), source('celex:32024R1689/oj#art_58').
:- pred must_inform/2, gloss('actor must inform recipient of a decision or matter'), source('celex:32024R1689/oj#art_58').
:- pred permitted_submit_application/2, gloss('actor is permitted to submit an application for a procedure'), source('celex:32024R1689/oj#art_58').
:- pred prospective_provider/1, gloss('entity intending to become a provider of an AI system'), source('celex:32024R1689/oj#art_58').
:- pred small_or_medium_enterprise/1, gloss('small or medium-sized enterprise including start-ups'), source('celex:32024R1689/oj#art_58').
:- pred exempt_fees/2, gloss('entity is exempt from fees for participation or access'), source('celex:32024R1689/oj#art_58').
:- pred must_direct/2, gloss('actor must direct prospective provider to services'), source('celex:32024R1689/oj#art_58').
:- pred must_agree/2, gloss('actor must agree terms, conditions and safeguards with participants'), source('celex:32024R1689/oj#art_58').
:- pred must_cooperate/2, gloss('actor must cooperate with another actor for consistency'), source('celex:32024R1689/oj#art_58').

% Paragraph 1: The Commission shall adopt implementing acts specifying detailed arrangements for AI regulatory sandboxes
must_adopt_implementing_acts(C, detailed_arrangements(ai_regulatory_sandbox)) :-
    commission(C).

% Paragraph 2(a): National competent authorities inform applicants within three months
must_inform(Auth, decision(application(ai_regulatory_sandbox), within(months(3)))) :-
    national_competent_authority(Auth).

% Paragraph 2(b): Providers and prospective providers may submit applications in partnerships
permitted_submit_application(P, partnership(ai_regulatory_sandbox, deployers_or_third_parties)) :-
    provider(P).
permitted_submit_application(P, partnership(ai_regulatory_sandbox, deployers_or_third_parties)) :-
    prospective_provider(P).

% Paragraph 2(d): Access is free of charge for SMEs including start-ups
exempt_fees(E, access(ai_regulatory_sandbox)) :-
    small_or_medium_enterprise(E).

% Paragraph 3: Prospective providers directed to pre-deployment and value-adding services
must_direct(Auth, prospective_provider_services(P)) :-
    national_competent_authority(Auth),
    prospective_provider(P).

% Paragraph 4: Where NCAs consider authorising testing in real-world conditions within a sandbox,
% they shall specifically agree terms and safeguards, and cooperate where appropriate.
must_agree(Auth, terms_and_safeguards(testing_in_real_world_conditions, participants)) :-
    national_competent_authority(Auth).

must_cooperate(Auth, other_national_competent_authorities) :-
    national_competent_authority(Auth).

provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(must_inform/2, 'celex:32024R1689/oj#art_58').
provenance(permitted_submit_application/2, 'celex:32024R1689/oj#art_58').
provenance(exempt_fees/2, 'celex:32024R1689/oj#art_58').
provenance(must_direct/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree/2, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').
